# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExpectedPayments#create
    class ExpectedPayment < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      required :amount_lower_bound, Integer, nil?: true

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      required :amount_upper_bound, Integer, nil?: true

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      required :currency, enum: -> { ModernTreasury::Models::Currency }, nil?: true

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      required :date_lower_bound, Date, nil?: true

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      required :date_upper_bound, Date, nil?: true

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Direction, nil]
      required :direction, enum: -> { ModernTreasury::Models::ExpectedPayment::Direction }, nil?: true

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String, nil]
      required :internal_account_id, String, nil?: true

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the expected payment.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object, nil]
      required :reconciliation_filters, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object, nil]
      required :reconciliation_groups, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_method
      #   One of manual if this expected payment was manually reconciled in the dashboard,
      #   automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   is unreconciled.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod, nil]
      required :reconciliation_method,
               enum: -> { ModernTreasury::Models::ExpectedPayment::ReconciliationMethod },
               nil?: true

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      required :reconciliation_rule_variables,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::ReconciliationRule] },
               nil?: true

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String, nil]
      required :remittance_information, String, nil?: true

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      #
      #   @return [String, nil]
      required :statement_descriptor, String, nil?: true

      # @!attribute status
      #   One of unreconciled, partially_reconciled, reconciled, or archived.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPayment::Status]
      required :status, enum: -> { ModernTreasury::Models::ExpectedPayment::Status }

      # @!attribute transaction_id
      #   The ID of the Transaction this expected payment object has been matched to.
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute transaction_line_item_id
      #   The ID of the Transaction Line Item this expected payment has been matched to.
      #
      #   @return [String, nil]
      required :transaction_line_item_id, String, nil?: true

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      required :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, amount_lower_bound:, amount_upper_bound:, counterparty_id:, created_at:, currency:, date_lower_bound:, date_upper_bound:, description:, direction:, internal_account_id:, ledger_transaction_id:, live_mode:, metadata:, object:, reconciliation_filters:, reconciliation_groups:, reconciliation_method:, reconciliation_rule_variables:, remittance_information:, statement_descriptor:, status:, transaction_id:, transaction_line_item_id:, type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExpectedPayment} for more details.
      #
      #   @param id [String]
      #
      #   @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
      #   ...
      #
      #   @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
      #   ...
      #
      #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param direction [Symbol, ModernTreasury::Models::ExpectedPayment::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
      #   ...
      #
      #   @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #
      #   @param ledger_transaction_id [String, nil] The ID of the ledger transaction linked to the expected payment.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #   ...
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #   ...
      #
      #   @param object [String]
      #
      #   @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #
      #   @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #
      #   @param reconciliation_method [Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod, nil] One of manual if this expected payment was manually reconciled in the dashboard,
      #   ...
      #
      #   @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
      #
      #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #   ...
      #
      #   @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
      #   ...
      #
      #   @param status [Symbol, ModernTreasury::Models::ExpectedPayment::Status] One of unreconciled, partially_reconciled, reconciled, or archived.
      #
      #   @param transaction_id [String, nil] The ID of the Transaction this expected payment object has been matched to.
      #
      #   @param transaction_line_item_id [String, nil] The ID of the Transaction Line Item this expected payment has been matched to.
      #
      #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se
      #   ...
      #
      #   @param updated_at [Time]

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      #
      # @see ModernTreasury::Models::ExpectedPayment#direction
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of manual if this expected payment was manually reconciled in the dashboard,
      # automatic if it was automatically reconciled by Modern Treasury, or null if it
      # is unreconciled.
      #
      # @see ModernTreasury::Models::ExpectedPayment#reconciliation_method
      module ReconciliationMethod
        extend ModernTreasury::Internal::Type::Enum

        AUTOMATIC = :automatic
        MANUAL = :manual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      #
      # @see ModernTreasury::Models::ExpectedPayment#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
