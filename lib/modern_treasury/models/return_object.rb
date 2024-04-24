# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReturnObject < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] code
      #   The return code. For ACH returns, this is the required ACH return code.
      #   @return [Symbol]
      required :code,
               ModernTreasury::Enum.new(
                 :"901",
                 :"902",
                 :"903",
                 :"904",
                 :"905",
                 :"907",
                 :"908",
                 :"909",
                 :"910",
                 :"911",
                 :"912",
                 :"914",
                 :C01,
                 :C02,
                 :C03,
                 :C05,
                 :C06,
                 :C07,
                 :C08,
                 :C09,
                 :C13,
                 :C14,
                 :R01,
                 :R02,
                 :R03,
                 :R04,
                 :R05,
                 :R06,
                 :R07,
                 :R08,
                 :R09,
                 :R10,
                 :R11,
                 :R12,
                 :R14,
                 :R15,
                 :R16,
                 :R17,
                 :R20,
                 :R21,
                 :R22,
                 :R23,
                 :R24,
                 :R29,
                 :R31,
                 :R33,
                 :R37,
                 :R38,
                 :R39,
                 :R51,
                 :R52,
                 :R53,
                 :currencycloud
               )

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   Currency that this transaction is denominated in.
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
      #   If the return's status is `returned`, this will include the return object's data that is returning this return.
      #   @return [ModernTreasury::Models::ReturnObject]
      required :current_return, -> { ModernTreasury::Models::ReturnObject }

      # @!attribute [rw] date_of_death
      #   If the return code is `R14` or `R15` this is the date the deceased counterparty passed away.
      #   @return [String]
      required :date_of_death, String

      # @!attribute [rw] failure_reason
      #   If an originating return failed to be processed by the bank, a description of the failure reason will be available.
      #   @return [String]
      required :failure_reason, String

      # @!attribute [rw] internal_account_id
      #   The ID of the relevant Internal Account.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the return.
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] reason
      #   Often the bank will provide an explanation for the return, which is a short human readable string.
      #   @return [String]
      required :reason, String

      # @!attribute [rw] reference_numbers
      #   An array of Payment Reference objects.
      #   @return [Array<ModernTreasury::Models::ReturnObject::ReferenceNumber>]
      required :reference_numbers,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ReturnObject::ReferenceNumber })

      # @!attribute [rw] returnable_id
      #   The ID of the object being returned or `null`.
      #   @return [String]
      required :returnable_id, String

      # @!attribute [rw] returnable_type
      #   The type of object being returned or `null`.
      #   @return [Symbol]
      required :returnable_type,
               ModernTreasury::Enum.new(
                 :incoming_payment_detail,
                 :paper_item,
                 :payment_order,
                 :return,
                 :reversal
               )

      # @!attribute [rw] role
      #   The role of the return, can be `originating` or `receiving`.
      #   @return [Symbol]
      required :role, ModernTreasury::Enum.new(:originating, :receiving)

      # @!attribute [rw] status
      #   The current status of the return.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:completed, :failed, :pending, :processing, :returned, :sent)

      # @!attribute [rw] transaction_id
      #   The ID of the relevant Transaction or `null`.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] transaction_line_item_id
      #   The ID of the relevant Transaction Line Item or `null`.
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute [rw] type
      #   The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`, `interac`, `manual`, `paper_item`, `wire`.
      #   @return [Symbol]
      required :type,
               ModernTreasury::Enum.new(
                 :ach,
                 :ach_noc,
                 :au_becs,
                 :bacs,
                 :book,
                 :check,
                 :cross_border,
                 :eft,
                 :interac,
                 :manual,
                 :paper_item,
                 :sepa,
                 :wire
               )

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] additional_information
      #   Some returns may include additional information from the bank. In these cases, this string will be present.
      #   @return [String]
      optional :additional_information, String

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
                   :wells_fargo_payment_id,
                   :wells_fargo_trace_number
                 )

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String
      end
    end
  end
end
