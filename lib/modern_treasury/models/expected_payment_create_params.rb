# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExpectedPayments#create
    class ExpectedPaymentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_lower_bound, Integer, nil?: true

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_upper_bound, Integer, nil?: true

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Currency }, nil?: true

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_lower_bound, Date, nil?: true

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_upper_bound, Date, nil?: true

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction, nil]
      optional :direction, enum: -> { ModernTreasury::ExpectedPaymentCreateParams::Direction }, nil?: true

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String, nil]
      optional :internal_account_id, String, nil?: true

      # @!attribute ledger_transaction
      #   Specifies a ledger transaction object that will be created with the expected
      #   payment. If the ledger transaction cannot be created, then the expected payment
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the expected payment.
      #
      #   @return [ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction, nil]
      optional :ledger_transaction, -> { ModernTreasury::ExpectedPaymentCreateParams::LedgerTransaction }

      # @!attribute ledger_transaction_id
      #   Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon expected payment creation. Once
      #   the expected payment is created, the status of the ledger transaction tracks the
      #   expected payment automatically.
      #
      #   @return [String, nil]
      optional :ledger_transaction_id, String

      # @!attribute line_items
      #
      #   @return [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem>, nil]
      optional :line_items,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ExpectedPaymentCreateParams::LineItem]
               }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_filters, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_groups, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      optional :reconciliation_rule_variables,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule] },
               nil?: true

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String, nil]
      optional :remittance_information, String, nil?: true

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      optional :type, enum: -> { ModernTreasury::ExpectedPaymentType }, nil?: true

      # @!method initialize(amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, internal_account_id: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExpectedPaymentCreateParams} for more details.
      #
      #   @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
      #
      #   @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
      #
      #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
      #
      #   @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #
      #   @param ledger_transaction [ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction] Specifies a ledger transaction object that will be created with the expected pay
      #
      #   @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
      #
      #   @param line_items [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem>]
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #
      #   @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #
      #   @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
      #
      #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      #   @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
      #
      #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class LedgerTransaction < ModernTreasury::Internal::Type::BaseModel
        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry>]
        required :ledger_entries,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry]
                 }

        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!attribute effective_date
        #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        #
        #   @return [Date, nil]
        optional :effective_date, Date

        # @!attribute external_id
        #   A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute ledgerable_id
        #   If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        #
        #   @return [String, nil]
        optional :ledgerable_id, String

        # @!attribute ledgerable_type
        #   If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        #   reversal.
        #
        #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType, nil]
        optional :ledgerable_type,
                 enum: -> { ModernTreasury::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status, nil]
        optional :status, enum: -> { ModernTreasury::ExpectedPaymentCreateParams::LedgerTransaction::Status }

        # @!method initialize(ledger_entries:, description: nil, effective_at: nil, effective_date: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction} for
        #   more details.
        #
        #   Specifies a ledger transaction object that will be created with the expected
        #   payment. If the ledger transaction cannot be created, then the expected payment
        #   creation will fail. The resulting ledger transaction will mirror the status of
        #   the expected payment.
        #
        #   @param ledger_entries [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry>] An array of ledger entry objects.
        #
        #   @param description [String, nil] An optional description for internal use.
        #
        #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
        #
        #   @param effective_date [Date] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting pur
        #
        #   @param external_id [String] A unique string to represent the ledger transaction. Only one pending or posted
        #
        #   @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern Treasury
        #
        #   @param ledgerable_type [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType] If the ledger transaction can be reconciled to another object in Modern Treasury
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param status [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status] To post a ledger transaction at creation, use `posted`.

        class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000. Can be any integer up to 36 digits.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
          required :direction, enum: -> { ModernTreasury::TransactionDirection }

          # @!attribute ledger_account_id
          #   The ledger account that this ledger entry is associated with.
          #
          #   @return [String]
          required :ledger_account_id, String

          # @!attribute available_balance_amount
          #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s available balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :available_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

          # @!attribute lock_version
          #   Lock version of the ledger account. This can be passed when creating a ledger
          #   transaction to only succeed if no ledger transactions have posted since the
          #   given version. See our post about Designing the Ledgers API with Optimistic
          #   Locking for more details.
          #
          #   @return [Integer, nil]
          optional :lock_version, Integer, nil?: true

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!attribute pending_balance_amount
          #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s pending balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :pending_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

          # @!attribute posted_balance_amount
          #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s posted balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :posted_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

          # @!attribute show_resulting_ledger_account_balances
          #   If true, response will include the balance of the associated ledger account for
          #   the entry.
          #
          #   @return [Boolean, nil]
          optional :show_resulting_ledger_account_balances,
                   ModernTreasury::Internal::Type::Boolean,
                   nil?: true

          # @!method initialize(amount:, direction:, ledger_account_id:, available_balance_amount: nil, lock_version: nil, metadata: nil, pending_balance_amount: nil, posted_balance_amount: nil, show_resulting_ledger_account_balances: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry}
          #   for more details.
          #
          #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
          #
          #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit`, `debit`. Describes the direction money is flowing in the transa
          #
          #   @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
          #
          #   @param available_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
          #
          #   @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger tr
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param pending_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
          #
          #   @param posted_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
          #
          #   @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
        end

        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        # reversal.
        #
        # @see ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction#ledgerable_type
        module LedgerableType
          extend ModernTreasury::Internal::Type::Enum

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # To post a ledger transaction at creation, use `posted`.
        #
        # @see ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction#status
        module Status
          extend ModernTreasury::Internal::Type::Enum

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LineItem < ModernTreasury::Internal::Type::BaseModel
        # @!attribute amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute accounting_category_id
        #   The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :accounting_category_id, String, nil?: true

        # @!attribute description
        #   A free-form description of the line item.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem} for more
        #   details.
        #
        #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
        #
        #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
        #
        #   @param description [String, nil] A free-form description of the line item.
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      end
    end
  end
end
