# typed: strong

module ModernTreasury
  module Models
    class ReturnObject < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The return code. For ACH returns, this is the required ACH return code.
      sig { returns(T.nilable(Symbol)) }
      def code
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def code=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Currency that this transaction is denominated in.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # If the return's status is `returned`, this will include the return object's data
      #   that is returning this return.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject)) }
      def current_return
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnObject))
          .returns(T.nilable(ModernTreasury::Models::ReturnObject))
      end
      def current_return=(_)
      end

      # If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   passed away.
      sig { returns(T.nilable(Date)) }
      def date_of_death
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_of_death=(_)
      end

      # If an originating return failed to be processed by the bank, a description of
      #   the failure reason will be available.
      sig { returns(T.nilable(String)) }
      def failure_reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def failure_reason=(_)
      end

      # The ID of the relevant Internal Account.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def internal_account_id=(_)
      end

      # The ID of the ledger transaction linked to the return.
      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # Often the bank will provide an explanation for the return, which is a short
      #   human readable string.
      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      # An array of Payment Reference objects.
      sig { returns(T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber]) }
      def reference_numbers
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber])
          .returns(T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber])
      end
      def reference_numbers=(_)
      end

      # The ID of the object being returned or `null`.
      sig { returns(T.nilable(String)) }
      def returnable_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def returnable_id=(_)
      end

      # The type of object being returned or `null`.
      sig { returns(T.nilable(Symbol)) }
      def returnable_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def returnable_type=(_)
      end

      # The role of the return, can be `originating` or `receiving`.
      sig { returns(Symbol) }
      def role
      end

      sig { params(_: Symbol).returns(Symbol) }
      def role=(_)
      end

      # The current status of the return.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The ID of the relevant Transaction or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # The ID of the relevant Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      #   `interac`, `manual`, `paper_item`, `wire`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Some returns may include additional information from the bank. In these cases,
      #   this string will be present.
      sig { returns(T.nilable(String)) }
      def additional_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def additional_information=(_)
      end

      sig do
        params(
          id: String,
          amount: Integer,
          code: T.nilable(Symbol),
          created_at: Time,
          currency: Symbol,
          current_return: T.nilable(ModernTreasury::Models::ReturnObject),
          date_of_death: T.nilable(Date),
          failure_reason: T.nilable(String),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          reason: T.nilable(String),
          reference_numbers: T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber],
          returnable_id: T.nilable(String),
          returnable_type: T.nilable(Symbol),
          role: Symbol,
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: Symbol,
          updated_at: Time,
          additional_information: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        code:,
        created_at:,
        currency:,
        current_return:,
        date_of_death:,
        failure_reason:,
        internal_account_id:,
        ledger_transaction_id:,
        live_mode:,
        object:,
        reason:,
        reference_numbers:,
        returnable_id:,
        returnable_type:,
        role:,
        status:,
        transaction_id:,
        transaction_line_item_id:,
        type:,
        updated_at:,
        additional_information: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              code: T.nilable(Symbol),
              created_at: Time,
              currency: Symbol,
              current_return: T.nilable(ModernTreasury::Models::ReturnObject),
              date_of_death: T.nilable(Date),
              failure_reason: T.nilable(String),
              internal_account_id: T.nilable(String),
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              reason: T.nilable(String),
              reference_numbers: T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber],
              returnable_id: T.nilable(String),
              returnable_type: T.nilable(Symbol),
              role: Symbol,
              status: Symbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              type: Symbol,
              updated_at: Time,
              additional_information: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # The return code. For ACH returns, this is the required ACH return code.
      class Code < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      class ReferenceNumber < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The vendor reference number.
        sig { returns(String) }
        def reference_number
        end

        sig { params(_: String).returns(String) }
        def reference_number=(_)
        end

        # The type of the reference number. Referring to the vendor payment id.
        sig { returns(Symbol) }
        def reference_number_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reference_number_type=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        sig do
          params(
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            reference_number: String,
            reference_number_type: Symbol,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(id:, created_at:, live_mode:, object:, reference_number:, reference_number_type:, updated_at:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                live_mode: T::Boolean,
                object: String,
                reference_number: String,
                reference_number_type: Symbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # The type of the reference number. Referring to the vendor payment id.
        class ReferenceNumberType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end

      # The type of object being returned or `null`.
      class ReturnableType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # The role of the return, can be `originating` or `receiving`.
      class Role < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ORIGINATING = :originating
        RECEIVING = :receiving
      end

      # The current status of the return.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        COMPLETED = :completed
        FAILED = :failed
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        SENT = :sent
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      #   `interac`, `manual`, `paper_item`, `wire`.
      class Type < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end
    end
  end
end
