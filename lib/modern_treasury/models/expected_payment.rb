# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_lower_bound, Integer

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_upper_bound, Integer

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date]
      required :date_lower_bound, Date

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date]
      required :date_upper_bound, Date

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String]
      required :description, String

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Direction]
      required :direction, enum: -> { ModernTreasury::Models::ExpectedPayment::Direction }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the expected payment.
      #
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object]
      required :reconciliation_filters, ModernTreasury::Unknown

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object]
      required :reconciliation_groups, ModernTreasury::Unknown

      # @!attribute reconciliation_method
      #   One of manual if this expected payment was manually reconciled in the dashboard, automatic if it was automatically reconciled by Modern Treasury, or null if it is unreconciled.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod]
      required :reconciliation_method,
               enum: -> { ModernTreasury::Models::ExpectedPayment::ReconciliationMethod }

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>]
      required :reconciliation_rule_variables,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ReconciliationRule })

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String]
      required :remittance_information, String

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
      #
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute status
      #   One of unreconciled, partially_reconciled, reconciled, or archived.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Status]
      required :status, enum: -> { ModernTreasury::Models::ExpectedPayment::Status }

      # @!attribute transaction_id
      #   The ID of the Transaction this expected payment object has been matched to.
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute transaction_line_item_id
      #   The ID of the Transaction Line Item this expected payment has been matched to.
      #
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType]
      required :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param amount_lower_bound [Integer] The lowest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param amount_upper_bound [Integer] The highest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param counterparty_id [String] The ID of the counterparty you expect for this payment.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param currency [String] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   #
      #   # @param date_lower_bound [String] The earliest date the payment may come in. Format: yyyy-mm-dd
      #   #
      #   # @param date_upper_bound [String] The latest date the payment may come in. Format: yyyy-mm-dd
      #   #
      #   # @param description [String] An optional description for internal use.
      #   #
      #   # @param direction [String] One of credit or debit. When you are receiving money, use credit. When you are
      #   #   being charged, use debit.
      #   #
      #   # @param internal_account_id [String] The ID of the Internal Account for the expected payment.
      #   #
      #   # @param ledger_transaction_id [String] The ID of the ledger transaction linked to the expected payment.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param object [String]
      #   #
      #   # @param reconciliation_filters [Object] The reconciliation filters you have for this payment.
      #   #
      #   # @param reconciliation_groups [Object] The reconciliation groups you have for this payment.
      #   #
      #   # @param reconciliation_method [String] One of manual if this expected payment was manually reconciled in the dashboard,
      #   #   automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   #   is unreconciled.
      #   #
      #   # @param reconciliation_rule_variables [Array<Object>] An array of reconciliation rule variables for this payment.
      #   #
      #   # @param remittance_information [String] For `ach`, this field will be passed through on an addenda record. For `wire`
      #   #   payments the field will be passed through as the "Originator to Beneficiary
      #   #   Information", also known as OBI or Fedwire tag 6000.
      #   #
      #   # @param statement_descriptor [String] The statement description you expect to see on the transaction. For ACH
      #   #   payments, this will be the full line item passed from the bank. For wire
      #   #   payments, this will be the OBI field on the wire. For check payments, this will
      #   #   be the memo field.
      #   #
      #   # @param status [String] One of unreconciled, partially_reconciled, reconciled, or archived.
      #   #
      #   # @param transaction_id [String] The ID of the Transaction this expected payment object has been matched to.
      #   #
      #   # @param transaction_line_item_id [String] The ID of the Transaction Line Item this expected payment has been matched to.
      #   #
      #   # @param type [String] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   #   sepa, signet, wire.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     amount_lower_bound:,
      #     amount_upper_bound:,
      #     counterparty_id:,
      #     created_at:,
      #     currency:,
      #     date_lower_bound:,
      #     date_upper_bound:,
      #     description:,
      #     direction:,
      #     internal_account_id:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     reconciliation_filters:,
      #     reconciliation_groups:,
      #     reconciliation_method:,
      #     reconciliation_rule_variables:,
      #     remittance_information:,
      #     statement_descriptor:,
      #     status:,
      #     transaction_id:,
      #     transaction_line_item_id:,
      #     type:,
      #     updated_at:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
    end
  end
end
