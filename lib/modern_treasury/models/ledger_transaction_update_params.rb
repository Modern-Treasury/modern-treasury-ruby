# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      optional :description, String

      # @!attribute [rw] effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute [rw] ledger_entries
      #   An array of ledger entry objects.
      #   @return [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>]
      optional :ledger_entries,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry
                 }
               )

      # @!attribute [rw] ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute [rw] ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType }

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] status
      #   To post a ledger transaction at creation, use `posted`.
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionUpdateParams::Status }

      class LedgerEntry < ModernTreasury::BaseModel
        # @!attribute [rw] amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute [rw] ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute [rw] available_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #   @return [Hash]
        optional :available_balance_amount, Hash

        # @!attribute [rw] lock_version
        #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
        #   @return [Integer]
        optional :lock_version, Integer

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute [rw] pending_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #   @return [Hash]
        optional :pending_balance_amount, Hash

        # @!attribute [rw] posted_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #   @return [Hash]
        optional :posted_balance_amount, Hash

        # @!attribute [rw] show_resulting_ledger_account_balances
        #   If true, response will include the balance of the associated ledger account for the entry.
        #   @return [Boolean]
        optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

        # @!parse
        #   # Create a new instance of LedgerEntry from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
        #   #     as 1000. Can be any integer up to 36 digits.
        #   #   @option data [String] :direction One of `credit`, `debit`. Describes the direction money is flowing in the
        #   #     transaction. A `credit` moves money from your account to someone else's. A
        #   #     `debit` pulls money from someone else's account to your own. Note that wire,
        #   #     rtp, and check payments will always be `credit`.
        #   #   @option data [String] :ledger_account_id The ledger account that this ledger entry is associated with.
        #   #   @option data [Hash, nil] :available_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #     account’s available balance. If any of these conditions would be false after the
        #   #     transaction is created, the entire call will fail with error code 422.
        #   #   @option data [Integer, nil] :lock_version Lock version of the ledger account. This can be passed when creating a ledger
        #   #     transaction to only succeed if no ledger transactions have posted since the
        #   #     given version. See our post about Designing the Ledgers API with Optimistic
        #   #     Locking for more details.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [Hash, nil] :pending_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #     account’s pending balance. If any of these conditions would be false after the
        #   #     transaction is created, the entire call will fail with error code 422.
        #   #   @option data [Hash, nil] :posted_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #     account’s posted balance. If any of these conditions would be false after the
        #   #     transaction is created, the entire call will fail with error code 422.
        #   #   @option data [Hash, nil] :show_resulting_ledger_account_balances If true, response will include the balance of the associated ledger account for
        #   #     the entry.
        #   def initialize(data = {}) = super
      end

      # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # To post a ledger transaction at creation, use `posted`.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end
    end
  end
end
