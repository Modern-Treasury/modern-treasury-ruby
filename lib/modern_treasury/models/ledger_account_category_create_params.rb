# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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
      #   @return [Integer, nil]
      optional :currency_exponent, Integer, nil?: true

      # @!attribute description
      #   The description of the ledger account category.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account category
      #     should be a child of.
      #
      #   @return [Array<String>]
      optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :ledger_account_category_ids

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!parse
      #   # @param currency [String]
      #   # @param ledger_id [String]
      #   # @param name [String]
      #   # @param normal_balance [String]
      #   # @param currency_exponent [Integer, nil]
      #   # @param description [String, nil]
      #   # @param ledger_account_category_ids [Array<String>]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     currency:,
      #     ledger_id:,
      #     name:,
      #     normal_balance:,
      #     currency_exponent: nil,
      #     description: nil,
      #     ledger_account_category_ids: nil,
      #     metadata: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
