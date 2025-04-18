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
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

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
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType, nil]
      optional :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, request_options: {})
      #   @param currency [String]
      #   @param ledger_id [String]
      #   @param name [String]
      #   @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
      #   @param currency_exponent [Integer, nil]
      #   @param description [String, nil]
      #   @param ledger_account_category_ids [Array<String>]
      #   @param ledgerable_id [String]
      #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType]
      #   @param metadata [Hash{Symbol=>String}]
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
