# typed: strong

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :action_type

      sig { returns(Symbol) }
      attr_accessor :resource_type

      sig do
        returns(
          T::Array[T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )]
        )
      end
      attr_accessor :resources

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          action_type: Symbol,
          resource_type: Symbol,
          resources: T::Array[T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )],
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            action_type: Symbol,
            resource_type: Symbol,
            resources: T::Array[T.any(
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
            )],
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ActionType < ModernTreasury::Enum
        abstract!

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Resource < ModernTreasury::Union
        abstract!

        class PaymentOrderAsyncCreateRequest < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :originating_account_id

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting))
          end
          attr_reader :accounting

          sig do
            params(
              accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
            ).void
          end
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

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction))
          end
          attr_reader :ledger_transaction

          sig do
            params(
              ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction
            ).void
          end
          attr_writer :ledger_transaction

          sig { returns(T.nilable(String)) }
          attr_reader :ledger_transaction_id

          sig { params(ledger_transaction_id: String).void }
          attr_writer :ledger_transaction_id

          sig do
            returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]))
          end
          attr_reader :line_items

          sig do
            params(
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
            ).void
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

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount))
          end
          attr_reader :receiving_account

          sig do
            params(
              receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
            ).void
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
              accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
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
              ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
              ledger_transaction_id: String,
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_party_name: T.nilable(String),
              priority: Symbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
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
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                direction: Symbol,
                originating_account_id: String,
                type: Symbol,
                accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
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
                ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
                ledger_transaction_id: String,
                line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem],
                metadata: T::Hash[Symbol, String],
                nsf_protected: T::Boolean,
                originating_party_name: T.nilable(String),
                priority: Symbol,
                process_after: T.nilable(Time),
                purpose: T.nilable(String),
                receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
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
              }
            )
          end
          def to_hash
          end

          class Direction < ModernTreasury::Enum
            abstract!

            CREDIT = :credit
            DEBIT = :debit

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Accounting < ModernTreasury::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :account_id

            sig { returns(T.nilable(String)) }
            attr_accessor :class_id

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

          class FallbackType < ModernTreasury::Enum
            abstract!

            ACH = :ach

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

          class LedgerTransaction < ModernTreasury::BaseModel
            sig do
              returns(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry])
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
                ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry],
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
            )
            end

            sig do
              override.returns(
                {
                  ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry],
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
              )
            end
            def to_hash
            end

            class LedgerEntry < ModernTreasury::BaseModel
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
              )
              end

              sig do
                override.returns(
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
                )
              end
              def to_hash
              end
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
              def self.values
              end
            end

            class Status < ModernTreasury::Enum
              abstract!

              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class LineItem < ModernTreasury::BaseModel
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
            def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            end

            sig do
              override.returns(
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class ReceivingAccount < ModernTreasury::BaseModel
            sig do
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail]))
            end
            attr_reader :account_details

            sig do
              params(
                account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail]
              ).void
            end
            attr_writer :account_details

            sig { returns(T.nilable(Symbol)) }
            attr_reader :account_type

            sig { params(account_type: Symbol).void }
            attr_writer :account_type

            sig do
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail]))
            end
            attr_reader :contact_details

            sig do
              params(
                contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail]
              ).void
            end
            attr_writer :contact_details

            sig do
              returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount))
            end
            attr_reader :ledger_account

            sig do
              params(
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount
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
              returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress))
            end
            attr_reader :party_address

            sig do
              params(
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress
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
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail]))
            end
            attr_reader :routing_details

            sig do
              params(
                routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail]
              ).void
            end
            attr_writer :routing_details

            sig do
              params(
                account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail],
                account_type: Symbol,
                contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail],
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail]
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
            )
            end

            sig do
              override.returns(
                {
                  account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail],
                  account_type: Symbol,
                  contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail],
                  ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                  metadata: T::Hash[Symbol,
                                    String],
                  name: T.nilable(String),
                  party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                  party_identifier: String,
                  party_name: String,
                  party_type: T.nilable(Symbol),
                  plaid_processor_token: String,
                  routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail]
                }
              )
            end
            def to_hash
            end

            class AccountDetail < ModernTreasury::BaseModel
              sig { returns(String) }
              attr_accessor :account_number

              sig { returns(T.nilable(Symbol)) }
              attr_reader :account_number_type

              sig { params(account_number_type: Symbol).void }
              attr_writer :account_number_type

              sig { params(account_number: String, account_number_type: Symbol).void }
              def initialize(account_number:, account_number_type: nil)
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class ContactDetail < ModernTreasury::BaseModel
              sig { returns(T.nilable(String)) }
              attr_reader :contact_identifier

              sig { params(contact_identifier: String).void }
              attr_writer :contact_identifier

              sig { returns(T.nilable(Symbol)) }
              attr_reader :contact_identifier_type

              sig { params(contact_identifier_type: Symbol).void }
              attr_writer :contact_identifier_type

              sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
              def initialize(contact_identifier: nil, contact_identifier_type: nil)
              end

              sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
              def to_hash
              end

              class ContactIdentifierType < ModernTreasury::Enum
                abstract!

                EMAIL = :email
                PHONE_NUMBER = :phone_number
                WEBSITE = :website

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class LedgerAccount < ModernTreasury::BaseModel
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

              sig { returns(T.nilable(T::Array[String])) }
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
              )
              end

              sig do
                override.returns(
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class PartyAddress < ModernTreasury::BaseModel
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
              def initialize(
                country: nil,
                line1: nil,
                line2: nil,
                locality: nil,
                postal_code: nil,
                region: nil
              )
              end

              sig do
                override.returns(
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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class RoutingDetail < ModernTreasury::BaseModel
              sig { returns(String) }
              attr_accessor :routing_number

              sig { returns(Symbol) }
              attr_accessor :routing_number_type

              sig { returns(T.nilable(Symbol)) }
              attr_reader :payment_type

              sig { params(payment_type: Symbol).void }
              attr_writer :payment_type

              sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
              def initialize(routing_number:, routing_number_type:, payment_type: nil)
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end
        end

        class ExpectedPaymentCreateRequest < ModernTreasury::BaseModel
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_lower_bound

          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_upper_bound

          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :currency

          sig { returns(T.nilable(Date)) }
          attr_accessor :date_lower_bound

          sig { returns(T.nilable(Date)) }
          attr_accessor :date_upper_bound

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :direction

          sig { returns(T.nilable(String)) }
          attr_accessor :internal_account_id

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction))
          end
          attr_reader :ledger_transaction

          sig do
            params(
              ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction
            ).void
          end
          attr_writer :ledger_transaction

          sig { returns(T.nilable(String)) }
          attr_reader :ledger_transaction_id

          sig { params(ledger_transaction_id: String).void }
          attr_writer :ledger_transaction_id

          sig do
            returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]))
          end
          attr_reader :line_items

          sig do
            params(
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
            ).void
          end
          attr_writer :line_items

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :reconciliation_filters

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :reconciliation_groups

          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          attr_accessor :reconciliation_rule_variables

          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :type

          sig do
            params(
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(Symbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(Symbol),
              internal_account_id: T.nilable(String),
              ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
              ledger_transaction_id: String,
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem],
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              type: T.nilable(Symbol)
            ).void
          end
          def initialize(
            amount_lower_bound: nil,
            amount_upper_bound: nil,
            counterparty_id: nil,
            currency: nil,
            date_lower_bound: nil,
            date_upper_bound: nil,
            description: nil,
            direction: nil,
            internal_account_id: nil,
            ledger_transaction: nil,
            ledger_transaction_id: nil,
            line_items: nil,
            metadata: nil,
            reconciliation_filters: nil,
            reconciliation_groups: nil,
            reconciliation_rule_variables: nil,
            remittance_information: nil,
            statement_descriptor: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount_lower_bound: T.nilable(Integer),
                amount_upper_bound: T.nilable(Integer),
                counterparty_id: T.nilable(String),
                currency: T.nilable(Symbol),
                date_lower_bound: T.nilable(Date),
                date_upper_bound: T.nilable(Date),
                description: T.nilable(String),
                direction: T.nilable(Symbol),
                internal_account_id: T.nilable(String),
                ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
                ledger_transaction_id: String,
                line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem],
                metadata: T::Hash[Symbol, String],
                reconciliation_filters: T.nilable(T.anything),
                reconciliation_groups: T.nilable(T.anything),
                reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
                remittance_information: T.nilable(String),
                statement_descriptor: T.nilable(String),
                type: T.nilable(Symbol)
              }
            )
          end
          def to_hash
          end

          class Direction < ModernTreasury::Enum
            abstract!

            CREDIT = T.let(:credit, T.nilable(Symbol))
            DEBIT = T.let(:debit, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class LedgerTransaction < ModernTreasury::BaseModel
            sig do
              returns(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry])
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
                ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry],
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
            )
            end

            sig do
              override.returns(
                {
                  ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry],
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
              )
            end
            def to_hash
            end

            class LedgerEntry < ModernTreasury::BaseModel
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
              )
              end

              sig do
                override.returns(
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
                )
              end
              def to_hash
              end
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
              def self.values
              end
            end

            class Status < ModernTreasury::Enum
              abstract!

              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class LineItem < ModernTreasury::BaseModel
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
            def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            end

            sig do
              override.returns(
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
        end

        class LedgerTransactionCreateRequest < ModernTreasury::BaseModel
          sig do
            returns(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry])
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
              ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry],
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
          )
          end

          sig do
            override.returns(
              {
                ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry],
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
            )
          end
          def to_hash
          end

          class LedgerEntry < ModernTreasury::BaseModel
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
            )
            end

            sig do
              override.returns(
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
              )
            end
            def to_hash
            end
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
            def self.values
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class TransactionCreateRequest < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(T.nilable(Date)) }
          attr_accessor :as_of_date

          sig { returns(String) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :internal_account_id

          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code

          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :posted

          sig { params(posted: T::Boolean).void }
          attr_writer :posted

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :type

          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_description

          sig do
            params(
              amount: Integer,
              as_of_date: T.nilable(Date),
              direction: String,
              internal_account_id: String,
              vendor_code: T.nilable(String),
              vendor_code_type: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              posted: T::Boolean,
              type: T.nilable(Symbol),
              vendor_description: T.nilable(String)
            ).void
          end
          def initialize(
            amount:,
            as_of_date:,
            direction:,
            internal_account_id:,
            vendor_code:,
            vendor_code_type:,
            metadata: nil,
            posted: nil,
            type: nil,
            vendor_description: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                as_of_date: T.nilable(Date),
                direction: String,
                internal_account_id: String,
                vendor_code: T.nilable(String),
                vendor_code_type: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                posted: T::Boolean,
                type: T.nilable(Symbol),
                vendor_description: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Type < ModernTreasury::Enum
            abstract!

            ACH = T.let(:ach, T.nilable(Symbol))
            AU_BECS = T.let(:au_becs, T.nilable(Symbol))
            BACS = T.let(:bacs, T.nilable(Symbol))
            BOOK = T.let(:book, T.nilable(Symbol))
            CARD = T.let(:card, T.nilable(Symbol))
            CHATS = T.let(:chats, T.nilable(Symbol))
            CHECK = T.let(:check, T.nilable(Symbol))
            CROSS_BORDER = T.let(:cross_border, T.nilable(Symbol))
            DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
            EFT = T.let(:eft, T.nilable(Symbol))
            HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
            INTERAC = T.let(:interac, T.nilable(Symbol))
            MASAV = T.let(:masav, T.nilable(Symbol))
            MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
            NEFT = T.let(:neft, T.nilable(Symbol))
            NICS = T.let(:nics, T.nilable(Symbol))
            NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
            PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
            PROVXCHANGE = T.let(:provxchange, T.nilable(Symbol))
            RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
            RTP = T.let(:rtp, T.nilable(Symbol))
            SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
            SEN = T.let(:sen, T.nilable(Symbol))
            SEPA = T.let(:sepa, T.nilable(Symbol))
            SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
            SIC = T.let(:sic, T.nilable(Symbol))
            SIGNET = T.let(:signet, T.nilable(Symbol))
            SKNBI = T.let(:sknbi, T.nilable(Symbol))
            WIRE = T.let(:wire, T.nilable(Symbol))
            ZENGIN = T.let(:zengin, T.nilable(Symbol))
            OTHER = T.let(:other, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { params(id: String).void }
          def initialize(id: nil)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting))
          end
          attr_reader :accounting

          sig do
            params(
              accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
            ).void
          end
          attr_writer :accounting

          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_category_id

          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_ledger_class_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :amount

          sig { params(amount: Integer).void }
          attr_writer :amount

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :charge_bearer

          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          sig { returns(T.nilable(Symbol)) }
          attr_reader :currency

          sig { params(currency: Symbol).void }
          attr_writer :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Symbol)) }
          attr_reader :direction

          sig { params(direction: Symbol).void }
          attr_writer :direction

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

          sig do
            returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]))
          end
          attr_reader :line_items

          sig do
            params(
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
            ).void
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
          attr_reader :originating_account_id

          sig { params(originating_account_id: String).void }
          attr_writer :originating_account_id

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

          sig do
            returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount))
          end
          attr_reader :receiving_account

          sig do
            params(
              receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
            ).void
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
          attr_reader :status

          sig { params(status: Symbol).void }
          attr_writer :status

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :subtype

          sig { returns(T.nilable(Symbol)) }
          attr_reader :type

          sig { params(type: Symbol).void }
          attr_writer :type

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
              id: String,
              accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
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
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority: Symbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
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
              ultimate_receiving_party_name: T.nilable(String)
            ).void
          end
          def initialize(
            id: nil,
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
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
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
                line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem],
                metadata: T::Hash[Symbol, String],
                nsf_protected: T::Boolean,
                originating_account_id: String,
                originating_party_name: T.nilable(String),
                priority: Symbol,
                process_after: T.nilable(Time),
                purpose: T.nilable(String),
                receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
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
                ultimate_receiving_party_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Accounting < ModernTreasury::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :account_id

            sig { returns(T.nilable(String)) }
            attr_accessor :class_id

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

          class FallbackType < ModernTreasury::Enum
            abstract!

            ACH = :ach

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

          class LineItem < ModernTreasury::BaseModel
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
            def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
            end

            sig do
              override.returns(
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class ReceivingAccount < ModernTreasury::BaseModel
            sig do
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail]))
            end
            attr_reader :account_details

            sig do
              params(
                account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail]
              ).void
            end
            attr_writer :account_details

            sig { returns(T.nilable(Symbol)) }
            attr_reader :account_type

            sig { params(account_type: Symbol).void }
            attr_writer :account_type

            sig do
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail]))
            end
            attr_reader :contact_details

            sig do
              params(
                contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail]
              ).void
            end
            attr_writer :contact_details

            sig do
              returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount))
            end
            attr_reader :ledger_account

            sig do
              params(
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount
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
              returns(T.nilable(ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress))
            end
            attr_reader :party_address

            sig do
              params(
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress
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
              returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail]))
            end
            attr_reader :routing_details

            sig do
              params(
                routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail]
              ).void
            end
            attr_writer :routing_details

            sig do
              params(
                account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail],
                account_type: Symbol,
                contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail],
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail]
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
            )
            end

            sig do
              override.returns(
                {
                  account_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail],
                  account_type: Symbol,
                  contact_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail],
                  ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                  metadata: T::Hash[Symbol,
                                    String],
                  name: T.nilable(String),
                  party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                  party_identifier: String,
                  party_name: String,
                  party_type: T.nilable(Symbol),
                  plaid_processor_token: String,
                  routing_details: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail]
                }
              )
            end
            def to_hash
            end

            class AccountDetail < ModernTreasury::BaseModel
              sig { returns(String) }
              attr_accessor :account_number

              sig { returns(T.nilable(Symbol)) }
              attr_reader :account_number_type

              sig { params(account_number_type: Symbol).void }
              attr_writer :account_number_type

              sig { params(account_number: String, account_number_type: Symbol).void }
              def initialize(account_number:, account_number_type: nil)
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class ContactDetail < ModernTreasury::BaseModel
              sig { returns(T.nilable(String)) }
              attr_reader :contact_identifier

              sig { params(contact_identifier: String).void }
              attr_writer :contact_identifier

              sig { returns(T.nilable(Symbol)) }
              attr_reader :contact_identifier_type

              sig { params(contact_identifier_type: Symbol).void }
              attr_writer :contact_identifier_type

              sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
              def initialize(contact_identifier: nil, contact_identifier_type: nil)
              end

              sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
              def to_hash
              end

              class ContactIdentifierType < ModernTreasury::Enum
                abstract!

                EMAIL = :email
                PHONE_NUMBER = :phone_number
                WEBSITE = :website

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class LedgerAccount < ModernTreasury::BaseModel
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

              sig { returns(T.nilable(T::Array[String])) }
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
              )
              end

              sig do
                override.returns(
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class PartyAddress < ModernTreasury::BaseModel
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
              def initialize(
                country: nil,
                line1: nil,
                line2: nil,
                locality: nil,
                postal_code: nil,
                region: nil
              )
              end

              sig do
                override.returns(
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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class RoutingDetail < ModernTreasury::BaseModel
              sig { returns(String) }
              attr_accessor :routing_number

              sig { returns(Symbol) }
              attr_accessor :routing_number_type

              sig { returns(T.nilable(Symbol)) }
              attr_reader :payment_type

              sig { params(payment_type: Symbol).void }
              attr_writer :payment_type

              sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
              def initialize(routing_number:, routing_number_type:, payment_type: nil)
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_lower_bound

          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_upper_bound

          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :currency

          sig { returns(T.nilable(Date)) }
          attr_accessor :date_lower_bound

          sig { returns(T.nilable(Date)) }
          attr_accessor :date_upper_bound

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :direction

          sig { returns(T.nilable(String)) }
          attr_accessor :internal_account_id

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :reconciliation_filters

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :reconciliation_groups

          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          attr_accessor :reconciliation_rule_variables

          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :status

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :type

          sig do
            params(
              id: String,
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(Symbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(Symbol),
              internal_account_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              status: T.nilable(Symbol),
              type: T.nilable(Symbol)
            ).void
          end
          def initialize(
            id: nil,
            amount_lower_bound: nil,
            amount_upper_bound: nil,
            counterparty_id: nil,
            currency: nil,
            date_lower_bound: nil,
            date_upper_bound: nil,
            description: nil,
            direction: nil,
            internal_account_id: nil,
            metadata: nil,
            reconciliation_filters: nil,
            reconciliation_groups: nil,
            reconciliation_rule_variables: nil,
            remittance_information: nil,
            statement_descriptor: nil,
            status: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_lower_bound: T.nilable(Integer),
                amount_upper_bound: T.nilable(Integer),
                counterparty_id: T.nilable(String),
                currency: T.nilable(Symbol),
                date_lower_bound: T.nilable(Date),
                date_upper_bound: T.nilable(Date),
                description: T.nilable(String),
                direction: T.nilable(Symbol),
                internal_account_id: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                reconciliation_filters: T.nilable(T.anything),
                reconciliation_groups: T.nilable(T.anything),
                reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
                remittance_information: T.nilable(String),
                statement_descriptor: T.nilable(String),
                status: T.nilable(Symbol),
                type: T.nilable(Symbol)
              }
            )
          end
          def to_hash
          end

          class Direction < ModernTreasury::Enum
            abstract!

            CREDIT = T.let(:credit, T.nilable(Symbol))
            DEBIT = T.let(:debit, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            RECONCILED = T.let(:reconciled, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { params(id: String, metadata: T::Hash[Symbol, String]).void }
          def initialize(id: nil, metadata: nil)
          end

          sig { override.returns({id: String, metadata: T::Hash[Symbol, String]}) }
          def to_hash
          end
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Time)) }
          attr_reader :effective_at

          sig { params(effective_at: Time).void }
          attr_writer :effective_at

          sig do
            returns(T.nilable(T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry]))
          end
          attr_reader :ledger_entries

          sig do
            params(
              ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry]
            ).void
          end
          attr_writer :ledger_entries

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
              id: String,
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              status: Symbol
            ).void
          end
          def initialize(
            id: nil,
            description: nil,
            effective_at: nil,
            ledger_entries: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                description: T.nilable(String),
                effective_at: Time,
                ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry],
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String],
                status: Symbol
              }
            )
          end
          def to_hash
          end

          class LedgerEntry < ModernTreasury::BaseModel
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
            )
            end

            sig do
              override.returns(
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
              )
            end
            def to_hash
            end
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
            def self.values
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        sig do
          override.returns(
            [
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest
              ],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest
              ],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest
              ],
              [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest],
              [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID
              ],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID
              ],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID
              ],
              [
                NilClass,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
              ]
            ]
          )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
