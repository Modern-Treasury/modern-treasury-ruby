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
      #   @return [Integer, nil]
      optional :currency_exponent, Integer

      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute ledger_account_category_ids
      #   The array of ledger account category ids that this ledger account should be a child of.
      #
      #   @return [Array<String>]
      optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

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
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param currency [String] The currency of the ledger account.
      #   #
      #   # @param ledger_id [String] The id of the ledger that this account belongs to.
      #   #
      #   # @param name [String] The name of the ledger account.
      #   #
      #   # @param normal_balance [String] The normal balance of the ledger account.
      #   #
      #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
      #   #
      #   # @param description [String, nil] The description of the ledger account.
      #   #
      #   # @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a
      #   #   child of.
      #   #
      #   # @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
      #   #   populated here, otherwise null.
      #   #
      #   # @param ledgerable_type [String] If the ledger account links to another object in Modern Treasury, the type will
      #   #   be populated here, otherwise null. The value is one of internal_account or
      #   #   external_account.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
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
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      #
      # @example
      # ```ruby
      # case ledgerable_type
      # in :counterparty
      #   # ...
      # in :external_account
      #   # ...
      # in :internal_account
      #   # ...
      # in :virtual_account
      #   # ...
      # end
      # ```
      class LedgerableType < ModernTreasury::Enum
        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        finalize!
      end
    end
  end
end
