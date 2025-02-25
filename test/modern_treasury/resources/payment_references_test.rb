# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentReferencesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.payment_references.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaymentReference
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::Models::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::Models::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_references.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::PaymentReference
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::Models::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::Models::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end

  def test_retireve
    response = @modern_treasury.payment_references.retireve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaymentReference
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::Models::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::Models::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end
end
