# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderCreateAsyncParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            amount: Integer,
            direction: Symbol,
            originating_account_id: String,
            type: Symbol,
            accounting: ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting,
            accounting_category_id: T.nilable(String),
            accounting_ledger_class_id: T.nilable(String),
            charge_bearer: T.nilable(Symbol),
            currency: Symbol,
            description: T.nilable(String),
            effective_date: Date,
            expires_at: T.nilable(Time),
            fallback_type: Symbol,
            foreign_exchange_contract: T.nilable(String),
            foreign_exchange_indicator: T.nilable(Symbol),
            ledger_transaction: ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction,
            ledger_transaction_id: String,
            line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem],
            metadata: T::Hash[Symbol, String],
            nsf_protected: T::Boolean,
            originating_party_name: T.nilable(String),
            priority: Symbol,
            process_after: T.nilable(Time),
            purpose: T.nilable(String),
            receiving_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount,
            receiving_account_id: String,
            remittance_information: T.nilable(String),
            send_remittance_advice: T.nilable(T::Boolean),
            statement_descriptor: T.nilable(String),
            subtype: T.nilable(Symbol),
            transaction_monitoring_enabled: T::Boolean,
            ultimate_originating_party_identifier: T.nilable(String),
            ultimate_originating_party_name: T.nilable(String),
            ultimate_receiving_party_identifier: T.nilable(String),
            ultimate_receiving_party_name: T.nilable(String)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(String) }
      attr_accessor :originating_account_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting)) }
      attr_reader :accounting

      sig { params(accounting: ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting).void }
      attr_writer :accounting

      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_category_id

      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_ledger_class_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :charge_bearer

      sig { returns(T.nilable(Symbol)) }
      attr_reader :currency

      sig { params(currency: Symbol).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date

      sig { params(effective_date: Date).void }
      attr_writer :effective_date

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig { returns(T.nilable(Symbol)) }
      attr_reader :fallback_type

      sig { params(fallback_type: Symbol).void }
      attr_writer :fallback_type

      sig { returns(T.nilable(String)) }
      attr_accessor :foreign_exchange_contract

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :foreign_exchange_indicator

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction)) }
      attr_reader :ledger_transaction

      sig do
        params(ledger_transaction: ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction).void
      end
      attr_writer :ledger_transaction

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig { returns(T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem]) }
      attr_reader :line_items

      sig do
        params(line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem]).void
      end
      attr_writer :line_items

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :nsf_protected

      sig { params(nsf_protected: T::Boolean).void }
      attr_writer :nsf_protected

      sig { returns(T.nilable(String)) }
      attr_accessor :originating_party_name

      sig { returns(T.nilable(Symbol)) }
      attr_reader :priority

      sig { params(priority: Symbol).void }
      attr_writer :priority

      sig { returns(T.nilable(Time)) }
      attr_accessor :process_after

      sig { returns(T.nilable(String)) }
      attr_accessor :purpose

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount)) }
      attr_reader :receiving_account

      sig do
        params(receiving_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount).void
      end
      attr_writer :receiving_account

      sig { returns(T.nilable(String)) }
      attr_reader :receiving_account_id

      sig { params(receiving_account_id: String).void }
      attr_writer :receiving_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_remittance_advice

      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :subtype

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :transaction_monitoring_enabled

      sig { params(transaction_monitoring_enabled: T::Boolean).void }
      attr_writer :transaction_monitoring_enabled

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_originating_party_identifier

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_originating_party_name

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_receiving_party_identifier

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_receiving_party_name

      sig do
        params(
          amount: Integer,
          direction: Symbol,
          originating_account_id: String,
          type: Symbol,
          accounting: ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer: T.nilable(Symbol),
          currency: Symbol,
          description: T.nilable(String),
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          ledger_transaction: ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(Symbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        amount:,
        direction:,
        originating_account_id:,
        type:,
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        charge_bearer: nil,
        currency: nil,
        description: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        ledger_transaction: nil,
        ledger_transaction_id: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        subtype: nil,
        transaction_monitoring_enabled: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::Shape) }
      def to_h; end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Accounting < ModernTreasury::BaseModel
        Shape = T.type_alias { {account_id: T.nilable(String), class_id: T.nilable(String)} }

        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        sig { returns(T.nilable(String)) }
        attr_accessor :class_id

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).void }
        def initialize(account_id: nil, class_id: nil); end

        sig { returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::Accounting::Shape) }
        def to_h; end
      end

      class ChargeBearer < ModernTreasury::Enum
        abstract!

        SHARED = T.let(:shared, T.nilable(Symbol))
        SENDER = T.let(:sender, T.nilable(Symbol))
        RECEIVER = T.let(:receiver, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class FallbackType < ModernTreasury::Enum
        abstract!

        ACH = :ach

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ForeignExchangeIndicator < ModernTreasury::Enum
        abstract!

        FIXED_TO_VARIABLE = T.let(:fixed_to_variable, T.nilable(Symbol))
        VARIABLE_TO_FIXED = T.let(:variable_to_fixed, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            ledger_entries: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction::LedgerEntry],
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol,
                              String],
            status: Symbol
          }
        end

        sig do
          returns(T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction::LedgerEntry])
        end
        attr_accessor :ledger_entries

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { returns(T.nilable(Date)) }
        attr_reader :effective_date

        sig { params(effective_date: Date).void }
        attr_writer :effective_date

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :ledgerable_type

        sig { params(ledgerable_type: Symbol).void }
        attr_writer :ledgerable_type

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(Symbol)) }
        attr_reader :status

        sig { params(status: Symbol).void }
        attr_writer :status

        sig do
          params(
            ledger_entries: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction::LedgerEntry],
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol, String],
            status: Symbol
          ).void
        end
        def initialize(
          ledger_entries:,
          description: nil,
          effective_at: nil,
          effective_date: nil,
          external_id: nil,
          ledgerable_id: nil,
          ledgerable_type: nil,
          metadata: nil,
          status: nil
        ); end

        sig { returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction::Shape) }
        def to_h; end

        class LedgerEntry < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              amount: Integer,
              direction: Symbol,
              ledger_account_id: String,
              available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              lock_version: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              show_resulting_ledger_account_balances: T.nilable(T::Boolean)
            }
          end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :ledger_account_id

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :available_balance_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :lock_version

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :pending_balance_amount

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :posted_balance_amount

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :show_resulting_ledger_account_balances

          sig do
            params(
              amount: Integer,
              direction: Symbol,
              ledger_account_id: String,
              available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              lock_version: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              show_resulting_ledger_account_balances: T.nilable(T::Boolean)
            ).void
          end
          def initialize(
            amount:,
            direction:,
            ledger_account_id:,
            available_balance_amount: nil,
            lock_version: nil,
            metadata: nil,
            pending_balance_amount: nil,
            posted_balance_amount: nil,
            show_resulting_ledger_account_balances: nil
          ); end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::LedgerTransaction::LedgerEntry::Shape)
          end
          def to_h; end
        end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Status < ModernTreasury::Enum
          abstract!

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          }
        end

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(String)) }
        attr_accessor :accounting_category_id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          ).void
        end
        def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil); end

        sig { returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::LineItem::Shape) }
        def to_h; end
      end

      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ReceivingAccount < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            account_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::ContactDetail],
            ledger_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::LedgerAccount,
            metadata: T::Hash[Symbol,
                              String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::PartyAddress,
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(Symbol),
            plaid_processor_token: String,
            routing_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::RoutingDetail]
          }
        end

        sig do
          returns(T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::AccountDetail])
        end
        attr_reader :account_details

        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::AccountDetail]
          ).void
        end
        attr_writer :account_details

        sig { returns(T.nilable(Symbol)) }
        attr_reader :account_type

        sig { params(account_type: Symbol).void }
        attr_writer :account_type

        sig do
          returns(T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::ContactDetail])
        end
        attr_reader :contact_details

        sig do
          params(
            contact_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::ContactDetail]
          ).void
        end
        attr_writer :contact_details

        sig do
          returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::LedgerAccount))
        end
        attr_reader :ledger_account

        sig do
          params(
            ledger_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::LedgerAccount
          ).void
        end
        attr_writer :ledger_account

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::PartyAddress))
        end
        attr_reader :party_address

        sig do
          params(
            party_address: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::PartyAddress
          ).void
        end
        attr_writer :party_address

        sig { returns(T.nilable(String)) }
        attr_reader :party_identifier

        sig { params(party_identifier: String).void }
        attr_writer :party_identifier

        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :party_type

        sig { returns(T.nilable(String)) }
        attr_reader :plaid_processor_token

        sig { params(plaid_processor_token: String).void }
        attr_writer :plaid_processor_token

        sig do
          returns(T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::RoutingDetail])
        end
        attr_reader :routing_details

        sig do
          params(
            routing_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::RoutingDetail]
          ).void
        end
        attr_writer :routing_details

        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::ContactDetail],
            ledger_account: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::PartyAddress,
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(Symbol),
            plaid_processor_token: String,
            routing_details: T::Array[ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::RoutingDetail]
          ).void
        end
        def initialize(
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
        ); end

        sig { returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::Shape) }
        def to_h; end

        class AccountDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {account_number: String, account_number_type: Symbol} }

          sig { returns(String) }
          attr_accessor :account_number

          sig { returns(T.nilable(Symbol)) }
          attr_reader :account_number_type

          sig { params(account_number_type: Symbol).void }
          attr_writer :account_number_type

          sig { params(account_number: String, account_number_type: Symbol).void }
          def initialize(account_number:, account_number_type: nil); end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::AccountDetail::Shape)
          end
          def to_h; end

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {contact_identifier: String, contact_identifier_type: Symbol} }

          sig { returns(T.nilable(String)) }
          attr_reader :contact_identifier

          sig { params(contact_identifier: String).void }
          attr_writer :contact_identifier

          sig { returns(T.nilable(Symbol)) }
          attr_reader :contact_identifier_type

          sig { params(contact_identifier_type: Symbol).void }
          attr_writer :contact_identifier_type

          sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
          def initialize(contact_identifier: nil, contact_identifier_type: nil); end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::ContactDetail::Shape)
          end
          def to_h; end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          Shape = T.type_alias do
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
          end

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :ledger_id

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Symbol) }
          attr_accessor :normal_balance

          sig { returns(T.nilable(Integer)) }
          attr_accessor :currency_exponent

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T::Array[String]) }
          attr_reader :ledger_account_category_ids

          sig { params(ledger_account_category_ids: T::Array[String]).void }
          attr_writer :ledger_account_category_ids

          sig { returns(T.nilable(String)) }
          attr_reader :ledgerable_id

          sig { params(ledgerable_id: String).void }
          attr_writer :ledgerable_id

          sig { returns(T.nilable(Symbol)) }
          attr_reader :ledgerable_type

          sig { params(ledgerable_type: Symbol).void }
          attr_writer :ledgerable_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

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
            ).void
          end
          def initialize(
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
          ); end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::LedgerAccount::Shape)
          end
          def to_h; end

          class LedgerableType < ModernTreasury::Enum
            abstract!

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            }
          end

          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :region

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            ).void
          end
          def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::PartyAddress::Shape)
          end
          def to_h; end
        end

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {routing_number: String, routing_number_type: Symbol, payment_type: Symbol} }

          sig { returns(String) }
          attr_accessor :routing_number

          sig { returns(Symbol) }
          attr_accessor :routing_number_type

          sig { returns(T.nilable(Symbol)) }
          attr_reader :payment_type

          sig { params(payment_type: Symbol).void }
          attr_writer :payment_type

          sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
          def initialize(routing_number:, routing_number_type:, payment_type: nil); end

          sig do
            returns(ModernTreasury::Models::PaymentOrderCreateAsyncParams::ReceivingAccount::RoutingDetail::Shape)
          end
          def to_h; end

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
