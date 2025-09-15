# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Returns#create
    class ReturnObject < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute code
      #   The return code. For ACH returns, this is the required ACH return code.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Code, nil]
      required :code, enum: -> { ModernTreasury::ReturnObject::Code }, nil?: true

      # @!attribute corrections
      #   Only relevant for ACH NOC returns. This is an object containing all of the new
      #   and corrected information provided by the bank that was previously incorrect on
      #   the original outgoing payment.
      #
      #   @return [ModernTreasury::Models::ReturnObject::Corrections, nil]
      required :corrections, -> { ModernTreasury::ReturnObject::Corrections }, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency that this transaction is denominated in.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute current_return
      #   If the return's status is `returned`, this will include the return object's data
      #   that is returning this return.
      #
      #   @return [ModernTreasury::Models::ReturnObject, nil]
      required :current_return, -> { ModernTreasury::ReturnObject }, nil?: true

      # @!attribute date_of_death
      #   If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   passed away.
      #
      #   @return [Date, nil]
      required :date_of_death, Date, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute failure_reason
      #   If an originating return failed to be processed by the bank, a description of
      #   the failure reason will be available.
      #
      #   @return [String, nil]
      required :failure_reason, String, nil?: true

      # @!attribute internal_account_id
      #   The ID of the relevant Internal Account.
      #
      #   @return [String, nil]
      required :internal_account_id, String, nil?: true

      # @!attribute ledger_transaction_id
      #   The ID of the ledger transaction linked to the return.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute reason
      #   Often the bank will provide an explanation for the return, which is a short
      #   human readable string.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute reference_numbers
      #   An array of Payment Reference objects.
      #
      #   @return [Array<ModernTreasury::Models::ReturnObject::ReferenceNumber>]
      required :reference_numbers,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReturnObject::ReferenceNumber] }

      # @!attribute returnable_id
      #   The ID of the object being returned or `null`.
      #
      #   @return [String, nil]
      required :returnable_id, String, nil?: true

      # @!attribute returnable_type
      #   The type of object being returned or `null`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::ReturnableType, nil]
      required :returnable_type, enum: -> { ModernTreasury::ReturnObject::ReturnableType }, nil?: true

      # @!attribute role
      #   The role of the return, can be `originating` or `receiving`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Role]
      required :role, enum: -> { ModernTreasury::ReturnObject::Role }

      # @!attribute status
      #   The current status of the return.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Status]
      required :status, enum: -> { ModernTreasury::ReturnObject::Status }

      # @!attribute transaction_id
      #   The ID of the relevant Transaction or `null`.
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute transaction_line_item_id
      #   The ID of the relevant Transaction Line Item or `null`.
      #
      #   @return [String, nil]
      required :transaction_line_item_id, String, nil?: true

      # @!attribute type
      #   The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      #   `interac`, `manual`, `paper_item`, `wire`.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnObject::Type]
      required :type, enum: -> { ModernTreasury::ReturnObject::Type }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute additional_information
      #   Some returns may include additional information from the bank. In these cases,
      #   this string will be present.
      #
      #   @return [String, nil]
      optional :additional_information, String, nil?: true

      # @!attribute data
      #   The raw data from the return file that we get from the bank.
      #
      #   @return [Object, nil]
      optional :data, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!method initialize(id:, amount:, code:, corrections:, created_at:, currency:, current_return:, date_of_death:, discarded_at:, failure_reason:, internal_account_id:, ledger_transaction_id:, live_mode:, object:, reason:, reference_numbers:, returnable_id:, returnable_type:, role:, status:, transaction_id:, transaction_line_item_id:, type:, updated_at:, additional_information: nil, data: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ReturnObject} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param code [Symbol, ModernTreasury::Models::ReturnObject::Code, nil] The return code. For ACH returns, this is the required ACH return code.
      #
      #   @param corrections [ModernTreasury::Models::ReturnObject::Corrections, nil] Only relevant for ACH NOC returns. This is an object containing all of the new a
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] Currency that this transaction is denominated in.
      #
      #   @param current_return [ModernTreasury::Models::ReturnObject, nil] If the return's status is `returned`, this will include the return object's data
      #
      #   @param date_of_death [Date, nil] If the return code is `R14` or `R15` this is the date the deceased counterparty
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param failure_reason [String, nil] If an originating return failed to be processed by the bank, a description of th
      #
      #   @param internal_account_id [String, nil] The ID of the relevant Internal Account.
      #
      #   @param ledger_transaction_id [String, nil] The ID of the ledger transaction linked to the return.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param reason [String, nil] Often the bank will provide an explanation for the return, which is a short huma
      #
      #   @param reference_numbers [Array<ModernTreasury::Models::ReturnObject::ReferenceNumber>] An array of Payment Reference objects.
      #
      #   @param returnable_id [String, nil] The ID of the object being returned or `null`.
      #
      #   @param returnable_type [Symbol, ModernTreasury::Models::ReturnObject::ReturnableType, nil] The type of object being returned or `null`.
      #
      #   @param role [Symbol, ModernTreasury::Models::ReturnObject::Role] The role of the return, can be `originating` or `receiving`.
      #
      #   @param status [Symbol, ModernTreasury::Models::ReturnObject::Status] The current status of the return.
      #
      #   @param transaction_id [String, nil] The ID of the relevant Transaction or `null`.
      #
      #   @param transaction_line_item_id [String, nil] The ID of the relevant Transaction Line Item or `null`.
      #
      #   @param type [Symbol, ModernTreasury::Models::ReturnObject::Type] The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`, `
      #
      #   @param updated_at [Time]
      #
      #   @param additional_information [String, nil] Some returns may include additional information from the bank. In these cases, t
      #
      #   @param data [Object, nil] The raw data from the return file that we get from the bank.

      # The return code. For ACH returns, this is the required ACH return code.
      #
      # @see ModernTreasury::Models::ReturnObject#code
      module Code
        extend ModernTreasury::Internal::Type::Enum

        CODE_901 = :"901"
        CODE_902 = :"902"
        CODE_903 = :"903"
        CODE_904 = :"904"
        CODE_905 = :"905"
        CODE_907 = :"907"
        CODE_908 = :"908"
        CODE_909 = :"909"
        CODE_910 = :"910"
        CODE_911 = :"911"
        CODE_912 = :"912"
        CODE_914 = :"914"
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
        R13 = :R13
        R14 = :R14
        R15 = :R15
        R16 = :R16
        R17 = :R17
        R18 = :R18
        R19 = :R19
        R20 = :R20
        R21 = :R21
        R22 = :R22
        R23 = :R23
        R24 = :R24
        R25 = :R25
        R26 = :R26
        R27 = :R27
        R28 = :R28
        R29 = :R29
        R30 = :R30
        R31 = :R31
        R32 = :R32
        R33 = :R33
        R34 = :R34
        R35 = :R35
        R36 = :R36
        R37 = :R37
        R38 = :R38
        R39 = :R39
        R40 = :R40
        R41 = :R41
        R42 = :R42
        R43 = :R43
        R44 = :R44
        R45 = :R45
        R46 = :R46
        R47 = :R47
        R50 = :R50
        R51 = :R51
        R52 = :R52
        R53 = :R53
        R61 = :R61
        R62 = :R62
        R67 = :R67
        R68 = :R68
        R69 = :R69
        R70 = :R70
        R71 = :R71
        R72 = :R72
        R73 = :R73
        R74 = :R74
        R75 = :R75
        R76 = :R76
        R77 = :R77
        R80 = :R80
        R81 = :R81
        R82 = :R82
        R83 = :R83
        R84 = :R84
        R85 = :R85
        CURRENCYCLOUD = :currencycloud

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::Models::ReturnObject#corrections
      class Corrections < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_number
        #   The updated account number that should replace the one originally used on the
        #   outgoing payment.
        #
        #   @return [String, nil]
        optional :account_number, String, nil?: true

        # @!attribute company_id
        #   The updated company ID that should replace the one originally used on the
        #   outgoing payment.
        #
        #   @return [String, nil]
        optional :company_id, String, nil?: true

        # @!attribute company_name
        #   The updated company name that should replace the one originally used on the
        #   outgoing payment.
        #
        #   @return [String, nil]
        optional :company_name, String, nil?: true

        # @!attribute individual_identification_number
        #   The updated individual identification number that should replace the one
        #   originally used on the outgoing payment.
        #
        #   @return [String, nil]
        optional :individual_identification_number, String, nil?: true

        # @!attribute routing_number
        #   The updated routing number that should replace the one originally used on the
        #   outgoing payment.
        #
        #   @return [String, nil]
        optional :routing_number, String, nil?: true

        # @!attribute transaction_code
        #   The updated account type code that should replace the one originally used on the
        #   outgoing payment.
        #
        #   @return [String, nil]
        optional :transaction_code, String, nil?: true

        # @!method initialize(account_number: nil, company_id: nil, company_name: nil, individual_identification_number: nil, routing_number: nil, transaction_code: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::ReturnObject::Corrections} for more details.
        #
        #   Only relevant for ACH NOC returns. This is an object containing all of the new
        #   and corrected information provided by the bank that was previously incorrect on
        #   the original outgoing payment.
        #
        #   @param account_number [String, nil] The updated account number that should replace the one originally used on the ou
        #
        #   @param company_id [String, nil] The updated company ID that should replace the one originally used on the outgoi
        #
        #   @param company_name [String, nil] The updated company name that should replace the one originally used on the outg
        #
        #   @param individual_identification_number [String, nil] The updated individual identification number that should replace the one origina
        #
        #   @param routing_number [String, nil] The updated routing number that should replace the one originally used on the ou
        #
        #   @param transaction_code [String, nil] The updated account type code that should replace the one originally used on the
      end

      class ReferenceNumber < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

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
                 enum: -> { ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, live_mode:, object:, reference_number:, reference_number_type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::ReturnObject::ReferenceNumber} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param reference_number [String] The vendor reference number.
        #
        #   @param reference_number_type [Symbol, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType] The type of the reference number. Referring to the vendor payment id.
        #
        #   @param updated_at [Time]

        # The type of the reference number. Referring to the vendor payment id.
        #
        # @see ModernTreasury::Models::ReturnObject::ReferenceNumber#reference_number_type
        module ReferenceNumberType
          extend ModernTreasury::Internal::Type::Enum

          ACH_ORIGINAL_TRACE_NUMBER = :ach_original_trace_number
          ACH_TRACE_NUMBER = :ach_trace_number
          BANKPROV_PAYMENT_ACTIVITY_DATE = :bankprov_payment_activity_date
          BANKPROV_PAYMENT_ID = :bankprov_payment_id
          BNK_DEV_PRENOTIFICATION_ID = :bnk_dev_prenotification_id
          BNK_DEV_TRANSFER_ID = :bnk_dev_transfer_id
          BNY_MELLON_TRANSACTION_REFERENCE_NUMBER = :bny_mellon_transaction_reference_number
          BOFA_END_TO_END_ID = :bofa_end_to_end_id
          BOFA_TRANSACTION_ID = :bofa_transaction_id
          BRALE_TRANSFER_ID = :brale_transfer_id
          BRIDGE_DESTINATION_TRANSACTION_HASH = :bridge_destination_transaction_hash
          BRIDGE_SOURCE_TRANSACTION_HASH = :bridge_source_transaction_hash
          BRIDGE_TRANSFER_ID = :bridge_transfer_id
          CHECK_NUMBER = :check_number
          CITIBANK_REFERENCE_NUMBER = :citibank_reference_number
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER =
            :citibank_worldlink_clearing_system_reference_number
          COLUMN_FX_QUOTE_ID = :column_fx_quote_id
          COLUMN_REVERSAL_PAIR_TRANSFER_ID = :column_reversal_pair_transfer_id
          COLUMN_TRANSFER_ID = :column_transfer_id
          CROSS_RIVER_CORE_TRANSACTION_ID = :cross_river_core_transaction_id
          CROSS_RIVER_FED_BATCH_ID = :cross_river_fed_batch_id
          CROSS_RIVER_PAYMENT_ID = :cross_river_payment_id
          CROSS_RIVER_SERVICE_MESSAGE = :cross_river_service_message
          CROSS_RIVER_TRANSACTION_ID = :cross_river_transaction_id
          CURRENCYCLOUD_CONVERSION_ID = :currencycloud_conversion_id
          CURRENCYCLOUD_PAYMENT_ID = :currencycloud_payment_id
          DC_BANK_TRANSACTION_ID = :dc_bank_transaction_id
          EFT_TRACE_NUMBER = :eft_trace_number
          EVOLVE_CORE_BATCH = :evolve_core_batch
          EVOLVE_CORE_FILE_KEY = :evolve_core_file_key
          EVOLVE_CORE_SEQ = :evolve_core_seq
          EVOLVE_TRANSACTION_ID = :evolve_transaction_id
          FAKE_VENDOR_PAYMENT_ID = :fake_vendor_payment_id
          FEDWIRE_IMAD = :fedwire_imad
          FEDWIRE_OMAD = :fedwire_omad
          FIRST_REPUBLIC_INTERNAL_ID = :first_republic_internal_id
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID = :goldman_sachs_collection_request_id
          GOLDMAN_SACHS_END_TO_END_ID = :goldman_sachs_end_to_end_id
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID = :goldman_sachs_payment_request_id
          GOLDMAN_SACHS_REQUEST_ID = :goldman_sachs_request_id
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID = :goldman_sachs_unique_payment_id
          HIFI_OFFRAMP_ID = :hifi_offramp_id
          HIFI_TRANSFER_ID = :hifi_transfer_id
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
          JPMC_TRANSACTION_REFERENCE_NUMBER = :jpmc_transaction_reference_number
          LOB_CHECK_ID = :lob_check_id
          MT_FOF_TRANSFER_ID = :mt_fof_transfer_id
          OTHER = :other
          PARTIAL_SWIFT_MIR = :partial_swift_mir
          PNC_CLEARING_REFERENCE = :pnc_clearing_reference
          PNC_INSTRUCTION_ID = :pnc_instruction_id
          PNC_MULTIPAYMENT_ID = :pnc_multipayment_id
          PNC_PAYMENT_TRACE_ID = :pnc_payment_trace_id
          PNC_REQUEST_FOR_PAYMENT_ID = :pnc_request_for_payment_id
          PNC_TRANSACTION_REFERENCE_NUMBER = :pnc_transaction_reference_number
          RBC_WIRE_REFERENCE_ID = :rbc_wire_reference_id
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
          WESTERN_ALLIANCE_PAYMENT_ID = :western_alliance_payment_id
          WESTERN_ALLIANCE_TRANSACTION_ID = :western_alliance_transaction_id
          WESTERN_ALLIANCE_WIRE_CONFIRMATION_NUMBER = :western_alliance_wire_confirmation_number

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The type of object being returned or `null`.
      #
      # @see ModernTreasury::Models::ReturnObject#returnable_type
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The role of the return, can be `originating` or `receiving`.
      #
      # @see ModernTreasury::Models::ReturnObject#role
      module Role
        extend ModernTreasury::Internal::Type::Enum

        ORIGINATING = :originating
        RECEIVING = :receiving

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the return.
      #
      # @see ModernTreasury::Models::ReturnObject#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        COMPLETED = :completed
        FAILED = :failed
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        SENT = :sent

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      # `interac`, `manual`, `paper_item`, `wire`.
      #
      # @see ModernTreasury::Models::ReturnObject#type
      module Type
        extend ModernTreasury::Internal::Type::Enum

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
        SEPA = :sepa
        WIRE = :wire

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
