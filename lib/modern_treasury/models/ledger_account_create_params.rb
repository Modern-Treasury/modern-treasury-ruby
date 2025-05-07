# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccounts#create
    class LedgerAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute currency
      #   The currency of the ledger account.
      #
      #   @return [String]
      required :currency, String

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute name
      #   The name of the ledger account.
      #
      #   @return [String]
      required :name, String

      # @!attribute normal_balance
      #   The normal balance of the ledger account.
      #
      #   @return [Symbol, ModernTreasury::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute currency_exponent
      #   The currency exponent of the ledger account.
      #
      #   @return [Integer, nil]
      optional :currency_exponent, Integer, nil?: true

      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account should be a
      #   child of.
      #
      #   @return [Array<String>, nil]
      optional :ledger_account_category_ids, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute ledgerable_id
      #   If the ledger account links to another object in Modern Treasury, the id will be
      #   populated here, otherwise null.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      #
      #   @return [Symbol, ModernTreasury::LedgerAccountCreateParams::LedgerableType, nil]
      optional :ledgerable_type, enum: -> { ModernTreasury::LedgerAccountCreateParams::LedgerableType }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountCreateParams} for more details.
      #
      #   @param currency [String] The currency of the ledger account.
      #
      #   @param ledger_id [String] The id of the ledger that this account belongs to.
      #
      #   @param name [String] The name of the ledger account.
      #
      #   @param normal_balance [Symbol, ModernTreasury::TransactionDirection] The normal balance of the ledger account.
      #
      #   @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
      #
      #   @param description [String, nil] The description of the ledger account.
      #
      #   @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a ch
      #
      #   @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
      #
      #   @param ledgerable_type [Symbol, ModernTreasury::LedgerAccountCreateParams::LedgerableType] If the ledger account links to another object in Modern Treasury, the type will
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # If the ledger account links to another object in Modern Treasury, the type will
      # be populated here, otherwise null. The value is one of internal_account or
      # external_account.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
