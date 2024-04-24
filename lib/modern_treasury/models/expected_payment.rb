# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExpectedPayment < BaseModel
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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   @return [Symbol]
      required :currency,
               ModernTreasury::Enum.new(
                 :AED,
                 :AFN,
                 :ALL,
                 :AMD,
                 :ANG,
                 :AOA,
                 :ARS,
                 :AUD,
                 :AWG,
                 :AZN,
                 :BAM,
                 :BBD,
                 :BCH,
                 :BDT,
                 :BGN,
                 :BHD,
                 :BIF,
                 :BMD,
                 :BND,
                 :BOB,
                 :BRL,
                 :BSD,
                 :BTC,
                 :BTN,
                 :BWP,
                 :BYN,
                 :BYR,
                 :BZD,
                 :CAD,
                 :CDF,
                 :CHF,
                 :CLF,
                 :CLP,
                 :CNH,
                 :CNY,
                 :COP,
                 :CRC,
                 :CUC,
                 :CUP,
                 :CVE,
                 :CZK,
                 :DJF,
                 :DKK,
                 :DOP,
                 :DZD,
                 :EEK,
                 :EGP,
                 :ERN,
                 :ETB,
                 :EUR,
                 :FJD,
                 :FKP,
                 :GBP,
                 :GBX,
                 :GEL,
                 :GGP,
                 :GHS,
                 :GIP,
                 :GMD,
                 :GNF,
                 :GTQ,
                 :GYD,
                 :HKD,
                 :HNL,
                 :HRK,
                 :HTG,
                 :HUF,
                 :IDR,
                 :ILS,
                 :IMP,
                 :INR,
                 :IQD,
                 :IRR,
                 :ISK,
                 :JEP,
                 :JMD,
                 :JOD,
                 :JPY,
                 :KES,
                 :KGS,
                 :KHR,
                 :KMF,
                 :KPW,
                 :KRW,
                 :KWD,
                 :KYD,
                 :KZT,
                 :LAK,
                 :LBP,
                 :LKR,
                 :LRD,
                 :LSL,
                 :LTL,
                 :LVL,
                 :LYD,
                 :MAD,
                 :MDL,
                 :MGA,
                 :MKD,
                 :MMK,
                 :MNT,
                 :MOP,
                 :MRO,
                 :MRU,
                 :MTL,
                 :MUR,
                 :MVR,
                 :MWK,
                 :MXN,
                 :MYR,
                 :MZN,
                 :NAD,
                 :NGN,
                 :NIO,
                 :NOK,
                 :NPR,
                 :NZD,
                 :OMR,
                 :PAB,
                 :PEN,
                 :PGK,
                 :PHP,
                 :PKR,
                 :PLN,
                 :PYG,
                 :QAR,
                 :RON,
                 :RSD,
                 :RUB,
                 :RWF,
                 :SAR,
                 :SBD,
                 :SCR,
                 :SDG,
                 :SEK,
                 :SGD,
                 :SHP,
                 :SKK,
                 :SLL,
                 :SOS,
                 :SRD,
                 :SSP,
                 :STD,
                 :SVC,
                 :SYP,
                 :SZL,
                 :THB,
                 :TJS,
                 :TMM,
                 :TMT,
                 :TND,
                 :TOP,
                 :TRY,
                 :TTD,
                 :TWD,
                 :TZS,
                 :UAH,
                 :UGX,
                 :USD,
                 :UYU,
                 :UZS,
                 :VEF,
                 :VES,
                 :VND,
                 :VUV,
                 :WST,
                 :XAF,
                 :XAG,
                 :XAU,
                 :XBA,
                 :XBB,
                 :XBC,
                 :XBD,
                 :XCD,
                 :XDR,
                 :XFU,
                 :XOF,
                 :XPD,
                 :XPF,
                 :XPT,
                 :XTS,
                 :YER,
                 :ZAR,
                 :ZMK,
                 :ZMW,
                 :ZWD,
                 :ZWL,
                 :ZWN,
                 :ZWR
               )

      # @!attribute [rw] date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #   @return [String]
      required :date_lower_bound, String

      # @!attribute [rw] date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #   @return [String]
      required :date_upper_bound, String

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #   @return [Symbol]
      required :direction, ModernTreasury::Enum.new(:credit, :debit)

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
      #   @return [Symbol]
      required :reconciliation_method, ModernTreasury::Enum.new(:automatic, :manual)

      # @!attribute [rw] reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #   @return [Array<Hash>]
      required :reconciliation_rule_variables, ModernTreasury::ArrayOf.new(Hash)

      # @!attribute [rw] remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH payments, this will be the full line item passed from the bank. For wire payments, this will be the OBI field on the wire. For check payments, this will be the memo field.
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [rw] status
      #   One of unreconciled, reconciled, or archived.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:archived, :partially_reconciled, :reconciled, :unreconciled)

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
      #   @return [Symbol]
      required :type,
               ModernTreasury::Enum.new(
                 :ach,
                 :au_becs,
                 :bacs,
                 :book,
                 :card,
                 :chats,
                 :check,
                 :cross_border,
                 :dk_nets,
                 :eft,
                 :hu_ics,
                 :interac,
                 :masav,
                 :mx_ccen,
                 :neft,
                 :nics,
                 :nz_becs,
                 :pl_elixir,
                 :provxchange,
                 :ro_sent,
                 :rtp,
                 :se_bankgirot,
                 :sen,
                 :sepa,
                 :sg_giro,
                 :sic,
                 :signet,
                 :sknbi,
                 :wire,
                 :zengin
               )

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
