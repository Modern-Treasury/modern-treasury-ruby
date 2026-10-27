# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::EmbeddableFlowsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.embeddable_flows.create(
        options: {counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", payment_types: ["string"]},
        template: :legal_entity_onboarding
      )

    assert_pattern do
      response => ModernTreasury::EmbeddableFlow
    end

    assert_pattern do
      response => {
        id: String,
        client_token: String,
        created_at: Time,
        expires_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        options: ModernTreasury::EmbeddableFlow::Options,
        status: ModernTreasury::EmbeddableFlow::Status,
        template: ModernTreasury::EmbeddableFlow::Template,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.embeddable_flows.retrieve("id")

    assert_pattern do
      response => ModernTreasury::EmbeddableFlow
    end

    assert_pattern do
      response => {
        id: String,
        client_token: String,
        created_at: Time,
        expires_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        options: ModernTreasury::EmbeddableFlow::Options,
        status: ModernTreasury::EmbeddableFlow::Status,
        template: ModernTreasury::EmbeddableFlow::Template,
        updated_at: Time
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.embeddable_flows.update("id", status: :cancelled)

    assert_pattern do
      response => ModernTreasury::EmbeddableFlow
    end

    assert_pattern do
      response => {
        id: String,
        client_token: String,
        created_at: Time,
        expires_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        options: ModernTreasury::EmbeddableFlow::Options,
        status: ModernTreasury::EmbeddableFlow::Status,
        template: ModernTreasury::EmbeddableFlow::Template,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.embeddable_flows.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::EmbeddableFlow
    end

    assert_pattern do
      row => {
        id: String,
        client_token: String,
        created_at: Time,
        expires_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        options: ModernTreasury::EmbeddableFlow::Options,
        status: ModernTreasury::EmbeddableFlow::Status,
        template: ModernTreasury::EmbeddableFlow::Template,
        updated_at: Time
      }
    end
  end
end
