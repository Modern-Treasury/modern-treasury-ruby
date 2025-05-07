# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentReferencesTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.payment_references.retrieve("id")

    assert_pattern do
      response => ModernTreasury::PaymentReference
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_references.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::PaymentReference
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end

  def test_retireve
    response = @modern_treasury.payment_references.retireve("id")

    assert_pattern do
      response => ModernTreasury::PaymentReference
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reference_number: String,
        reference_number_type: ModernTreasury::PaymentReference::ReferenceNumberType,
        referenceable_id: String,
        referenceable_type: ModernTreasury::PaymentReference::ReferenceableType,
        updated_at: Time
      }
    end
  end
end
