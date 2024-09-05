# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentOrder < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] accounting
      #   @return [ModernTreasury::Models::PaymentOrder::Accounting]
      required :accounting, -> { ModernTreasury::Models::PaymentOrder::Accounting }

      # @!attribute [rw] accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_category_id, String

      # @!attribute [rw] accounting_ledger_class_id
      #   The ID of one of your accounting ledger classes. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_ledger_class_id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] charge_bearer
      #   The party that will pay the fees for the payment order. Only applies to wire payment orders. Can be one of shared, sender, or receiver, which correspond respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      #   @return [Symbol]
      required :charge_bearer, ModernTreasury::Enum.new(:shared, :sender, :receiver)

      # @!attribute [rw] compliance_rule_metadata
      #   Custom key-value pair for usage in compliance rules. Please contact support before making changes to this field.
      #   @return [Hash]
      required :compliance_rule_metadata, Hash

      # @!attribute [rw] counterparty_id
      #   If the payment order is tied to a specific Counterparty, their id will appear, otherwise `null`.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   Defaults to the currency of the originating account.
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

      # @!attribute [rw] current_return
      #   If the payment order's status is `returned`, this will include the return object's data.
      #   @return [ModernTreasury::Models::ReturnObject]
      required :current_return, -> { ModernTreasury::Models::ReturnObject }

      # @!attribute [rw] decision_id
      #   The ID of the compliance decision for the payment order, if transaction monitoring is enabled.
      #   @return [String]
      required :decision_id, String

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] direction
      #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
      #   @return [Symbol]
      required :direction, ModernTreasury::Enum.new(:credit, :debit)

      # @!attribute [rw] effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #   @return [String]
      required :effective_date, String

      # @!attribute [rw] expires_at
      #   RFP payments require an expires_at. This value must be past the effective_date.
      #   @return [String]
      required :expires_at, String

      # @!attribute [rw] foreign_exchange_contract
      #   If present, indicates a specific foreign exchange contract number that has been generated by your financial institution.
      #   @return [String]
      required :foreign_exchange_contract, String

      # @!attribute [rw] foreign_exchange_indicator
      #   Indicates the type of FX transfer to initiate, can be either `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order currency matches the originating account currency.
      #   @return [Symbol]
      required :foreign_exchange_indicator, ModernTreasury::Enum.new(:fixed_to_variable, :variable_to_fixed)

      # @!attribute [rw] foreign_exchange_rate
      #   Associated serialized foreign exchange rate information.
      #   @return [ModernTreasury::Models::PaymentOrder::ForeignExchangeRate]
      required :foreign_exchange_rate, -> { ModernTreasury::Models::PaymentOrder::ForeignExchangeRate }

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the payment order.
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

      # @!attribute [rw] nsf_protected
      #   A boolean to determine if NSF Protection is enabled for this payment order. Note that this setting must also be turned on in your organization settings page.
      #   @return [Boolean]
      required :nsf_protected, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] originating_account_id
      #   The ID of one of your organization's internal accounts.
      #   @return [String]
      required :originating_account_id, String

      # @!attribute [rw] originating_party_name
      #   If present, this will replace your default company name on receiver's bank statement. This field can only be used for ACH payments currently. For ACH, only the first 16 characters of this string will be used. Any additional characters will be truncated.
      #   @return [String]
      required :originating_party_name, String

      # @!attribute [rw] priority
      #   Either `normal` or `high`. For ACH and EFT payments, `high` represents a same-day ACH or EFT transfer, respectively. For check payments, `high` can mean an overnight check rather than standard mail.
      #   @return [Symbol]
      required :priority, ModernTreasury::Enum.new(:high, :normal)

      # @!attribute [rw] process_after
      #   If present, Modern Treasury will not process the payment until after this time. If `process_after` is past the cutoff for `effective_date`, `process_after` will take precedence and `effective_date` will automatically update to reflect the earliest possible sending date after `process_after`. Format is ISO8601 timestamp.
      #   @return [String]
      required :process_after, String

      # @!attribute [rw] purpose
      #   For `wire`, this is usually the purpose which is transmitted via the "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3 digit CPA Code that will be attached to the payment.
      #   @return [String]
      required :purpose, String

      # @!attribute [rw] receiving_account_id
      #   The receiving account ID. Can be an `external_account` or `internal_account`.
      #   @return [String]
      required :receiving_account_id, String

      # @!attribute [rw] receiving_account_type
      #   @return [Symbol]
      required :receiving_account_type, ModernTreasury::Enum.new(:internal_account, :external_account)

      # @!attribute [rw] reference_numbers
      #   @return [Array<ModernTreasury::Models::PaymentOrder::ReferenceNumber>]
      required :reference_numbers,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::PaymentOrder::ReferenceNumber })

      # @!attribute [rw] remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire` payments the field will be passed through as the "Originator to Beneficiary Information", also known as OBI or Fedwire tag 6000.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] send_remittance_advice
      #   Send an email to the counterparty when the payment order is sent to the bank. If `null`, `send_remittance_advice` on the Counterparty is used.
      #   @return [Boolean]
      required :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute [rw] statement_descriptor
      #   An optional descriptor which will appear in the receiver's statement. For `check` payments this field will be used as the memo line. For `ach` the maximum length is 10 characters. Note that for ACH payments, the name on your bank account will be included automatically by the bank, so you can use the characters for other useful information. For `eft` the maximum length is 15 characters.
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [rw] status
      #   The current status of the payment order.
      #   @return [Symbol]
      required :status,
               ModernTreasury::Enum.new(
                 :approved,
                 :cancelled,
                 :completed,
                 :denied,
                 :failed,
                 :needs_approval,
                 :pending,
                 :processing,
                 :returned,
                 :reversed,
                 :sent
               )

      # @!attribute [rw] subtype
      #   An additional layer of classification for the type of payment order you are doing. This field is only used for `ach` payment orders currently. For `ach`  payment orders, the `subtype`  represents the SEC code. We currently support `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      #   @return [Symbol]
      required :subtype,
               ModernTreasury::Enum.new(
                 :"0C",
                 :"0N",
                 :"0S",
                 :CCD,
                 :CIE,
                 :CTX,
                 :IAT,
                 :PPD,
                 :TEL,
                 :WEB,
                 :au_becs,
                 :bacs,
                 :chats,
                 :dk_nets,
                 :eft,
                 :hu_ics,
                 :masav,
                 :mx_ccen,
                 :neft,
                 :nics,
                 :nz_becs,
                 :pl_elixir,
                 :ro_sent,
                 :se_bankgirot,
                 :sepa,
                 :sg_giro,
                 :sic,
                 :sknbi,
                 :zengin
               )

      # @!attribute [rw] transaction_ids
      #   The IDs of all the transactions associated to this payment order. Usually, you will only have a single transaction ID. However, if a payment order initially results in a Return, but gets redrafted and is later successfully completed, it can have many transactions.
      #   @return [Array<String>]
      required :transaction_ids, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] transaction_monitoring_enabled
      #   A flag that determines whether a payment order should go through transaction monitoring.
      #   @return [Boolean]
      required :transaction_monitoring_enabled, ModernTreasury::BooleanModel

      # @!attribute [rw] type
      #   One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
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

      # @!attribute [rw] ultimate_originating_account
      #   The account to which the originating of this payment should be attributed to. Can be a `virtual_account` or `internal_account`.
      #   @return [ModernTreasury::Models::InternalAccount|ModernTreasury::Models::VirtualAccount]
      required :ultimate_originating_account, ModernTreasury::Unknown

      # @!attribute [rw] ultimate_originating_account_id
      #   The ultimate originating account ID. Can be a `virtual_account` or `internal_account`.
      #   @return [String]
      required :ultimate_originating_account_id, String

      # @!attribute [rw] ultimate_originating_account_type
      #   @return [Symbol]
      required :ultimate_originating_account_type,
               ModernTreasury::Enum.new(:internal_account, :virtual_account)

      # @!attribute [rw] ultimate_originating_party_identifier
      #   Identifier of the ultimate originator of the payment order.
      #   @return [String]
      required :ultimate_originating_party_identifier, String

      # @!attribute [rw] ultimate_originating_party_name
      #   Name of the ultimate originator of the payment order.
      #   @return [String]
      required :ultimate_originating_party_name, String

      # @!attribute [rw] ultimate_receiving_party_identifier
      #   @return [String]
      required :ultimate_receiving_party_identifier, String

      # @!attribute [rw] ultimate_receiving_party_name
      #   @return [String]
      required :ultimate_receiving_party_name, String

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] vendor_attributes
      #   Additional vendor specific fields for this payment. Data must be represented as key-value pairs.
      #   @return [Object]
      required :vendor_attributes, ModernTreasury::Unknown

      # @!attribute [rw] vendor_failure_reason
      #   This field will be populated if a vendor failure occurs. Logic shouldn't be built on its value as it is free-form.
      #   @return [String]
      required :vendor_failure_reason, String

      class Accounting < BaseModel
        # @!attribute [rw] account_id
        #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :account_id, String

        # @!attribute [rw] class_id
        #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :class_id, String
      end

      class ForeignExchangeRate < BaseModel
        # @!attribute [rw] base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute [rw] base_currency
        #   Currency to convert, often called the "sell" currency.
        #   @return [Symbol]
        required :base_currency,
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

        # @!attribute [rw] exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute [rw] rate_string
        #   A string representation of the rate.
        #   @return [String]
        required :rate_string, String

        # @!attribute [rw] target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute [rw] target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #   @return [Symbol]
        required :target_currency,
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

        # @!attribute [rw] value
        #   The whole number component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :value, Integer
      end

      class ReferenceNumber < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] reference_number
        #   The vendor reference number.
        #   @return [String]
        required :reference_number, String

        # @!attribute [rw] reference_number_type
        #   The type of the reference number. Referring to the vendor payment id.
        #   @return [Symbol]
        required :reference_number_type,
                 ModernTreasury::Enum.new(
                   :ach_original_trace_number,
                   :ach_trace_number,
                   :bankprov_payment_activity_date,
                   :bankprov_payment_id,
                   :bnk_dev_prenotification_id,
                   :bnk_dev_transfer_id,
                   :bofa_end_to_end_id,
                   :bofa_transaction_id,
                   :check_number,
                   :citibank_reference_number,
                   :citibank_worldlink_clearing_system_reference_number,
                   :column_fx_quote_id,
                   :column_reversal_pair_transfer_id,
                   :column_transfer_id,
                   :cross_river_payment_id,
                   :cross_river_service_message,
                   :cross_river_transaction_id,
                   :currencycloud_conversion_id,
                   :currencycloud_payment_id,
                   :dc_bank_transaction_id,
                   :dwolla_transaction_id,
                   :eft_trace_number,
                   :evolve_transaction_id,
                   :fedwire_imad,
                   :fedwire_omad,
                   :first_republic_internal_id,
                   :goldman_sachs_collection_request_id,
                   :goldman_sachs_end_to_end_id,
                   :goldman_sachs_payment_request_id,
                   :goldman_sachs_request_id,
                   :goldman_sachs_unique_payment_id,
                   :interac_message_id,
                   :jpmc_ccn,
                   :jpmc_clearing_system_reference,
                   :jpmc_customer_reference_id,
                   :jpmc_end_to_end_id,
                   :jpmc_firm_root_id,
                   :jpmc_fx_trn_id,
                   :jpmc_p3_id,
                   :jpmc_payment_batch_id,
                   :jpmc_payment_information_id,
                   :jpmc_payment_returned_datetime,
                   :lob_check_id,
                   :other,
                   :partial_swift_mir,
                   :pnc_clearing_reference,
                   :pnc_instruction_id,
                   :pnc_multipayment_id,
                   :pnc_payment_trace_id,
                   :rspec_vendor_payment_id,
                   :rtp_instruction_id,
                   :signet_api_reference_id,
                   :signet_confirmation_id,
                   :signet_request_id,
                   :silvergate_payment_id,
                   :svb_end_to_end_id,
                   :svb_payment_id,
                   :svb_transaction_cleared_for_sanctions_review,
                   :svb_transaction_held_for_sanctions_review,
                   :swift_mir,
                   :swift_uetr,
                   :umb_product_partner_account_number,
                   :usbank_payment_id,
                   :usbank_pending_rtp_payment_id,
                   :usbank_posted_rtp_payment_id,
                   :wells_fargo_end_to_end_id,
                   :wells_fargo_payment_id,
                   :wells_fargo_trace_number,
                   :wells_fargo_uetr
                 )

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String
      end
    end
  end
end
