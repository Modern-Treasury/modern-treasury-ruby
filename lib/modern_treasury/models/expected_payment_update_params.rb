# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_lower_bound, Integer, nil?: true

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
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
      optional :currency, enum: -> { ModernTreasury::Models::Currency }, nil?: true

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
      #     being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil]
      optional :direction,
               enum: -> { ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction },
               nil?: true

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String, nil]
      optional :internal_account_id, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_filters, ModernTreasury::Unknown, nil?: true

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_groups, ModernTreasury::Unknown, nil?: true

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      optional :reconciliation_rule_variables,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule] },
               nil?: true

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire`
      #     payments the field will be passed through as the "Originator to Beneficiary
      #     Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String, nil]
      optional :remittance_information, String, nil?: true

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH
      #     payments, this will be the full line item passed from the bank. For wire
      #     payments, this will be the OBI field on the wire. For check payments, this will
      #     be the memo field.
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!attribute status
      #   The Expected Payment's status can be updated from partially_reconciled to
      #     reconciled.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::ExpectedPaymentUpdateParams::Status }, nil?: true

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #     sepa, signet, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }, nil?: true

      # @!parse
      #   # @param amount_lower_bound [Integer, nil]
      #   # @param amount_upper_bound [Integer, nil]
      #   # @param counterparty_id [String, nil]
      #   # @param currency [Symbol, ModernTreasury::Models::Currency, nil]
      #   # @param date_lower_bound [Date, nil]
      #   # @param date_upper_bound [Date, nil]
      #   # @param description [String, nil]
      #   # @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil]
      #   # @param internal_account_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param reconciliation_filters [Object, nil]
      #   # @param reconciliation_groups [Object, nil]
      #   # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      #   # @param remittance_information [String, nil]
      #   # @param statement_descriptor [String, nil]
      #   # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil]
      #   # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount_lower_bound: nil,
      #     amount_upper_bound: nil,
      #     counterparty_id: nil,
      #     currency: nil,
      #     date_lower_bound: nil,
      #     date_upper_bound: nil,
      #     description: nil,
      #     direction: nil,
      #     internal_account_id: nil,
      #     metadata: nil,
      #     reconciliation_filters: nil,
      #     reconciliation_groups: nil,
      #     reconciliation_rule_variables: nil,
      #     remittance_information: nil,
      #     statement_descriptor: nil,
      #     status: nil,
      #     type: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      module Direction
        extend ModernTreasury::Enum

        CREDIT = :credit
        DEBIT = :debit

        finalize!
      end

      # The Expected Payment's status can be updated from partially_reconciled to
      #   reconciled.
      module Status
        extend ModernTreasury::Enum

        RECONCILED = :reconciled

        finalize!
      end
    end
  end
end
