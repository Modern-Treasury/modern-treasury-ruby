# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryCreateParams < ModernTreasury::BaseModel
      # @!attribute currency
      #   The currency of the ledger account category.
      #
      #   @return [String]
      required :currency, String

      # @!attribute ledger_id
      #   The id of the ledger that this account category belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute name
      #   The name of the ledger account category.
      #
      #   @return [String]
      required :name, String

      # @!attribute normal_balance
      #   The normal balance of the ledger account category.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute currency_exponent
      #   The currency exponent of the ledger account category.
      #
      #   @return [Integer]
      optional :currency_exponent, Integer

      # @!attribute description
      #   The description of the ledger account category.
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account category should be a child of.
      #
      #   @return [Array<String>]
      optional :ledger_account_category_ids, ModernTreasury::ArrayOf.new(String)

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash
    end
  end
end
