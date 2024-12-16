# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionCreateParams < ModernTreasury::BaseModel
      # @!attribute ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry>]
      required :ledger_entries,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry
                 }
               )

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String]
      optional :description, String

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
      #
      #   @return [Date]
      optional :effective_date, Date

      # @!attribute external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
      #
      #   @return [String]
      optional :external_id, String

      # @!attribute ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute status
      #   To post a ledger transaction at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionCreateParams::Status }

      # @!parse
      #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry>] An array of ledger entry objects.
      #   #
      #   # @param description [String, nil] An optional description for internal use.
      #   #
      #   # @param effective_at [String, nil] The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   #   reporting purposes.
      #   #
      #   # @param effective_date [String, nil] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   #   purposes.
      #   #
      #   # @param external_id [String, nil] A unique string to represent the ledger transaction. Only one pending or posted
      #   #   ledger transaction may have this ID in the ledger.
      #   #
      #   # @param ledgerable_id [String, nil] If the ledger transaction can be reconciled to another object in Modern
      #   #   Treasury, the id will be populated here, otherwise null.
      #   #
      #   # @param ledgerable_type [String, nil] If the ledger transaction can be reconciled to another object in Modern
      #   #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   #   reversal.
      #   #
      #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param status [String, nil] To post a ledger transaction at creation, use `posted`.
      #   #
      #   def initialize(
      #     ledger_entries:,
      #     description: nil,
      #     effective_at: nil,
      #     effective_date: nil,
      #     external_id: nil,
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     status: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class LedgerEntry < ModernTreasury::BaseModel
        # @!attribute amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
        #
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute available_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash]
        optional :available_balance_amount, Hash

        # @!attribute lock_version
        #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
        #
        #   @return [Integer]
        optional :lock_version, Integer

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute pending_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash]
        optional :pending_balance_amount, Hash

        # @!attribute posted_balance_amount
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
        #
        #   @return [Hash]
        optional :posted_balance_amount, Hash

        # @!attribute show_resulting_ledger_account_balances
        #   If true, response will include the balance of the associated ledger account for the entry.
        #
        #   @return [Boolean]
        optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel

        # @!parse
        #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
        #   #   as 1000. Can be any integer up to 36 digits.
        #   #
        #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
        #   #   transaction. A `credit` moves money from your account to someone else's. A
        #   #   `debit` pulls money from someone else's account to your own. Note that wire,
        #   #   rtp, and check payments will always be `credit`.
        #   #
        #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
        #   #
        #   # @param available_balance_amount [Hash, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #   account’s available balance. If any of these conditions would be false after the
        #   #   transaction is created, the entire call will fail with error code 422.
        #   #
        #   # @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
        #   #   transaction to only succeed if no ledger transactions have posted since the
        #   #   given version. See our post about Designing the Ledgers API with Optimistic
        #   #   Locking for more details.
        #   #
        #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   # @param pending_balance_amount [Hash, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #   account’s pending balance. If any of these conditions would be false after the
        #   #   transaction is created, the entire call will fail with error code 422.
        #   #
        #   # @param posted_balance_amount [Hash, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        #   #   account’s posted balance. If any of these conditions would be false after the
        #   #   transaction is created, the entire call will fail with error code 422.
        #   #
        #   # @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
        #   #   the entry.
        #   #
        #   def initialize(
        #     amount:,
        #     direction:,
        #     ledger_account_id:,
        #     available_balance_amount: nil,
        #     lock_version: nil,
        #     metadata: nil,
        #     pending_balance_amount: nil,
        #     posted_balance_amount: nil,
        #     show_resulting_ledger_account_balances: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
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
