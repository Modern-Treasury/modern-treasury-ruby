# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#create
    class LedgerAccountCategoryCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   @return [Symbol, ModernTreasury::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::TransactionDirection }

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

      # @!attribute ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account category
      #   should be a child of.
      #
      #   @return [Array<String>, nil]
      optional :ledger_account_category_ids, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountCategoryCreateParams} for more details.
      #
      #   @param currency [String] The currency of the ledger account category.
      #
      #   @param ledger_id [String] The id of the ledger that this account category belongs to.
      #
      #   @param name [String] The name of the ledger account category.
      #
      #   @param normal_balance [Symbol, ModernTreasury::TransactionDirection] The normal balance of the ledger account category.
      #
      #   @param currency_exponent [Integer, nil] The currency exponent of the ledger account category.
      #
      #   @param description [String, nil] The description of the ledger account category.
      #
      #   @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account category shoul
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
