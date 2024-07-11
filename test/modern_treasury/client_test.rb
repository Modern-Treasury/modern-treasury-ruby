# frozen_string_literal: true

require_relative "test_helper"

class ModernTreasuryTest < Test::Unit::TestCase
  def test_raises_on_missing_non_nullable_opts
    assert_raise_with_message(ArgumentError, /is required/) do
      ModernTreasury::Client.new
    end
  end

  class MockResponse
    attr_accessor :code, :header, :body, :content_type

    def initialize(code, data)
      self.code = code
      self.header = {}
      self.body = JSON.generate(data)
      self.content_type = "application/json"
    end
  end

  class MockRequester
    attr_accessor :response_code, :response_data, :attempts

    def initialize(response_code, response_data)
      self.response_code = response_code
      self.response_data = response_data
      self.attempts = []
    end

    def execute(req)
      attempts.push(req)
      MockResponse.new(response_code, response_data)
    end
  end

  def test_client_default_request_default_retry_attempts
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create({name: "name"})
    end
    assert_equal(3, requester.attempts.length)
  end

  def test_client_given_request_default_retry_attempts
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID",
      max_retries: 3
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create({name: "name"})
    end
    assert_equal(4, requester.attempts.length)
  end

  def test_client_default_request_given_retry_attempts
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create({name: "name"}, max_retries: 3)
    end
    assert_equal(4, requester.attempts.length)
  end

  def test_client_given_request_given_retry_attempts
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID",
      max_retries: 3
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create({name: "name"}, max_retries: 4)
    end
    assert_equal(5, requester.attempts.length)
  end

  def test_client_default_idempotency_key_on_writes
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create({name: "name"}, max_retries: 1)
    end
    idempotency_headers = requester.attempts.map { |a| a[:headers]["Idempotency-Key"] }
    assert_kind_of(String, idempotency_headers[0])
    assert_not_empty(idempotency_headers[0])
    assert_equal(idempotency_headers[0], idempotency_headers[1])
  end

  def test_request_option_idempotency_key_on_writes
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
    requester = MockRequester.new(500, {})
    modern_treasury.requester = requester
    assert_raise(ModernTreasury::HTTP::InternalServerError) do
      modern_treasury.counterparties.create(
        {name: "name"},
        max_retries: 1,
        idempotency_key: "user-supplied-key"
      )
    end
    requester.attempts.each { |a| assert_equal(a[:headers]["Idempotency-Key"], "user-supplied-key") }
  end

  def test_default_headers
    modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
    requester = MockRequester.new(200, {})
    modern_treasury.requester = requester
    modern_treasury.counterparties.create({name: "name"})
    headers = requester.attempts[0][:headers]
    assert_not_empty(headers["X-Stainless-Lang"])
    assert_not_empty(headers["X-Stainless-Package-Version"])
    assert_not_empty(headers["X-Stainless-Runtime"])
    assert_not_empty(headers["X-Stainless-Runtime-Version"])
  end
end
