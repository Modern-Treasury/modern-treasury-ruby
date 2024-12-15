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
      #   @return [Hash]
      optional :metadata, Hash

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
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ReconciliationRule })

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

      # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit
      end

      # The Expected Payment's status can be updated from partially_reconciled to reconciled.
      class Status < ModernTreasury::Enum
        RECONCILED = :reconciled
      end
    end
  end
end
