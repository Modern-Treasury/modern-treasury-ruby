# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderUpdateParams::Accounting)) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderUpdateParams::Accounting)
          .returns(ModernTreasury::Models::PaymentOrderUpdateParams::Accounting)
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

      sig { returns(T.nilable(Integer)) }
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

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T.nilable(Date)) }
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

      sig { returns(T.nilable(Symbol)) }
      def fallback_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fallback_type=(_)
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

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem])) }
      def line_items
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem])
          .returns(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def nsf_protected
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def nsf_protected=(_)
      end

      sig { returns(T.nilable(String)) }
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

      sig { returns(T.nilable(Symbol)) }
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

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount)) }
      def receiving_account
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount)
          .returns(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount)
      end
      def receiving_account=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
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

      sig { returns(T.nilable(Symbol)) }
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

      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
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

      sig do
        params(
          accounting: ModernTreasury::Models::PaymentOrderUpdateParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          charge_bearer: T.nilable(Symbol),
          counterparty_id: T.nilable(String),
          currency: Symbol,
          description: T.nilable(String),
          direction: Symbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          line_items: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          subtype: T.nilable(Symbol),
          type: Symbol,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        amount: nil,
        charge_bearer: nil,
        counterparty_id: nil,
        currency: nil,
        description: nil,
        direction: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_account_id: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        status: nil,
        subtype: nil,
        type: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              accounting: ModernTreasury::Models::PaymentOrderUpdateParams::Accounting,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              amount: Integer,
              charge_bearer: T.nilable(Symbol),
              counterparty_id: T.nilable(String),
              currency: Symbol,
              description: T.nilable(String),
              direction: Symbol,
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type: Symbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(Symbol),
              line_items: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority: Symbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount,
              receiving_account_id: String,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              status: Symbol,
              subtype: T.nilable(Symbol),
              type: Symbol,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
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

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(account_id: nil, class_id: nil)
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class FallbackType < ModernTreasury::Enum
        abstract!

        ACH = :ach

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ForeignExchangeIndicator < ModernTreasury::Enum
        abstract!

        FIXED_TO_VARIABLE = T.let(:fixed_to_variable, T.nilable(Symbol))
        VARIABLE_TO_FIXED = T.let(:variable_to_fixed, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def accounting_category_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def accounting_category_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, accounting_category_id: nil, description: nil, metadata: nil)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                accounting_category_id: T.nilable(String),
                description: T.nilable(String),
                metadata: T::Hash[Symbol, String]
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ReceivingAccount < ModernTreasury::BaseModel
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail])
          )
        end
        def account_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail])
        end
        def account_details=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def account_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def account_type=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail])
          )
        end
        def contact_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail])
        end
        def contact_details=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount)) }
        def ledger_account
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount)
            .returns(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount)
        end
        def ledger_account=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress)) }
        def party_address
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress)
            .returns(ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress)
        end
        def party_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_identifier
        end

        sig { params(_: String).returns(String) }
        def party_identifier=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def party_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def party_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def plaid_processor_token
        end

        sig { params(_: String).returns(String) }
        def plaid_processor_token=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail])
          )
        end
        def routing_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail])
        end
        def routing_details=(_)
        end

        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail],
            ledger_account: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress,
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(Symbol),
            plaid_processor_token: String,
            routing_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail]
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_details: nil,
          account_type: nil,
          contact_details: nil,
          ledger_account: nil,
          metadata: nil,
          name: nil,
          party_address: nil,
          party_identifier: nil,
          party_name: nil,
          party_type: nil,
          plaid_processor_token: nil,
          routing_details: nil
        )
        end

        sig do
          override
            .returns(
              {
                account_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::AccountDetail],
                account_type: Symbol,
                contact_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::ContactDetail],
                ledger_account: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::PaymentOrderUpdateParams::ReceivingAccount::RoutingDetail]
              }
            )
        end
        def to_hash
        end

        class AccountDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def account_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def account_number_type=(_)
          end

          sig { params(account_number: String, account_number_type: Symbol).returns(T.attached_class) }
          def self.new(account_number:, account_number_type: nil)
          end

          sig { override.returns({account_number: String, account_number_type: Symbol}) }
          def to_hash
          end

          class AccountNumberType < ModernTreasury::Enum
            abstract!

            AU_NUMBER = :au_number
            CLABE = :clabe
            HK_NUMBER = :hk_number
            IBAN = :iban
            ID_NUMBER = :id_number
            NZ_NUMBER = :nz_number
            OTHER = :other
            PAN = :pan
            SG_NUMBER = :sg_number
            WALLET_ADDRESS = :wallet_address

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def contact_identifier
          end

          sig { params(_: String).returns(String) }
          def contact_identifier=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def contact_identifier_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def contact_identifier_type=(_)
          end

          sig do
            params(contact_identifier: String, contact_identifier_type: Symbol).returns(T.attached_class)
          end
          def self.new(contact_identifier: nil, contact_identifier_type: nil)
          end

          sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
          def to_hash
          end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { returns(String) }
          def ledger_id
          end

          sig { params(_: String).returns(String) }
          def ledger_id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Symbol) }
          def normal_balance
          end

          sig { params(_: Symbol).returns(Symbol) }
          def normal_balance=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def currency_exponent
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def currency_exponent=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def ledger_account_category_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def ledger_account_category_ids=(_)
          end

          sig { returns(T.nilable(String)) }
          def ledgerable_id
          end

          sig { params(_: String).returns(String) }
          def ledgerable_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def ledgerable_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def ledgerable_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig do
            params(
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: Symbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String]
            )
              .returns(T.attached_class)
          end
          def self.new(
            currency:,
            ledger_id:,
            name:,
            normal_balance:,
            currency_exponent: nil,
            description: nil,
            ledger_account_category_ids: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil
          )
          end

          sig do
            override
              .returns(
                {
                  currency: String,
                  ledger_id: String,
                  name: String,
                  normal_balance: Symbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: Symbol,
                  metadata: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash
          end

          class LedgerableType < ModernTreasury::Enum
            abstract!

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(Symbol) }
          def routing_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def routing_number_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def payment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_type=(_)
          end

          sig do
            params(
              routing_number: String,
              routing_number_type: Symbol,
              payment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(routing_number:, routing_number_type:, payment_type: nil)
          end

          sig do
            override.returns({routing_number: String, routing_number_type: Symbol, payment_type: Symbol})
          end
          def to_hash
          end

          class RoutingNumberType < ModernTreasury::Enum
            abstract!

            ABA = :aba
            AU_BSB = :au_bsb
            BR_CODIGO = :br_codigo
            CA_CPA = :ca_cpa
            CHIPS = :chips
            CNAPS = :cnaps
            DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
            GB_SORT_CODE = :gb_sort_code
            HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
            HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
            ID_SKNBI_CODE = :id_sknbi_code
            IN_IFSC = :in_ifsc
            JP_ZENGIN_CODE = :jp_zengin_code
            MY_BRANCH_CODE = :my_branch_code
            MX_BANK_IDENTIFIER = :mx_bank_identifier
            NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
            PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
            SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
            SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
            SWIFT = :swift
            ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class PaymentType < ModernTreasury::Enum
            abstract!

            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
            PROVXCHANGE = :provxchange
            RO_SENT = :ro_sent
            RTP = :rtp
            SE_BANKGIROT = :se_bankgirot
            SEN = :sen
            SEPA = :sepa
            SG_GIRO = :sg_giro
            SIC = :sic
            SIGNET = :signet
            SKNBI = :sknbi
            WIRE = :wire
            ZENGIN = :zengin

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
