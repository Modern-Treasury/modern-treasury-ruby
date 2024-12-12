# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      optional :amount_lower_bound, Integer

      # @!attribute [rw] amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      optional :amount_upper_bound, Integer

      # @!attribute [rw] counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #   @return [Date]
      optional :date_lower_bound, Date

      # @!attribute [rw] date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #   @return [Date]
      optional :date_upper_bound, Date

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      optional :description, String

      # @!attribute [rw] direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction]
      optional :direction, enum: -> { ModernTreasury::Models::ExpectedPaymentCreateParams::Direction }

      # @!attribute [rw] internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute [rw] ledger_transaction
      #   Specifies a ledger transaction object that will be created with the expected payment. If the ledger transaction cannot be created, then the expected payment creation will fail. The resulting ledger transaction will mirror the status of the expected payment.
      #   @return [ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction]
      optional :ledger_transaction,
               -> { ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction }

      # @!attribute [rw] ledger_transaction_id
      #   Either ledger_transaction or ledger_transaction_id can be provided. Only a pending ledger transaction can be attached upon expected payment creation. Once the expected payment is created, the status of the ledger transaction tracks the expected payment automatically.
      #   @return [String]
      optional :ledger_transaction_id, String

      # @!attribute [rw] line_items
      #   @return [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem>]
      optional :line_items,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem
                 }
               )

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #   @return [Object]
      optional :reconciliation_filters, ModernTreasury::Unknown

      # @!attribute [rw] reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #   @return [Object]
      optional :reconciliation_groups, ModernTreasury::Unknown

      # @!attribute [rw] reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>]
      optional :reconciliation_rule_variables,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ReconciliationRule })

      # @!attribute [rw] remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #   @return [String]
      optional :remittance_information, String

      # @!attribute [rw] statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
      #   @return [String]
      optional :statement_descriptor, String

      # @!attribute [rw] type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType]
      optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

      # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        # @!attribute [rw] ledger_entries
        #   An array of ledger entry objects.
        #   @return [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry
                   }
                 )

        # @!attribute [rw] description
        #   An optional description for internal use.
        #   @return [String]
        optional :description, String

        # @!attribute [rw] effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #   @return [Time]
        optional :effective_at, Time

        # @!attribute [rw] effective_date
        #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
        #   @return [Date]
        optional :effective_date, Date

        # @!attribute [rw] external_id
        #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
        #   @return [String]
        optional :external_id, String

        # @!attribute [rw] ledgerable_id
        #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
        #   @return [String]
        optional :ledgerable_id, String

        # @!attribute [rw] ledgerable_type
        #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
        #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType
                 }

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute [rw] status
        #   To post a ledger transaction at creation, use `posted`.
        #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status]
        optional :status,
                 enum: -> { ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status }

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

      class LineItem < ModernTreasury::BaseModel
        # @!attribute [rw] amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] accounting_category_id
        #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :accounting_category_id, String

        # @!attribute [rw] description
        #   A free-form description of the line item.
        #   @return [String]
        optional :description, String

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!parse
        #   # Create a new instance of LineItem from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
        #   #     as 1000.
        #   #   @option data [String, nil] :accounting_category_id The ID of one of your accounting categories. Note that these will only be
        #   #     accessible if your accounting system has been connected.
        #   #   @option data [String, nil] :description A free-form description of the line item.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   def initialize(data = {}) = super
      end
    end
  end
end
