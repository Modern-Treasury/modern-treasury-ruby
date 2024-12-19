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
      optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param currency [String] The currency of the ledger account category.
      #   #
      #   # @param ledger_id [String] The id of the ledger that this account category belongs to.
      #   #
      #   # @param name [String] The name of the ledger account category.
      #   #
      #   # @param normal_balance [String] The normal balance of the ledger account category.
      #   #
      #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account category.
      #   #
      #   # @param description [String, nil] The description of the ledger account category.
      #   #
      #   # @param ledger_account_category_ids [Array<String>, nil] The array of ledger account category ids that this ledger account category
      #   #   should be a child of.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(
      #     currency:,
      #     ledger_id:,
      #     name:,
      #     normal_balance:,
      #     currency_exponent: nil,
      #     description: nil,
      #     ledger_account_category_ids: nil,
      #     metadata: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
