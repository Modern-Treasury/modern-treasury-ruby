# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      # @see ModernTreasury::Resources::PaymentOrders::Reversals#create
      class ReversalCreateParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::Type::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute reason
        #   The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #     `incorrect_receiving_account`, `date_earlier_than_intended`,
        #     `date_later_than_intended`.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason]
        required :reason, enum: -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason }

        # @!attribute [r] ledger_transaction
        #   Specifies a ledger transaction object that will be created with the reversal. If
        #     the ledger transaction cannot be created, then the reversal creation will fail.
        #     The resulting ledger transaction will mirror the status of the reversal.
        #
        #   @return [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction, nil]
        optional :ledger_transaction,
                 -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction }

        # @!parse
        #   # @return [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction]
        #   attr_writer :ledger_transaction

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
        #   # @param reason [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason]
        #   # @param ledger_transaction [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(reason:, ledger_transaction: nil, metadata: nil, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #   `incorrect_receiving_account`, `date_earlier_than_intended`,
        #   `date_later_than_intended`.
        module Reason
          extend ModernTreasury::Enum

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class LedgerTransaction < ModernTreasury::BaseModel
          # @!attribute ledger_entries
          #   An array of ledger entry objects.
          #
          #   @return [Array<ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry>]
          required :ledger_entries,
                   -> { ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry] }

          # @!attribute description
          #   An optional description for internal use.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute [r] effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for
          #     reporting purposes.
          #
          #   @return [Time, nil]
          optional :effective_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :effective_at

          # @!attribute [r] effective_date
          #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          #     purposes.
          #
          #   @return [Date, nil]
          optional :effective_date, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :effective_date

          # @!attribute [r] external_id
          #   A unique string to represent the ledger transaction. Only one pending or posted
          #     ledger transaction may have this ID in the ledger.
          #
          #   @return [String, nil]
          optional :external_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :external_id

          # @!attribute [r] ledgerable_id
          #   If the ledger transaction can be reconciled to another object in Modern
          #     Treasury, the id will be populated here, otherwise null.
          #
          #   @return [String, nil]
          optional :ledgerable_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ledgerable_id

          # @!attribute [r] ledgerable_type
          #   If the ledger transaction can be reconciled to another object in Modern
          #     Treasury, the type will be populated here, otherwise null. This can be one of
          #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #     reversal.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType, nil]
          optional :ledgerable_type,
                   enum: -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType]
          #   attr_writer :ledgerable_type

          # @!attribute [r] metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #     strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :metadata

          # @!attribute [r] status
          #   To post a ledger transaction at creation, use `posted`.
          #
          #   @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status, nil]
          optional :status,
                   enum: -> { ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status]
          #   attr_writer :status

          # @!parse
          #   # Specifies a ledger transaction object that will be created with the reversal. If
          #   #   the ledger transaction cannot be created, then the reversal creation will fail.
          #   #   The resulting ledger transaction will mirror the status of the reversal.
          #   #
          #   # @param ledger_entries [Array<ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry>]
          #   # @param description [String, nil]
          #   # @param effective_at [Time]
          #   # @param effective_date [Date]
          #   # @param external_id [String]
          #   # @param ledgerable_id [String]
          #   # @param ledgerable_type [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType]
          #   # @param metadata [Hash{Symbol=>String}]
          #   # @param status [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status]
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
          #     status: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          class LedgerEntry < ModernTreasury::BaseModel
            # @!attribute amount
            #   Value in specified currency's smallest unit. e.g. $10 would be represented
            #     as 1000. Can be any integer up to 36 digits.
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute direction
            #   One of `credit`, `debit`. Describes the direction money is flowing in the
            #     transaction. A `credit` moves money from your account to someone else's. A
            #     `debit` pulls money from someone else's account to your own. Note that wire,
            #     rtp, and check payments will always be `credit`.
            #
            #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
            required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

            # @!attribute ledger_account_id
            #   The ledger account that this ledger entry is associated with.
            #
            #   @return [String]
            required :ledger_account_id, String

            # @!attribute available_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #     account’s available balance. If any of these conditions would be false after the
            #     transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol=>Integer}, nil]
            optional :available_balance_amount, ModernTreasury::HashOf[Integer], nil?: true

            # @!attribute lock_version
            #   Lock version of the ledger account. This can be passed when creating a ledger
            #     transaction to only succeed if no ledger transactions have posted since the
            #     given version. See our post about Designing the Ledgers API with Optimistic
            #     Locking for more details.
            #
            #   @return [Integer, nil]
            optional :lock_version, Integer, nil?: true

            # @!attribute [r] metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #     strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :metadata

            # @!attribute pending_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #     account’s pending balance. If any of these conditions would be false after the
            #     transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol=>Integer}, nil]
            optional :pending_balance_amount, ModernTreasury::HashOf[Integer], nil?: true

            # @!attribute posted_balance_amount
            #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #     account’s posted balance. If any of these conditions would be false after the
            #     transaction is created, the entire call will fail with error code 422.
            #
            #   @return [Hash{Symbol=>Integer}, nil]
            optional :posted_balance_amount, ModernTreasury::HashOf[Integer], nil?: true

            # @!attribute show_resulting_ledger_account_balances
            #   If true, response will include the balance of the associated ledger account for
            #     the entry.
            #
            #   @return [Boolean, nil]
            optional :show_resulting_ledger_account_balances, ModernTreasury::BooleanModel, nil?: true

            # @!parse
            #   # @param amount [Integer]
            #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
            #   # @param ledger_account_id [String]
            #   # @param available_balance_amount [Hash{Symbol=>Integer}, nil]
            #   # @param lock_version [Integer, nil]
            #   # @param metadata [Hash{Symbol=>String}]
            #   # @param pending_balance_amount [Hash{Symbol=>Integer}, nil]
            #   # @param posted_balance_amount [Hash{Symbol=>Integer}, nil]
            #   # @param show_resulting_ledger_account_balances [Boolean, nil]
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
            #     show_resulting_ledger_account_balances: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   reversal.
          #
          # @see ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction#ledgerable_type
          module LedgerableType
            extend ModernTreasury::Enum

            EXPECTED_PAYMENT = :expected_payment
            INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
            PAPER_ITEM = :paper_item
            PAYMENT_ORDER = :payment_order
            RETURN = :return
            REVERSAL = :reversal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # To post a ledger transaction at creation, use `posted`.
          #
          # @see ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction#status
          module Status
            extend ModernTreasury::Enum

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
