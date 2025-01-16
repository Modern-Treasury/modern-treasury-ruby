# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # return_object => {
    #   id: String,
    #   amount: Integer,
    #   code: enum: ModernTreasury::Models::ReturnObject::Code,
    #   created_at: Time,
    #   currency: enum: ModernTreasury::Models::Currency,
    #   **_
    # }
    # ```
    class ReturnObject < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute code
      #   The return code. For ACH returns, this is the required ACH return code.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Code, nil]
      required :code, enum: -> { ModernTreasury::Models::ReturnObject::Code }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency that this transaction is denominated in.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute current_return
      #   If the return's status is `returned`, this will include the return object's data that is returning this return.
      #
      #   @return [ModernTreasury::Models::ReturnObject, nil]
      required :current_return, -> { ModernTreasury::Models::ReturnObject }

      # @!attribute date_of_death
      #   If the return code is `R14` or `R15` this is the date the deceased counterparty passed away.
      #
      #   @return [Date, nil]
      required :date_of_death, Date

      # @!attribute failure_reason
      #   If an originating return failed to be processed by the bank, a description of the failure reason will be available.
      #
      #   @return [String, nil]
      required :failure_reason, String

      # @!attribute internal_account_id
      #   The ID of the relevant Internal Account.
      #
      #   @return [String, nil]
      required :internal_account_id, String

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the return.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute reason
      #   Often the bank will provide an explanation for the return, which is a short human readable string.
      #
      #   @return [String, nil]
      required :reason, String

      # @!attribute reference_numbers
      #   An array of Payment Reference objects.
      #
      #   @return [Array<ModernTreasury::Models::ReturnObject::ReferenceNumber>]
      required :reference_numbers,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::ReturnObject::ReferenceNumber] }

      # @!attribute returnable_id
      #   The ID of the object being returned or `null`.
      #
      #   @return [String, nil]
      required :returnable_id, String

      # @!attribute returnable_type
      #   The type of object being returned or `null`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::ReturnableType, nil]
      required :returnable_type, enum: -> { ModernTreasury::Models::ReturnObject::ReturnableType }

      # @!attribute role
      #   The role of the return, can be `originating` or `receiving`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Role]
      required :role, enum: -> { ModernTreasury::Models::ReturnObject::Role }

      # @!attribute status
      #   The current status of the return.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Status]
      required :status, enum: -> { ModernTreasury::Models::ReturnObject::Status }

      # @!attribute transaction_id
      #   The ID of the relevant Transaction or `null`.
      #
      #   @return [String, nil]
      required :transaction_id, String

      # @!attribute transaction_line_item_id
      #   The ID of the relevant Transaction Line Item or `null`.
      #
      #   @return [String, nil]
      required :transaction_line_item_id, String

      # @!attribute type
      #   The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`, `interac`, `manual`, `paper_item`, `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Type]
      required :type, enum: -> { ModernTreasury::Models::ReturnObject::Type }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute additional_information
      #   Some returns may include additional information from the bank. In these cases, this string will be present.
      #
      #   @return [String, nil]
      optional :additional_information, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
      #   #   as 1000.
      #   #
      #   # @param code [String, nil] The return code. For ACH returns, this is the required ACH return code.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param currency [String] Currency that this transaction is denominated in.
      #   #
      #   # @param current_return [Object, nil] If the return's status is `returned`, this will include the return object's data
      #   #   that is returning this return.
      #   #
      #   # @param date_of_death [String, nil] If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   #   passed away.
      #   #
      #   # @param failure_reason [String, nil] If an originating return failed to be processed by the bank, a description of
      #   #   the failure reason will be available.
      #   #
      #   # @param internal_account_id [String, nil] The ID of the relevant Internal Account.
      #   #
      #   # @param ledger_transaction_id [String, nil] The ID of the ledger transaction linked to the return.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param reason [String, nil] Often the bank will provide an explanation for the return, which is a short
      #   #   human readable string.
      #   #
      #   # @param reference_numbers [Array<ModernTreasury::Models::ReturnObject::ReferenceNumber>] An array of Payment Reference objects.
      #   #
      #   # @param returnable_id [String, nil] The ID of the object being returned or `null`.
      #   #
      #   # @param returnable_type [String, nil] The type of object being returned or `null`.
      #   #
      #   # @param role [String] The role of the return, can be `originating` or `receiving`.
      #   #
      #   # @param status [String] The current status of the return.
      #   #
      #   # @param transaction_id [String, nil] The ID of the relevant Transaction or `null`.
      #   #
      #   # @param transaction_line_item_id [String, nil] The ID of the relevant Transaction Line Item or `null`.
      #   #
      #   # @param type [String] The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      #   #   `interac`, `manual`, `paper_item`, `wire`.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param additional_information [String, nil] Some returns may include additional information from the bank. In these cases,
      #   #   this string will be present.
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     code:,
      #     created_at:,
      #     currency:,
      #     current_return:,
      #     date_of_death:,
      #     failure_reason:,
      #     internal_account_id:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     object:,
      #     reason:,
      #     reference_numbers:,
      #     returnable_id:,
      #     returnable_type:,
      #     role:,
      #     status:,
      #     transaction_id:,
      #     transaction_line_item_id:,
      #     type:,
      #     updated_at:,
      #     additional_information: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The return code. For ACH returns, this is the required ACH return code.
      #
      # @example
      # ```ruby
      # case code
      # in :"901"
      #   # ...
      # in :"902"
      #   # ...
      # in :"903"
      #   # ...
      # in :"904"
      #   # ...
      # in :"905"
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Code < ModernTreasury::Enum
        NUMBER_901 = :"901"
        NUMBER_902 = :"902"
        NUMBER_903 = :"903"
        NUMBER_904 = :"904"
        NUMBER_905 = :"905"
        NUMBER_907 = :"907"
        NUMBER_908 = :"908"
        NUMBER_909 = :"909"
        NUMBER_910 = :"910"
        NUMBER_911 = :"911"
        NUMBER_912 = :"912"
        NUMBER_914 = :"914"
        C01 = :C01
        C02 = :C02
        C03 = :C03
        C05 = :C05
        C06 = :C06
        C07 = :C07
        C08 = :C08
        C09 = :C09
        C13 = :C13
        C14 = :C14
        R01 = :R01
        R02 = :R02
        R03 = :R03
        R04 = :R04
        R05 = :R05
        R06 = :R06
        R07 = :R07
        R08 = :R08
        R09 = :R09
        R10 = :R10
        R11 = :R11
        R12 = :R12
        R14 = :R14
        R15 = :R15
        R16 = :R16
        R17 = :R17
        R20 = :R20
        R21 = :R21
        R22 = :R22
        R23 = :R23
        R24 = :R24
        R29 = :R29
        R31 = :R31
        R33 = :R33
        R37 = :R37
        R38 = :R38
        R39 = :R39
        R51 = :R51
        R52 = :R52
        R53 = :R53
        CURRENCYCLOUD = :currencycloud

        finalize!
      end

      # @example
      # ```ruby
      # reference_number => {
      #   id: String,
      #   created_at: Time,
      #   live_mode: ModernTreasury::BooleanModel,
      #   object: String,
      #   reference_number: String,
      #   **_
      # }
      # ```
      class ReferenceNumber < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute reference_number
        #   The vendor reference number.
        #
        #   @return [String]
        required :reference_number, String

        # @!attribute reference_number_type
        #   The type of the reference number. Referring to the vendor payment id.
        #
        #   @return [Symbol, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType]
        required :reference_number_type,
                 enum: -> { ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param object [String]
        #   #
        #   # @param reference_number [String] The vendor reference number.
        #   #
        #   # @param reference_number_type [String] The type of the reference number. Referring to the vendor payment id.
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(id:, created_at:, live_mode:, object:, reference_number:, reference_number_type:, updated_at:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of the reference number. Referring to the vendor payment id.
        #
        # @example
        # ```ruby
        # case reference_number_type
        # in :ach_original_trace_number
        #   # ...
        # in :ach_trace_number
        #   # ...
        # in :bankprov_payment_activity_date
        #   # ...
        # in :bankprov_payment_id
        #   # ...
        # in :bnk_dev_prenotification_id
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class ReferenceNumberType < ModernTreasury::Enum
          ACH_ORIGINAL_TRACE_NUMBER = :ach_original_trace_number
          ACH_TRACE_NUMBER = :ach_trace_number
          BANKPROV_PAYMENT_ACTIVITY_DATE = :bankprov_payment_activity_date
          BANKPROV_PAYMENT_ID = :bankprov_payment_id
          BNK_DEV_PRENOTIFICATION_ID = :bnk_dev_prenotification_id
          BNK_DEV_TRANSFER_ID = :bnk_dev_transfer_id
          BOFA_END_TO_END_ID = :bofa_end_to_end_id
          BOFA_TRANSACTION_ID = :bofa_transaction_id
          CHECK_NUMBER = :check_number
          CITIBANK_REFERENCE_NUMBER = :citibank_reference_number
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER = :citibank_worldlink_clearing_system_reference_number
          COLUMN_FX_QUOTE_ID = :column_fx_quote_id
          COLUMN_REVERSAL_PAIR_TRANSFER_ID = :column_reversal_pair_transfer_id
          COLUMN_TRANSFER_ID = :column_transfer_id
          CROSS_RIVER_PAYMENT_ID = :cross_river_payment_id
          CROSS_RIVER_SERVICE_MESSAGE = :cross_river_service_message
          CROSS_RIVER_TRANSACTION_ID = :cross_river_transaction_id
          CURRENCYCLOUD_CONVERSION_ID = :currencycloud_conversion_id
          CURRENCYCLOUD_PAYMENT_ID = :currencycloud_payment_id
          DC_BANK_TRANSACTION_ID = :dc_bank_transaction_id
          DWOLLA_TRANSACTION_ID = :dwolla_transaction_id
          EFT_TRACE_NUMBER = :eft_trace_number
          EVOLVE_TRANSACTION_ID = :evolve_transaction_id
          FEDWIRE_IMAD = :fedwire_imad
          FEDWIRE_OMAD = :fedwire_omad
          FIRST_REPUBLIC_INTERNAL_ID = :first_republic_internal_id
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID = :goldman_sachs_collection_request_id
          GOLDMAN_SACHS_END_TO_END_ID = :goldman_sachs_end_to_end_id
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID = :goldman_sachs_payment_request_id
          GOLDMAN_SACHS_REQUEST_ID = :goldman_sachs_request_id
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID = :goldman_sachs_unique_payment_id
          INTERAC_MESSAGE_ID = :interac_message_id
          JPMC_CCN = :jpmc_ccn
          JPMC_CLEARING_SYSTEM_REFERENCE = :jpmc_clearing_system_reference
          JPMC_CUSTOMER_REFERENCE_ID = :jpmc_customer_reference_id
          JPMC_END_TO_END_ID = :jpmc_end_to_end_id
          JPMC_FIRM_ROOT_ID = :jpmc_firm_root_id
          JPMC_FX_TRN_ID = :jpmc_fx_trn_id
          JPMC_P3_ID = :jpmc_p3_id
          JPMC_PAYMENT_BATCH_ID = :jpmc_payment_batch_id
          JPMC_PAYMENT_INFORMATION_ID = :jpmc_payment_information_id
          JPMC_PAYMENT_RETURNED_DATETIME = :jpmc_payment_returned_datetime
          LOB_CHECK_ID = :lob_check_id
          OTHER = :other
          PARTIAL_SWIFT_MIR = :partial_swift_mir
          PNC_CLEARING_REFERENCE = :pnc_clearing_reference
          PNC_INSTRUCTION_ID = :pnc_instruction_id
          PNC_MULTIPAYMENT_ID = :pnc_multipayment_id
          PNC_PAYMENT_TRACE_ID = :pnc_payment_trace_id
          PNC_TRANSACTION_REFERENCE_NUMBER = :pnc_transaction_reference_number
          RSPEC_VENDOR_PAYMENT_ID = :rspec_vendor_payment_id
          RTP_INSTRUCTION_ID = :rtp_instruction_id
          SIGNET_API_REFERENCE_ID = :signet_api_reference_id
          SIGNET_CONFIRMATION_ID = :signet_confirmation_id
          SIGNET_REQUEST_ID = :signet_request_id
          SILVERGATE_PAYMENT_ID = :silvergate_payment_id
          SVB_END_TO_END_ID = :svb_end_to_end_id
          SVB_PAYMENT_ID = :svb_payment_id
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW = :svb_transaction_cleared_for_sanctions_review
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW = :svb_transaction_held_for_sanctions_review
          SWIFT_MIR = :swift_mir
          SWIFT_UETR = :swift_uetr
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER = :umb_product_partner_account_number
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID = :usbank_payment_application_reference_id
          USBANK_PAYMENT_ID = :usbank_payment_id
          USBANK_PENDING_RTP_PAYMENT_ID = :usbank_pending_rtp_payment_id
          USBANK_POSTED_RTP_PAYMENT_ID = :usbank_posted_rtp_payment_id
          WELLS_FARGO_END_TO_END_ID = :wells_fargo_end_to_end_id
          WELLS_FARGO_PAYMENT_ID = :wells_fargo_payment_id
          WELLS_FARGO_TRACE_NUMBER = :wells_fargo_trace_number
          WELLS_FARGO_UETR = :wells_fargo_uetr

          finalize!
        end
      end

      # The type of object being returned or `null`.
      #
      # @example
      # ```ruby
      # case returnable_type
      # in :incoming_payment_detail
      #   # ...
      # in :paper_item
      #   # ...
      # in :payment_order
      #   # ...
      # in :return
      #   # ...
      # in :reversal
      #   # ...
      # end
      # ```
      class ReturnableType < ModernTreasury::Enum
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!
      end

      # The role of the return, can be `originating` or `receiving`.
      #
      # @example
      # ```ruby
      # case role
      # in :originating
      #   # ...
      # in :receiving
      #   # ...
      # end
      # ```
      class Role < ModernTreasury::Enum
        ORIGINATING = :originating
        RECEIVING = :receiving

        finalize!
      end

      # The current status of the return.
      #
      # @example
      # ```ruby
      # case status
      # in :completed
      #   # ...
      # in :failed
      #   # ...
      # in :pending
      #   # ...
      # in :processing
      #   # ...
      # in :returned
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        FAILED = :failed
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        SENT = :sent

        finalize!
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`, `interac`, `manual`, `paper_item`, `wire`.
      #
      # @example
      # ```ruby
      # case type
      # in :ach
      #   # ...
      # in :ach_noc
      #   # ...
      # in :au_becs
      #   # ...
      # in :bacs
      #   # ...
      # in :book
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Type < ModernTreasury::Enum
        ACH = :ach
        ACH_NOC = :ach_noc
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CHECK = :check
        CROSS_BORDER = :cross_border
        EFT = :eft
        INTERAC = :interac
        MANUAL = :manual
        PAPER_ITEM = :paper_item
        SEPA = :sepa
        WIRE = :wire

        finalize!
      end
    end
  end
end
