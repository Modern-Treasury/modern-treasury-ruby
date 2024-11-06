# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount_lower_bound, Integer

      # @!attribute [rw] amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount_upper_bound, Integer

      # @!attribute [rw] counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #   @return [Date]
      required :date_lower_bound, Date

      # @!attribute [rw] date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #   @return [Date]
      required :date_upper_bound, Date

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Direction]
      required :direction, enum: -> { ModernTreasury::Models::ExpectedPayment::Direction }

      # @!attribute [rw] internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the expected payment.
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #   @return [Object]
      required :reconciliation_filters, ModernTreasury::Unknown

      # @!attribute [rw] reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #   @return [Object]
      required :reconciliation_groups, ModernTreasury::Unknown

      # @!attribute [rw] reconciliation_method
      #   One of manual if this expected payment was manually reconciled in the dashboard, automatic if it was automatically reconciled by Modern Treasury, or null if it is unreconciled.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod]
      required :reconciliation_method,
               enum: -> { ModernTreasury::Models::ExpectedPayment::ReconciliationMethod }

      # @!attribute [rw] reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>]
      required :reconciliation_rule_variables,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ReconciliationRule })

      # @!attribute [rw] remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [rw] status
      #   One of unreconciled, partially_reconciled, reconciled, or archived.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Status]
      required :status, enum: -> { ModernTreasury::Models::ExpectedPayment::Status }

      # @!attribute [rw] transaction_id
      #   The ID of the Transaction this expected payment object has been matched to.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] transaction_line_item_id
      #   The ID of the Transaction Line Item this expected payment has been matched to.
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute [rw] type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType]
      required :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      # One of manual if this expected payment was manually reconciled in the dashboard, automatic if it was automatically reconciled by Modern Treasury, or null if it is unreconciled.
      class ReconciliationMethod < ModernTreasury::Enum
        AUTOMATIC = :automatic
        MANUAL = :manual
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled
      end

      # @!parse
      #   # Create a new instance of ExpectedPayment from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :amount_lower_bound The lowest amount this expected payment may be equal to. Value in specified
      #   #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #   @option data [Integer] :amount_upper_bound The highest amount this expected payment may be equal to. Value in specified
      #   #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #   @option data [String] :counterparty_id The ID of the counterparty you expect for this payment.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :currency Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   #   @option data [String] :date_lower_bound The earliest date the payment may come in. Format: yyyy-mm-dd
      #   #   @option data [String] :date_upper_bound The latest date the payment may come in. Format: yyyy-mm-dd
      #   #   @option data [String] :description An optional description for internal use.
      #   #   @option data [String] :direction One of credit or debit. When you are receiving money, use credit. When you are
      #   #     being charged, use debit.
      #   #   @option data [String] :internal_account_id The ID of the Internal Account for the expected payment.
      #   #   @option data [String] :ledger_transaction_id The ID of the ledger transaction linked to the expected payment.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [Object] :reconciliation_filters The reconciliation filters you have for this payment.
      #   #   @option data [Object] :reconciliation_groups The reconciliation groups you have for this payment.
      #   #   @option data [String] :reconciliation_method One of manual if this expected payment was manually reconciled in the dashboard,
      #   #     automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   #     is unreconciled.
      #   #   @option data [Array<Object>] :reconciliation_rule_variables An array of reconciliation rule variables for this payment.
      #   #   @option data [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   #     payments the field will be passed through as the "Originator to Beneficiary
      #   #     Information", also known as OBI or Fedwire tag 6000.
      #   #   @option data [String] :statement_descriptor The statement description you expect to see on the transaction. For ACH
      #   #     payments, this will be the full line item passed from the bank. For wire
      #   #     payments, this will be the OBI field on the wire. For check payments, this will
      #   #     be the memo field.
      #   #   @option data [String] :status One of unreconciled, partially_reconciled, reconciled, or archived.
      #   #   @option data [String] :transaction_id The ID of the Transaction this expected payment object has been matched to.
      #   #   @option data [String] :transaction_line_item_id The ID of the Transaction Line Item this expected payment has been matched to.
      #   #   @option data [String] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   #     sepa, signet, wire.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
