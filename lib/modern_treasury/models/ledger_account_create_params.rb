# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::BaseModel
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
      #   @return [Integer]
      optional :currency_exponent, Integer

      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account should be a child of.
      #
      #   @return [Array<String>]
      optional :ledger_account_category_ids, ModernTreasury::ArrayOf.new(String)

      # @!attribute ledgerable_id
      #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> {
                 ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType
               }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      class LedgerableType < ModernTreasury::Enum
        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account
      end
    end
  end
end
