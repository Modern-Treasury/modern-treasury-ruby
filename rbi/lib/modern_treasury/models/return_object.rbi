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
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)) }
      def code
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnObject::Code::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::ReturnObject::Code::TaggedSymbol))
      end
      def code=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Currency that this transaction is denominated in.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::Currency::TaggedSymbol)
          .returns(ModernTreasury::Models::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # If the return's status is `returned`, this will include the return object's data
      #   that is returning this return.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject)) }
      def current_return
      end

      sig do
        params(_: T.nilable(T.any(ModernTreasury::Models::ReturnObject, ModernTreasury::Util::AnyHash)))
          .returns(T.nilable(T.any(ModernTreasury::Models::ReturnObject, ModernTreasury::Util::AnyHash)))
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
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)) }
      def returnable_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol))
      end
      def returnable_type=(_)
      end

      # The role of the return, can be `originating` or `receiving`.
      sig { returns(ModernTreasury::Models::ReturnObject::Role::TaggedSymbol) }
      def role
      end

      sig do
        params(_: ModernTreasury::Models::ReturnObject::Role::TaggedSymbol)
          .returns(ModernTreasury::Models::ReturnObject::Role::TaggedSymbol)
      end
      def role=(_)
      end

      # The current status of the return.
      sig { returns(ModernTreasury::Models::ReturnObject::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
      end
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
      sig { returns(ModernTreasury::Models::ReturnObject::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
          .returns(ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
      end
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
          code: T.nilable(ModernTreasury::Models::ReturnObject::Code::TaggedSymbol),
          created_at: Time,
          currency: ModernTreasury::Models::Currency::TaggedSymbol,
          current_return: T.nilable(T.any(ModernTreasury::Models::ReturnObject, ModernTreasury::Util::AnyHash)),
          date_of_death: T.nilable(Date),
          failure_reason: T.nilable(String),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          reason: T.nilable(String),
          reference_numbers: T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber],
          returnable_id: T.nilable(String),
          returnable_type: T.nilable(ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol),
          role: ModernTreasury::Models::ReturnObject::Role::TaggedSymbol,
          status: ModernTreasury::Models::ReturnObject::Status::TaggedSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: ModernTreasury::Models::ReturnObject::Type::TaggedSymbol,
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
              code: T.nilable(ModernTreasury::Models::ReturnObject::Code::TaggedSymbol),
              created_at: Time,
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
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
              returnable_type: T.nilable(ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol),
              role: ModernTreasury::Models::ReturnObject::Role::TaggedSymbol,
              status: ModernTreasury::Models::ReturnObject::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              type: ModernTreasury::Models::ReturnObject::Type::TaggedSymbol,
              updated_at: Time,
              additional_information: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # The return code. For ACH returns, this is the required ACH return code.
      module Code
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::Code) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol) }

        NUMBER_901 = T.let(:"901", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_902 = T.let(:"902", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_903 = T.let(:"903", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_904 = T.let(:"904", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_905 = T.let(:"905", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_907 = T.let(:"907", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_908 = T.let(:"908", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_909 = T.let(:"909", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_910 = T.let(:"910", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_911 = T.let(:"911", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_912 = T.let(:"912", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        NUMBER_914 = T.let(:"914", ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C01 = T.let(:C01, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C02 = T.let(:C02, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C03 = T.let(:C03, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C05 = T.let(:C05, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C06 = T.let(:C06, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C07 = T.let(:C07, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C08 = T.let(:C08, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C09 = T.let(:C09, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C13 = T.let(:C13, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        C14 = T.let(:C14, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R01 = T.let(:R01, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R02 = T.let(:R02, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R03 = T.let(:R03, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R04 = T.let(:R04, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R05 = T.let(:R05, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R06 = T.let(:R06, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R07 = T.let(:R07, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R08 = T.let(:R08, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R09 = T.let(:R09, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R10 = T.let(:R10, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R11 = T.let(:R11, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R12 = T.let(:R12, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R14 = T.let(:R14, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R15 = T.let(:R15, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R16 = T.let(:R16, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R17 = T.let(:R17, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R20 = T.let(:R20, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R21 = T.let(:R21, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R22 = T.let(:R22, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R23 = T.let(:R23, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R24 = T.let(:R24, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R29 = T.let(:R29, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R31 = T.let(:R31, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R33 = T.let(:R33, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R37 = T.let(:R37, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R38 = T.let(:R38, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R39 = T.let(:R39, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R51 = T.let(:R51, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R52 = T.let(:R52, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        R53 = T.let(:R53, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)
        CURRENCYCLOUD = T.let(:currencycloud, ModernTreasury::Models::ReturnObject::Code::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnObject::Code::TaggedSymbol]) }
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
        sig { returns(ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol) }
        def reference_number_type
        end

        sig do
          params(_: ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
            .returns(ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
        end
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
            reference_number_type: ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol,
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
                reference_number_type: ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # The type of the reference number. Referring to the vendor payment id.
        module ReferenceNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol) }

          ACH_ORIGINAL_TRACE_NUMBER =
            T.let(
              :ach_original_trace_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          ACH_TRACE_NUMBER =
            T.let(
              :ach_trace_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ACTIVITY_DATE =
            T.let(
              :bankprov_payment_activity_date,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ID =
            T.let(
              :bankprov_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_PRENOTIFICATION_ID =
            T.let(
              :bnk_dev_prenotification_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_TRANSFER_ID =
            T.let(
              :bnk_dev_transfer_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_END_TO_END_ID =
            T.let(
              :bofa_end_to_end_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_TRANSACTION_ID =
            T.let(
              :bofa_transaction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CHECK_NUMBER =
            T.let(
              :check_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_REFERENCE_NUMBER =
            T.let(
              :citibank_reference_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER =
            T.let(
              :citibank_worldlink_clearing_system_reference_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_FX_QUOTE_ID =
            T.let(
              :column_fx_quote_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_REVERSAL_PAIR_TRANSFER_ID =
            T.let(
              :column_reversal_pair_transfer_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_TRANSFER_ID =
            T.let(
              :column_transfer_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_PAYMENT_ID =
            T.let(
              :cross_river_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_SERVICE_MESSAGE =
            T.let(
              :cross_river_service_message,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_TRANSACTION_ID =
            T.let(
              :cross_river_transaction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_CONVERSION_ID =
            T.let(
              :currencycloud_conversion_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_PAYMENT_ID =
            T.let(
              :currencycloud_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DC_BANK_TRANSACTION_ID =
            T.let(
              :dc_bank_transaction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DWOLLA_TRANSACTION_ID =
            T.let(
              :dwolla_transaction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EFT_TRACE_NUMBER =
            T.let(
              :eft_trace_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EVOLVE_TRANSACTION_ID =
            T.let(
              :evolve_transaction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_IMAD =
            T.let(
              :fedwire_imad,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_OMAD =
            T.let(
              :fedwire_omad,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FIRST_REPUBLIC_INTERNAL_ID =
            T.let(
              :first_republic_internal_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID =
            T.let(
              :goldman_sachs_collection_request_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_END_TO_END_ID =
            T.let(
              :goldman_sachs_end_to_end_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID =
            T.let(
              :goldman_sachs_payment_request_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_REQUEST_ID =
            T.let(
              :goldman_sachs_request_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID =
            T.let(
              :goldman_sachs_unique_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          INTERAC_MESSAGE_ID =
            T.let(
              :interac_message_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CCN =
            T.let(:jpmc_ccn, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
          JPMC_CLEARING_SYSTEM_REFERENCE =
            T.let(
              :jpmc_clearing_system_reference,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CUSTOMER_REFERENCE_ID =
            T.let(
              :jpmc_customer_reference_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_END_TO_END_ID =
            T.let(
              :jpmc_end_to_end_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FIRM_ROOT_ID =
            T.let(
              :jpmc_firm_root_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FX_TRN_ID =
            T.let(
              :jpmc_fx_trn_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_P3_ID =
            T.let(
              :jpmc_p3_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_BATCH_ID =
            T.let(
              :jpmc_payment_batch_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_INFORMATION_ID =
            T.let(
              :jpmc_payment_information_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_RETURNED_DATETIME =
            T.let(
              :jpmc_payment_returned_datetime,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          LOB_CHECK_ID =
            T.let(
              :lob_check_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          OTHER =
            T.let(:other, ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
          PARTIAL_SWIFT_MIR =
            T.let(
              :partial_swift_mir,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_CLEARING_REFERENCE =
            T.let(
              :pnc_clearing_reference,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_INSTRUCTION_ID =
            T.let(
              :pnc_instruction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_MULTIPAYMENT_ID =
            T.let(
              :pnc_multipayment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_PAYMENT_TRACE_ID =
            T.let(
              :pnc_payment_trace_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_TRANSACTION_REFERENCE_NUMBER =
            T.let(
              :pnc_transaction_reference_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RSPEC_VENDOR_PAYMENT_ID =
            T.let(
              :rspec_vendor_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RTP_INSTRUCTION_ID =
            T.let(
              :rtp_instruction_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_API_REFERENCE_ID =
            T.let(
              :signet_api_reference_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_CONFIRMATION_ID =
            T.let(
              :signet_confirmation_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_REQUEST_ID =
            T.let(
              :signet_request_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SILVERGATE_PAYMENT_ID =
            T.let(
              :silvergate_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_END_TO_END_ID =
            T.let(
              :svb_end_to_end_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_PAYMENT_ID =
            T.let(
              :svb_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_cleared_for_sanctions_review,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_held_for_sanctions_review,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_MIR =
            T.let(
              :swift_mir,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_UETR =
            T.let(
              :swift_uetr,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER =
            T.let(
              :umb_product_partner_account_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID =
            T.let(
              :usbank_payment_application_reference_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_ID =
            T.let(
              :usbank_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PENDING_RTP_PAYMENT_ID =
            T.let(
              :usbank_pending_rtp_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_POSTED_RTP_PAYMENT_ID =
            T.let(
              :usbank_posted_rtp_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_END_TO_END_ID =
            T.let(
              :wells_fargo_end_to_end_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_PAYMENT_ID =
            T.let(
              :wells_fargo_payment_id,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_TRACE_NUMBER =
            T.let(
              :wells_fargo_trace_number,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_UETR =
            T.let(
              :wells_fargo_uetr,
              ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end

      # The type of object being returned or `null`.
      module ReturnableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::ReturnableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol) }

        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)
        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)
        REVERSAL = T.let(:reversal, ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnObject::ReturnableType::TaggedSymbol]) }
          def values
          end
        end
      end

      # The role of the return, can be `originating` or `receiving`.
      module Role
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::Role::TaggedSymbol) }

        ORIGINATING = T.let(:originating, ModernTreasury::Models::ReturnObject::Role::TaggedSymbol)
        RECEIVING = T.let(:receiving, ModernTreasury::Models::ReturnObject::Role::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnObject::Role::TaggedSymbol]) }
          def values
          end
        end
      end

      # The current status of the return.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)
        SENT = T.let(:sent, ModernTreasury::Models::ReturnObject::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnObject::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      #   `interac`, `manual`, `paper_item`, `wire`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        ACH_NOC = T.let(:ach_noc, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        MANUAL = T.let(:manual, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ReturnObject::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnObject::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
