# typed: strong

module ModernTreasury
  module Models
    class ReturnObject < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::ReturnObject, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The return code. For ACH returns, this is the required ACH return code.
      sig do
        returns(T.nilable(ModernTreasury::ReturnObject::Code::TaggedSymbol))
      end
      attr_accessor :code

      sig { returns(Time) }
      attr_accessor :created_at

      # Currency that this transaction is denominated in.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # If the return's status is `returned`, this will include the return object's data
      # that is returning this return.
      sig { returns(T.nilable(ModernTreasury::ReturnObject)) }
      attr_reader :current_return

      sig do
        params(current_return: T.nilable(ModernTreasury::ReturnObject)).void
      end
      attr_writer :current_return

      # If the return code is `R14` or `R15` this is the date the deceased counterparty
      # passed away.
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_death

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # If an originating return failed to be processed by the bank, a description of
      # the failure reason will be available.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_reason

      # The ID of the relevant Internal Account.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # The ID of the ledger transaction linked to the return.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # Often the bank will provide an explanation for the return, which is a short
      # human readable string.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # An array of Payment Reference objects.
      sig { returns(T::Array[ModernTreasury::ReturnObject::ReferenceNumber]) }
      attr_accessor :reference_numbers

      # The ID of the object being returned or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :returnable_id

      # The type of object being returned or `null`.
      sig do
        returns(
          T.nilable(ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol)
        )
      end
      attr_accessor :returnable_type

      # The role of the return, can be `originating` or `receiving`.
      sig { returns(ModernTreasury::ReturnObject::Role::TaggedSymbol) }
      attr_accessor :role

      # The current status of the return.
      sig { returns(ModernTreasury::ReturnObject::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the relevant Transaction or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # The ID of the relevant Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      # `interac`, `manual`, `paper_item`, `wire`.
      sig { returns(ModernTreasury::ReturnObject::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      # Some returns may include additional information from the bank. In these cases,
      # this string will be present.
      sig { returns(T.nilable(String)) }
      attr_accessor :additional_information

      # The raw data from the return file that we get from the bank.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

      sig do
        params(
          id: String,
          amount: Integer,
          code: T.nilable(ModernTreasury::ReturnObject::Code::OrSymbol),
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          current_return: T.nilable(ModernTreasury::ReturnObject),
          date_of_death: T.nilable(Date),
          discarded_at: T.nilable(Time),
          failure_reason: T.nilable(String),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          reason: T.nilable(String),
          reference_numbers:
            T::Array[ModernTreasury::ReturnObject::ReferenceNumber::OrHash],
          returnable_id: T.nilable(String),
          returnable_type:
            T.nilable(ModernTreasury::ReturnObject::ReturnableType::OrSymbol),
          role: ModernTreasury::ReturnObject::Role::OrSymbol,
          status: ModernTreasury::ReturnObject::Status::OrSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: ModernTreasury::ReturnObject::Type::OrSymbol,
          updated_at: Time,
          additional_information: T.nilable(String),
          data: T.nilable(T.anything)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The return code. For ACH returns, this is the required ACH return code.
        code:,
        created_at:,
        # Currency that this transaction is denominated in.
        currency:,
        # If the return's status is `returned`, this will include the return object's data
        # that is returning this return.
        current_return:,
        # If the return code is `R14` or `R15` this is the date the deceased counterparty
        # passed away.
        date_of_death:,
        discarded_at:,
        # If an originating return failed to be processed by the bank, a description of
        # the failure reason will be available.
        failure_reason:,
        # The ID of the relevant Internal Account.
        internal_account_id:,
        # The ID of the ledger transaction linked to the return.
        ledger_transaction_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # Often the bank will provide an explanation for the return, which is a short
        # human readable string.
        reason:,
        # An array of Payment Reference objects.
        reference_numbers:,
        # The ID of the object being returned or `null`.
        returnable_id:,
        # The type of object being returned or `null`.
        returnable_type:,
        # The role of the return, can be `originating` or `receiving`.
        role:,
        # The current status of the return.
        status:,
        # The ID of the relevant Transaction or `null`.
        transaction_id:,
        # The ID of the relevant Transaction Line Item or `null`.
        transaction_line_item_id:,
        # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
        # `interac`, `manual`, `paper_item`, `wire`.
        type:,
        updated_at:,
        # Some returns may include additional information from the bank. In these cases,
        # this string will be present.
        additional_information: nil,
        # The raw data from the return file that we get from the bank.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            code: T.nilable(ModernTreasury::ReturnObject::Code::TaggedSymbol),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            current_return: T.nilable(ModernTreasury::ReturnObject),
            date_of_death: T.nilable(Date),
            discarded_at: T.nilable(Time),
            failure_reason: T.nilable(String),
            internal_account_id: T.nilable(String),
            ledger_transaction_id: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            reason: T.nilable(String),
            reference_numbers:
              T::Array[ModernTreasury::ReturnObject::ReferenceNumber],
            returnable_id: T.nilable(String),
            returnable_type:
              T.nilable(
                ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
              ),
            role: ModernTreasury::ReturnObject::Role::TaggedSymbol,
            status: ModernTreasury::ReturnObject::Status::TaggedSymbol,
            transaction_id: T.nilable(String),
            transaction_line_item_id: T.nilable(String),
            type: ModernTreasury::ReturnObject::Type::TaggedSymbol,
            updated_at: Time,
            additional_information: T.nilable(String),
            data: T.nilable(T.anything)
          }
        )
      end
      def to_hash
      end

      # The return code. For ACH returns, this is the required ACH return code.
      module Code
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::ReturnObject::Code) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CODE_901 =
          T.let(:"901", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_902 =
          T.let(:"902", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_903 =
          T.let(:"903", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_904 =
          T.let(:"904", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_905 =
          T.let(:"905", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_907 =
          T.let(:"907", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_908 =
          T.let(:"908", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_909 =
          T.let(:"909", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_910 =
          T.let(:"910", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_911 =
          T.let(:"911", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_912 =
          T.let(:"912", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CODE_914 =
          T.let(:"914", ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C01 = T.let(:C01, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C02 = T.let(:C02, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C03 = T.let(:C03, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C05 = T.let(:C05, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C06 = T.let(:C06, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C07 = T.let(:C07, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C08 = T.let(:C08, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C09 = T.let(:C09, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C13 = T.let(:C13, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        C14 = T.let(:C14, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R01 = T.let(:R01, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R02 = T.let(:R02, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R03 = T.let(:R03, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R04 = T.let(:R04, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R05 = T.let(:R05, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R06 = T.let(:R06, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R07 = T.let(:R07, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R08 = T.let(:R08, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R09 = T.let(:R09, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R10 = T.let(:R10, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R11 = T.let(:R11, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R12 = T.let(:R12, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R13 = T.let(:R13, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R14 = T.let(:R14, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R15 = T.let(:R15, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R16 = T.let(:R16, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R17 = T.let(:R17, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R18 = T.let(:R18, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R19 = T.let(:R19, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R20 = T.let(:R20, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R21 = T.let(:R21, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R22 = T.let(:R22, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R23 = T.let(:R23, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R24 = T.let(:R24, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R25 = T.let(:R25, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R26 = T.let(:R26, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R27 = T.let(:R27, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R28 = T.let(:R28, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R29 = T.let(:R29, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R30 = T.let(:R30, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R31 = T.let(:R31, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R32 = T.let(:R32, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R33 = T.let(:R33, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R34 = T.let(:R34, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R35 = T.let(:R35, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R36 = T.let(:R36, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R37 = T.let(:R37, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R38 = T.let(:R38, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R39 = T.let(:R39, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R40 = T.let(:R40, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R41 = T.let(:R41, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R42 = T.let(:R42, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R43 = T.let(:R43, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R44 = T.let(:R44, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R45 = T.let(:R45, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R46 = T.let(:R46, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R47 = T.let(:R47, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R50 = T.let(:R50, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R51 = T.let(:R51, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R52 = T.let(:R52, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R53 = T.let(:R53, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R61 = T.let(:R61, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R62 = T.let(:R62, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R67 = T.let(:R67, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R68 = T.let(:R68, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R69 = T.let(:R69, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R70 = T.let(:R70, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R71 = T.let(:R71, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R72 = T.let(:R72, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R73 = T.let(:R73, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R74 = T.let(:R74, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R75 = T.let(:R75, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R76 = T.let(:R76, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R77 = T.let(:R77, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R80 = T.let(:R80, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R81 = T.let(:R81, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R82 = T.let(:R82, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R83 = T.let(:R83, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R84 = T.let(:R84, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        R85 = T.let(:R85, ModernTreasury::ReturnObject::Code::TaggedSymbol)
        CURRENCYCLOUD =
          T.let(
            :currencycloud,
            ModernTreasury::ReturnObject::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ReturnObject::Code::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ReferenceNumber < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ReturnObject::ReferenceNumber,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        # The vendor reference number.
        sig { returns(String) }
        attr_accessor :reference_number

        # The type of the reference number. Referring to the vendor payment id.
        sig do
          returns(
            ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
          )
        end
        attr_accessor :reference_number_type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            reference_number: String,
            reference_number_type:
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          # The vendor reference number.
          reference_number:,
          # The type of the reference number. Referring to the vendor payment id.
          reference_number_type:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              live_mode: T::Boolean,
              object: String,
              reference_number: String,
              reference_number_type:
                ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The type of the reference number. Referring to the vendor payment id.
        module ReferenceNumberType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_ORIGINAL_TRACE_NUMBER =
            T.let(
              :ach_original_trace_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          ACH_TRACE_NUMBER =
            T.let(
              :ach_trace_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ACTIVITY_DATE =
            T.let(
              :bankprov_payment_activity_date,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ID =
            T.let(
              :bankprov_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_PRENOTIFICATION_ID =
            T.let(
              :bnk_dev_prenotification_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_TRANSFER_ID =
            T.let(
              :bnk_dev_transfer_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_END_TO_END_ID =
            T.let(
              :bofa_end_to_end_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_TRANSACTION_ID =
            T.let(
              :bofa_transaction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BRALE_TRANSFER_ID =
            T.let(
              :brale_transfer_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BRIDGE_DESTINATION_TRANSACTION_HASH =
            T.let(
              :bridge_destination_transaction_hash,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BRIDGE_SOURCE_TRANSACTION_HASH =
            T.let(
              :bridge_source_transaction_hash,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BRIDGE_TRANSFER_ID =
            T.let(
              :bridge_transfer_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CHECK_NUMBER =
            T.let(
              :check_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_REFERENCE_NUMBER =
            T.let(
              :citibank_reference_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER =
            T.let(
              :citibank_worldlink_clearing_system_reference_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_FX_QUOTE_ID =
            T.let(
              :column_fx_quote_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_REVERSAL_PAIR_TRANSFER_ID =
            T.let(
              :column_reversal_pair_transfer_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_TRANSFER_ID =
            T.let(
              :column_transfer_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_PAYMENT_ID =
            T.let(
              :cross_river_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_SERVICE_MESSAGE =
            T.let(
              :cross_river_service_message,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_TRANSACTION_ID =
            T.let(
              :cross_river_transaction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_CONVERSION_ID =
            T.let(
              :currencycloud_conversion_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_PAYMENT_ID =
            T.let(
              :currencycloud_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DC_BANK_TRANSACTION_ID =
            T.let(
              :dc_bank_transaction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DWOLLA_TRANSACTION_ID =
            T.let(
              :dwolla_transaction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EFT_TRACE_NUMBER =
            T.let(
              :eft_trace_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EVOLVE_TRANSACTION_ID =
            T.let(
              :evolve_transaction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_IMAD =
            T.let(
              :fedwire_imad,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_OMAD =
            T.let(
              :fedwire_omad,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FIRST_REPUBLIC_INTERNAL_ID =
            T.let(
              :first_republic_internal_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID =
            T.let(
              :goldman_sachs_collection_request_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_END_TO_END_ID =
            T.let(
              :goldman_sachs_end_to_end_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID =
            T.let(
              :goldman_sachs_payment_request_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_REQUEST_ID =
            T.let(
              :goldman_sachs_request_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID =
            T.let(
              :goldman_sachs_unique_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          INTERAC_MESSAGE_ID =
            T.let(
              :interac_message_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CCN =
            T.let(
              :jpmc_ccn,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CLEARING_SYSTEM_REFERENCE =
            T.let(
              :jpmc_clearing_system_reference,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CUSTOMER_REFERENCE_ID =
            T.let(
              :jpmc_customer_reference_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_END_TO_END_ID =
            T.let(
              :jpmc_end_to_end_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FIRM_ROOT_ID =
            T.let(
              :jpmc_firm_root_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FX_TRN_ID =
            T.let(
              :jpmc_fx_trn_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_P3_ID =
            T.let(
              :jpmc_p3_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_BATCH_ID =
            T.let(
              :jpmc_payment_batch_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_INFORMATION_ID =
            T.let(
              :jpmc_payment_information_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_RETURNED_DATETIME =
            T.let(
              :jpmc_payment_returned_datetime,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_TRANSACTION_REFERENCE_NUMBER =
            T.let(
              :jpmc_transaction_reference_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          LOB_CHECK_ID =
            T.let(
              :lob_check_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PARTIAL_SWIFT_MIR =
            T.let(
              :partial_swift_mir,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_CLEARING_REFERENCE =
            T.let(
              :pnc_clearing_reference,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_INSTRUCTION_ID =
            T.let(
              :pnc_instruction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_MULTIPAYMENT_ID =
            T.let(
              :pnc_multipayment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_PAYMENT_TRACE_ID =
            T.let(
              :pnc_payment_trace_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_REQUEST_FOR_PAYMENT_ID =
            T.let(
              :pnc_request_for_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_TRANSACTION_REFERENCE_NUMBER =
            T.let(
              :pnc_transaction_reference_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RBC_WIRE_REFERENCE_ID =
            T.let(
              :rbc_wire_reference_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RSPEC_VENDOR_PAYMENT_ID =
            T.let(
              :rspec_vendor_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RTP_INSTRUCTION_ID =
            T.let(
              :rtp_instruction_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_API_REFERENCE_ID =
            T.let(
              :signet_api_reference_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_CONFIRMATION_ID =
            T.let(
              :signet_confirmation_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_REQUEST_ID =
            T.let(
              :signet_request_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SILVERGATE_PAYMENT_ID =
            T.let(
              :silvergate_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_END_TO_END_ID =
            T.let(
              :svb_end_to_end_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_PAYMENT_ID =
            T.let(
              :svb_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_cleared_for_sanctions_review,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_held_for_sanctions_review,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_MIR =
            T.let(
              :swift_mir,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_UETR =
            T.let(
              :swift_uetr,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER =
            T.let(
              :umb_product_partner_account_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID =
            T.let(
              :usbank_payment_application_reference_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_ID =
            T.let(
              :usbank_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PENDING_RTP_PAYMENT_ID =
            T.let(
              :usbank_pending_rtp_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_POSTED_RTP_PAYMENT_ID =
            T.let(
              :usbank_posted_rtp_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_END_TO_END_ID =
            T.let(
              :wells_fargo_end_to_end_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_PAYMENT_ID =
            T.let(
              :wells_fargo_payment_id,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_TRACE_NUMBER =
            T.let(
              :wells_fargo_trace_number,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_UETR =
            T.let(
              :wells_fargo_uetr,
              ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ReturnObject::ReferenceNumber::ReferenceNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of object being returned or `null`.
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ReturnObject::ReturnableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ReturnObject::ReturnableType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The role of the return, can be `originating` or `receiving`.
      module Role
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::ReturnObject::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORIGINATING =
          T.let(:originating, ModernTreasury::ReturnObject::Role::TaggedSymbol)
        RECEIVING =
          T.let(:receiving, ModernTreasury::ReturnObject::Role::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::ReturnObject::Role::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The current status of the return.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::ReturnObject::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(:completed, ModernTreasury::ReturnObject::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, ModernTreasury::ReturnObject::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::ReturnObject::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, ModernTreasury::ReturnObject::Status::TaggedSymbol)
        RETURNED =
          T.let(:returned, ModernTreasury::ReturnObject::Status::TaggedSymbol)
        SENT = T.let(:sent, ModernTreasury::ReturnObject::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::ReturnObject::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of return. Can be one of: `ach`, `ach_noc`, `au_becs`, `bacs`, `eft`,
      # `interac`, `manual`, `paper_item`, `wire`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::ReturnObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ach, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        ACH_NOC =
          T.let(:ach_noc, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        AU_BECS =
          T.let(:au_becs, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        MANUAL =
          T.let(:manual, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        PAPER_ITEM =
          T.let(:paper_item, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::ReturnObject::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::ReturnObject::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::ReturnObject::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
