# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::CasesTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.cases.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Case
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        requested_actions: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::RequestedAction]),
        resolved_actions: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::ResolvedAction]),
        status: ModernTreasury::Case::Status,
        subject_id: String,
        subject_type: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.cases.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Case
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        requested_actions: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::RequestedAction]),
        resolved_actions: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Case::ResolvedAction]),
        status: ModernTreasury::Case::Status,
        subject_id: String,
        subject_type: String,
        updated_at: Time
      }
    end
  end
end
