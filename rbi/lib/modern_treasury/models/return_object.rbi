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

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

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

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject)) }
      def current_return
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnObject))
          .returns(T.nilable(ModernTreasury::Models::ReturnObject))
      end
      def current_return=(_)
      end

      sig { returns(T.nilable(Date)) }
      def date_of_death
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_of_death=(_)
      end

      sig { returns(T.nilable(String)) }
      def failure_reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def failure_reason=(_)
      end

      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

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

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber]) }
      def reference_numbers
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber])
          .returns(T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber])
      end
      def reference_numbers=(_)
      end

      sig { returns(T.nilable(String)) }
      def returnable_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def returnable_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def returnable_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def returnable_type=(_)
      end

      sig { returns(Symbol) }
      def role
      end

      sig { params(_: Symbol).returns(Symbol) }
      def role=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

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
          .void
      end
      def initialize(
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

      class Code < ModernTreasury::Enum
        abstract!

        NUMBER_901 = T.let(:"901", T.nilable(Symbol))
        NUMBER_902 = T.let(:"902", T.nilable(Symbol))
        NUMBER_903 = T.let(:"903", T.nilable(Symbol))
        NUMBER_904 = T.let(:"904", T.nilable(Symbol))
        NUMBER_905 = T.let(:"905", T.nilable(Symbol))
        NUMBER_907 = T.let(:"907", T.nilable(Symbol))
        NUMBER_908 = T.let(:"908", T.nilable(Symbol))
        NUMBER_909 = T.let(:"909", T.nilable(Symbol))
        NUMBER_910 = T.let(:"910", T.nilable(Symbol))
        NUMBER_911 = T.let(:"911", T.nilable(Symbol))
        NUMBER_912 = T.let(:"912", T.nilable(Symbol))
        NUMBER_914 = T.let(:"914", T.nilable(Symbol))
        C01 = T.let(:C01, T.nilable(Symbol))
        C02 = T.let(:C02, T.nilable(Symbol))
        C03 = T.let(:C03, T.nilable(Symbol))
        C05 = T.let(:C05, T.nilable(Symbol))
        C06 = T.let(:C06, T.nilable(Symbol))
        C07 = T.let(:C07, T.nilable(Symbol))
        C08 = T.let(:C08, T.nilable(Symbol))
        C09 = T.let(:C09, T.nilable(Symbol))
        C13 = T.let(:C13, T.nilable(Symbol))
        C14 = T.let(:C14, T.nilable(Symbol))
        R01 = T.let(:R01, T.nilable(Symbol))
        R02 = T.let(:R02, T.nilable(Symbol))
        R03 = T.let(:R03, T.nilable(Symbol))
        R04 = T.let(:R04, T.nilable(Symbol))
        R05 = T.let(:R05, T.nilable(Symbol))
        R06 = T.let(:R06, T.nilable(Symbol))
        R07 = T.let(:R07, T.nilable(Symbol))
        R08 = T.let(:R08, T.nilable(Symbol))
        R09 = T.let(:R09, T.nilable(Symbol))
        R10 = T.let(:R10, T.nilable(Symbol))
        R11 = T.let(:R11, T.nilable(Symbol))
        R12 = T.let(:R12, T.nilable(Symbol))
        R14 = T.let(:R14, T.nilable(Symbol))
        R15 = T.let(:R15, T.nilable(Symbol))
        R16 = T.let(:R16, T.nilable(Symbol))
        R17 = T.let(:R17, T.nilable(Symbol))
        R20 = T.let(:R20, T.nilable(Symbol))
        R21 = T.let(:R21, T.nilable(Symbol))
        R22 = T.let(:R22, T.nilable(Symbol))
        R23 = T.let(:R23, T.nilable(Symbol))
        R24 = T.let(:R24, T.nilable(Symbol))
        R29 = T.let(:R29, T.nilable(Symbol))
        R31 = T.let(:R31, T.nilable(Symbol))
        R33 = T.let(:R33, T.nilable(Symbol))
        R37 = T.let(:R37, T.nilable(Symbol))
        R38 = T.let(:R38, T.nilable(Symbol))
        R39 = T.let(:R39, T.nilable(Symbol))
        R51 = T.let(:R51, T.nilable(Symbol))
        R52 = T.let(:R52, T.nilable(Symbol))
        R53 = T.let(:R53, T.nilable(Symbol))
        CURRENCYCLOUD = T.let(:currencycloud, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
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

        sig { returns(String) }
        def reference_number
        end

        sig { params(_: String).returns(String) }
        def reference_number=(_)
        end

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
            .void
        end
        def initialize(
          id:,
          created_at:,
          live_mode:,
          object:,
          reference_number:,
          reference_number_type:,
          updated_at:
        )
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

        class ReferenceNumberType < ModernTreasury::Enum
          abstract!

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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class ReturnableType < ModernTreasury::Enum
        abstract!

        INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
        PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
        PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
        RETURN = T.let(:return, T.nilable(Symbol))
        REVERSAL = T.let(:reversal, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Role < ModernTreasury::Enum
        abstract!

        ORIGINATING = :originating
        RECEIVING = :receiving

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        FAILED = :failed
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        SENT = :sent

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < ModernTreasury::Enum
        abstract!

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
