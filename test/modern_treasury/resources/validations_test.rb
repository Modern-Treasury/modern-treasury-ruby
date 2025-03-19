# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ValidationsTest < ModernTreasury::Test::ResourceTest
  def test_validate_routing_number_required_params
    response =
      @modern_treasury.validations.validate_routing_number(
        routing_number: "routing_number",
        routing_number_type: :aba
      )

    assert_pattern do
      response => ModernTreasury::Models::RoutingNumberLookupRequest
    end

    assert_pattern do
      response => {
        bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress | nil,
        bank_name: String | nil,
        routing_number: String | nil,
        routing_number_type: ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType | nil,
        sanctions: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]) | nil,
        supported_payment_types: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType]) | nil
      }
    end
  end
end
