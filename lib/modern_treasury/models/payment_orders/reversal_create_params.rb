# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalCreateParams < ModernTreasury::BaseModel
        # @!attribute reason
        #   The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`, `incorrect_receiving_account`, `date_earlier_than_intended`, `date_later_than_intended`.
        #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason]
        required :reason, enum: -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason }

        # @!attribute ledger_transaction
        #   Specifies a ledger transaction object that will be created with the reversal. If the ledger transaction cannot be created, then the reversal creation will fail. The resulting ledger transaction will mirror the status of the reversal.
        #   @return [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction]
        optional :ledger_transaction,
                 -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`, `incorrect_receiving_account`, `date_earlier_than_intended`, `date_later_than_intended`.
        class Reason < ModernTreasury::Enum
          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended
        end

        class LedgerTransaction < ModernTreasury::BaseModel
          # @!attribute ledger_entries
          #   An array of ledger entry objects.
          #   @return [Array<ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry>]
          required :ledger_entries,
                   ModernTreasury::ArrayOf.new(
                     -> {
                       ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry
                     }
                   )

          # @!attribute description
          #   An optional description for internal use.
          #   @return [String]
          optional :description, String

          # @!attribute effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
          #   @return [Time]
          optional :effective_at, Time

          # @!attribute effective_date
          #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
          #   @return [Date]
          optional :effective_date, Date

          # @!attribute external_id
          #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
          #   @return [String]
          optional :external_id, String

          # @!attribute ledgerable_id
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
          #   @return [String]
          optional :ledgerable_id, String

          # @!attribute ledgerable_type
          #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
          #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType
                   }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #   @return [Hash]
          optional :metadata, Hash

          # @!attribute status
          #   To post a ledger transaction at creation, use `posted`.
          #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status]
          optional :status,
                   enum: -> {
                     ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status
                   }

          class LedgerEntry < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
            #   @return [Integer]
            required :amount, Integer

            # @!attribute direction
            #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
            #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
            required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

            # @!attribute ledger_account_id
            #   The ledger account that this ledger entry is associated with.
            #   @return [String]
            required :ledger_account_id, String

            # @!attribute available_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s available balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #   @return [Hash]
            optional :available_balance_amount, Hash

            # @!attribute lock_version
            #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
            #   @return [Integer]
            optional :lock_version, Integer

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #   @return [Hash]
            optional :metadata, Hash

            # @!attribute pending_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s pending balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #   @return [Hash]
            optional :pending_balance_amount, Hash

            # @!attribute posted_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the account’s posted balance. If any of these conditions would be false after the transaction is created, the entire call will fail with error code 422.
            #   @return [Hash]
            optional :posted_balance_amount, Hash

            # @!attribute show_resulting_ledger_account_balances
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

          # @!parse
          #   # Create a new instance of LedgerTransaction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<Object>] :ledger_entries An array of ledger entry objects.
          #   #   @option data [String, nil] :description An optional description for internal use.
          #   #   @option data [String, nil] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   #     reporting purposes.
          #   #   @option data [String, nil] :effective_date The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          #   #     purposes.
          #   #   @option data [String, nil] :external_id A unique string to represent the ledger transaction. Only one pending or posted
          #   #     ledger transaction may have this ID in the ledger.
          #   #   @option data [String, nil] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
          #   #     Treasury, the id will be populated here, otherwise null.
          #   #   @option data [String, nil] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
          #   #     Treasury, the type will be populated here, otherwise null. This can be one of
          #   #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   #     reversal.
          #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
          #   #     strings.
          #   #   @option data [String, nil] :status To post a ledger transaction at creation, use `posted`.
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
