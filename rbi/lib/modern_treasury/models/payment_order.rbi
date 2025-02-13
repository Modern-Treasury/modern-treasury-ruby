# typed: strong

module ModernTreasury
  module Models
    class PaymentOrder < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(ModernTreasury::Models::PaymentOrder::Accounting) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::Accounting).returns(ModernTreasury::Models::PaymentOrder::Accounting)
      end
      def accounting=(_)
      end

      sig { returns(T.nilable(String)) }
      def accounting_category_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_category_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def accounting_ledger_class_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_ledger_class_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def charge_bearer
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def charge_bearer=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def compliance_rule_metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def compliance_rule_metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
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
        params(_: T.nilable(ModernTreasury::Models::ReturnObject)).returns(T.nilable(ModernTreasury::Models::ReturnObject))
      end
      def current_return=(_)
      end

      sig { returns(T.nilable(String)) }
      def decision_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def decision_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def foreign_exchange_contract
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def foreign_exchange_contract=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def foreign_exchange_indicator
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def foreign_exchange_indicator=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate)) }
      def foreign_exchange_rate
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate)).returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate))
      end
      def foreign_exchange_rate=(_)
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

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T::Boolean) }
      def nsf_protected
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def nsf_protected=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_party_name=(_)
      end

      sig { returns(Symbol) }
      def priority
      end

      sig { params(_: Symbol).returns(Symbol) }
      def priority=(_)
      end

      sig { returns(T.nilable(Time)) }
      def process_after
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def process_after=(_)
      end

      sig { returns(T.nilable(String)) }
      def purpose
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def purpose=(_)
      end

      sig { returns(String) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
      end

      sig { returns(Symbol) }
      def receiving_account_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def receiving_account_type=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber]) }
      def reference_numbers
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber]).returns(T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber])
      end
      def reference_numbers=(_)
      end

      sig { returns(T.nilable(String)) }
      def remittance_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remittance_information=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def send_remittance_advice=(_)
      end

      sig { returns(T.nilable(String)) }
      def statement_descriptor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def subtype
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def subtype=(_)
      end

      sig { returns(T::Array[String]) }
      def transaction_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def transaction_ids=(_)
      end

      sig { returns(T::Boolean) }
      def transaction_monitoring_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def transaction_monitoring_enabled=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              ModernTreasury::Models::VirtualAccount,
              ModernTreasury::Models::InternalAccount
            )
          )
        )
      end
      def ultimate_originating_account
      end

      sig do
        params(
          _: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount))
        ).returns(T.nilable(
                    T.any(
                      ModernTreasury::Models::VirtualAccount,
                      ModernTreasury::Models::InternalAccount
                    )
                  ))
      end
      def ultimate_originating_account=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_originating_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ultimate_originating_account_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def ultimate_originating_account_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_originating_party_identifier
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_party_identifier=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_originating_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_party_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_name=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def vendor_attributes
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def vendor_attributes=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_failure_reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_failure_reason=(_)
      end

      sig do
        params(
          id: String,
          accounting: ModernTreasury::Models::PaymentOrder::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          charge_bearer: T.nilable(Symbol),
          compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          current_return: T.nilable(ModernTreasury::Models::ReturnObject),
          decision_id: T.nilable(String),
          description: T.nilable(String),
          direction: Symbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          object: String,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account_id: String,
          receiving_account_type: Symbol,
          reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          subtype: T.nilable(Symbol),
          transaction_ids: T::Array[String],
          transaction_monitoring_enabled: T::Boolean,
          type: Symbol,
          ultimate_originating_account: T.nilable(
            T.any(
              ModernTreasury::Models::VirtualAccount,
              ModernTreasury::Models::InternalAccount
            )
          ),
          ultimate_originating_account_id: T.nilable(String),
          ultimate_originating_account_type: T.nilable(Symbol),
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          updated_at: Time,
          vendor_attributes: T.nilable(T.anything),
          vendor_failure_reason: T.nilable(String)
        ).void
      end
      def initialize(
        id:,
        accounting:,
        accounting_category_id:,
        accounting_ledger_class_id:,
        amount:,
        charge_bearer:,
        compliance_rule_metadata:,
        counterparty_id:,
        created_at:,
        currency:,
        current_return:,
        decision_id:,
        description:,
        direction:,
        effective_date:,
        expires_at:,
        foreign_exchange_contract:,
        foreign_exchange_indicator:,
        foreign_exchange_rate:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        nsf_protected:,
        object:,
        originating_account_id:,
        originating_party_name:,
        priority:,
        process_after:,
        purpose:,
        receiving_account_id:,
        receiving_account_type:,
        reference_numbers:,
        remittance_information:,
        send_remittance_advice:,
        statement_descriptor:,
        status:,
        subtype:,
        transaction_ids:,
        transaction_monitoring_enabled:,
        type:,
        ultimate_originating_account:,
        ultimate_originating_account_id:,
        ultimate_originating_account_type:,
        ultimate_originating_party_identifier:,
        ultimate_originating_party_name:,
        ultimate_receiving_party_identifier:,
        ultimate_receiving_party_name:,
        updated_at:,
        vendor_attributes:,
        vendor_failure_reason:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accounting: ModernTreasury::Models::PaymentOrder::Accounting,
            accounting_category_id: T.nilable(String),
            accounting_ledger_class_id: T.nilable(String),
            amount: Integer,
            charge_bearer: T.nilable(Symbol),
            compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency: Symbol,
            current_return: T.nilable(ModernTreasury::Models::ReturnObject),
            decision_id: T.nilable(String),
            description: T.nilable(String),
            direction: Symbol,
            effective_date: Date,
            expires_at: T.nilable(Time),
            foreign_exchange_contract: T.nilable(String),
            foreign_exchange_indicator: T.nilable(Symbol),
            foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
            ledger_transaction_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            nsf_protected: T::Boolean,
            object: String,
            originating_account_id: String,
            originating_party_name: T.nilable(String),
            priority: Symbol,
            process_after: T.nilable(Time),
            purpose: T.nilable(String),
            receiving_account_id: String,
            receiving_account_type: Symbol,
            reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
            remittance_information: T.nilable(String),
            send_remittance_advice: T.nilable(T::Boolean),
            statement_descriptor: T.nilable(String),
            status: Symbol,
            subtype: T.nilable(Symbol),
            transaction_ids: T::Array[String],
            transaction_monitoring_enabled: T::Boolean,
            type: Symbol,
            ultimate_originating_account: T.nilable(
              T.any(
                ModernTreasury::Models::VirtualAccount,
                ModernTreasury::Models::InternalAccount
              )
            ),
            ultimate_originating_account_id: T.nilable(String),
            ultimate_originating_account_type: T.nilable(Symbol),
            ultimate_originating_party_identifier: T.nilable(String),
            ultimate_originating_party_name: T.nilable(String),
            ultimate_receiving_party_identifier: T.nilable(String),
            ultimate_receiving_party_name: T.nilable(String),
            updated_at: Time,
            vendor_attributes: T.nilable(T.anything),
            vendor_failure_reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Accounting < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def account_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def class_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def class_id=(_)
        end

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).void }
        def initialize(account_id: nil, class_id: nil)
        end

        sig { override.returns({account_id: T.nilable(String), class_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class ChargeBearer < ModernTreasury::Enum
        abstract!

        SHARED = T.let(:shared, T.nilable(Symbol))
        SENDER = T.let(:sender, T.nilable(Symbol))
        RECEIVER = T.let(:receiver, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ForeignExchangeIndicator < ModernTreasury::Enum
        abstract!

        FIXED_TO_VARIABLE = T.let(:fixed_to_variable, T.nilable(Symbol))
        VARIABLE_TO_FIXED = T.let(:variable_to_fixed, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ForeignExchangeRate < ModernTreasury::BaseModel
        sig { returns(Integer) }
        def base_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def base_amount=(_)
        end

        sig { returns(Symbol) }
        def base_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def base_currency=(_)
        end

        sig { returns(Integer) }
        def exponent
        end

        sig { params(_: Integer).returns(Integer) }
        def exponent=(_)
        end

        sig { returns(String) }
        def rate_string
        end

        sig { params(_: String).returns(String) }
        def rate_string=(_)
        end

        sig { returns(Integer) }
        def target_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def target_amount=(_)
        end

        sig { returns(Symbol) }
        def target_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def target_currency=(_)
        end

        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        sig do
          params(
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          ).void
        end
        def initialize(
          base_amount:,
          base_currency:,
          exponent:,
          rate_string:,
          target_amount:,
          target_currency:,
          value:
        )
        end

        sig do
          override.returns(
            {
              base_amount: Integer,
              base_currency: Symbol,
              exponent: Integer,
              rate_string: String,
              target_amount: Integer,
              target_currency: Symbol,
              value: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ReceivingAccountType < ModernTreasury::Enum
        abstract!

        INTERNAL_ACCOUNT = :internal_account
        EXTERNAL_ACCOUNT = :external_account

        sig { override.returns(T::Array[Symbol]) }
        def self.values
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
          ).void
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
          override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        APPROVED = :approved
        CANCELLED = :cancelled
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        NEEDS_APPROVAL = :needs_approval
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        REVERSED = :reversed
        SENT = :sent

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class UltimateOriginatingAccount < ModernTreasury::Union
        abstract!

        sig do
          override.returns(
            [
              [NilClass, ModernTreasury::Models::VirtualAccount],
              [NilClass, ModernTreasury::Models::InternalAccount]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class UltimateOriginatingAccountType < ModernTreasury::Enum
        abstract!

        INTERNAL_ACCOUNT = T.let(:internal_account, T.nilable(Symbol))
        VIRTUAL_ACCOUNT = T.let(:virtual_account, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
