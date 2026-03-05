# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#remove_ledger_account
    class LedgerAccountCategoryRemoveLedgerAccountParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute ledger_account_id
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!method initialize(id:, ledger_account_id:, request_options: {})
      #   @param id [String]
      #   @param ledger_account_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
