# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::BaseModel
      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      optional :amount_lower_bound, Integer

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      optional :amount_upper_bound, Integer

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date]
      optional :date_lower_bound, Date

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date]
      optional :date_upper_bound, Date

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String]
      optional :description, String

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction]
      optional :direction, enum: -> { ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object]
      optional :reconciliation_filters, ModernTreasury::Unknown

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object]
      optional :reconciliation_groups, ModernTreasury::Unknown

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>]
      optional :reconciliation_rule_variables,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::ReconciliationRule }]

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String]
      optional :remittance_information, String

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
      #
      #   @return [String]
      optional :statement_descriptor, String

      # @!attribute status
      #   The Expected Payment's status can be updated from partially_reconciled to reconciled.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ExpectedPaymentUpdateParams::Status }

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType]
      optional :type, enum: -> { ModernTreasury::Models::ExpectedPaymentType }

      # @!parse
      #   # @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #   #
      #   # @param currency [String, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   #
      #   # @param date_lower_bound [String, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #   #
      #   # @param date_upper_bound [String, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #   #
      #   # @param description [String, nil] An optional description for internal use.
      #   #
      #   # @param direction [String, nil] One of credit or debit. When you are receiving money, use credit. When you are
      #   #   being charged, use debit.
      #   #
      #   # @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #   #
      #   # @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #   #
      #   # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
      #   #
      #   # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire`
      #   #   payments the field will be passed through as the "Originator to Beneficiary
      #   #   Information", also known as OBI or Fedwire tag 6000.
      #   #
      #   # @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH
      #   #   payments, this will be the full line item passed from the bank. For wire
      #   #   payments, this will be the OBI field on the wire. For check payments, this will
      #   #   be the memo field.
      #   #
      #   # @param status [String, nil] The Expected Payment's status can be updated from partially_reconciled to
      #   #   reconciled.
      #   #
      #   # @param type [String, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   #   sepa, signet, wire.
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :credit
      #   # ...
      # in :debit
      #   # ...
      # end
      # ```
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      # The Expected Payment's status can be updated from partially_reconciled to reconciled.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :reconciled
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        RECONCILED = :reconciled
      end
    end
  end
end
