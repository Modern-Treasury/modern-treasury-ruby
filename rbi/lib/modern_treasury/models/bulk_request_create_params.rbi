# typed: strong

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def action_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def action_type=(_)
      end

      sig { returns(Symbol) }
      def resource_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def resource_type=(_)
      end

      sig do
        returns(
          T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ]
        )
      end
      def resources
      end

      sig do
        params(
          _: T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
            )
            ]
          )
      end
      def resources=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          action_type: Symbol,
          resource_type: Symbol,
          resources: T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ],
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              action_type: Symbol,
              resource_type: Symbol,
              resources: T::Array[
              T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
              )
              ],
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Resource < ModernTreasury::Union
        abstract!

        class PaymentOrderAsyncCreateRequest < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(String) }
          def originating_account_id
          end

          sig { params(_: String).returns(String) }
          def originating_account_id=(_)
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
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
              )
            )
          end
          def accounting
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
              )
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

          sig { returns(T.nilable(Symbol)) }
          def charge_bearer
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def charge_bearer=(_)
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

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction
              )
            )
          end
          def ledger_transaction
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction
              )
          end
          def ledger_transaction=(_)
          end

          sig { returns(T.nilable(String)) }
          def ledger_transaction_id
          end

          sig { params(_: String).returns(String) }
          def ledger_transaction_id=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
              )
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

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
              )
            )
          end
          def receiving_account
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
              )
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
          def subtype
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def subtype=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def transaction_monitoring_enabled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def transaction_monitoring_enabled=(_)
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
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

            sig do
              params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class)
            end
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

          class LedgerTransaction < ModernTreasury::BaseModel
            sig do
              returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
            end
            def ledger_entries
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                  ]
                )
            end
            def ledger_entries=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(T.nilable(Time)) }
            def effective_at
            end

            sig { params(_: Time).returns(Time) }
            def effective_at=(_)
            end

            sig { returns(T.nilable(Date)) }
            def effective_date
            end

            sig { params(_: Date).returns(Date) }
            def effective_date=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_id
            end

            sig { params(_: String).returns(String) }
            def external_id=(_)
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

            sig { returns(T.nilable(Symbol)) }
            def status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def status=(_)
            end

            sig do
              params(
                ledger_entries: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String],
                status: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
                  {
                    ledger_entries: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                    ],
                    description: T.nilable(String),
                    effective_at: Time,
                    effective_date: Date,
                    external_id: String,
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
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              sig { returns(Symbol) }
              def direction
              end

              sig { params(_: Symbol).returns(Symbol) }
              def direction=(_)
              end

              sig { returns(String) }
              def ledger_account_id
              end

              sig { params(_: String).returns(String) }
              def ledger_account_id=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def available_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def available_balance_amount=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def lock_version
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def lock_version=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
              def metadata=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def pending_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def pending_balance_amount=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def posted_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def posted_balance_amount=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def show_resulting_ledger_account_balances
              end

              sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def show_resulting_ledger_account_balances=(_)
              end

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
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Status < ModernTreasury::Enum
              abstract!

              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            def account_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                  ]
                )
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                  ]
                )
              )
            end
            def contact_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                  ]
                )
            end
            def contact_details=(_)
            end

            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount
                )
              )
            end
            def ledger_account
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount
                )
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

            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress
                )
              )
            end
            def party_address
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress
                )
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            def routing_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                  ]
                )
            end
            def routing_details=(_)
            end

            sig do
              params(
                account_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                ],
                account_type: Symbol,
                contact_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                ],
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                ]
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
                    account_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                    ],
                    account_type: Symbol,
                    contact_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                    ],
                    ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                    metadata: T::Hash[Symbol, String],
                    name: T.nilable(String),
                    party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                    party_identifier: String,
                    party_name: String,
                    party_type: T.nilable(Symbol),
                    plaid_processor_token: String,
                    routing_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                    ]
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
        end

        class ExpectedPaymentCreateRequest < ModernTreasury::BaseModel
          sig { returns(T.nilable(Integer)) }
          def amount_lower_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_lower_bound=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def amount_upper_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_upper_bound=(_)
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

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def currency=(_)
          end

          sig { returns(T.nilable(Date)) }
          def date_lower_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_lower_bound=(_)
          end

          sig { returns(T.nilable(Date)) }
          def date_upper_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_upper_bound=(_)
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

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def direction=(_)
          end

          sig { returns(T.nilable(String)) }
          def internal_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def internal_account_id=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction
              )
            )
          end
          def ledger_transaction
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction
              )
          end
          def ledger_transaction=(_)
          end

          sig { returns(T.nilable(String)) }
          def ledger_transaction_id
          end

          sig { params(_: String).returns(String) }
          def ledger_transaction_id=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
              )
          end
          def line_items=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def reconciliation_filters
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_filters=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def reconciliation_groups
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_groups=(_)
          end

          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          def reconciliation_rule_variables
          end

          sig do
            params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
              .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          end
          def reconciliation_rule_variables=(_)
          end

          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          sig { returns(T.nilable(String)) }
          def statement_descriptor
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class LedgerTransaction < ModernTreasury::BaseModel
            sig do
              returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
            end
            def ledger_entries
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                  ]
                )
            end
            def ledger_entries=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(T.nilable(Time)) }
            def effective_at
            end

            sig { params(_: Time).returns(Time) }
            def effective_at=(_)
            end

            sig { returns(T.nilable(Date)) }
            def effective_date
            end

            sig { params(_: Date).returns(Date) }
            def effective_date=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_id
            end

            sig { params(_: String).returns(String) }
            def external_id=(_)
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

            sig { returns(T.nilable(Symbol)) }
            def status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def status=(_)
            end

            sig do
              params(
                ledger_entries: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String],
                status: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
                  {
                    ledger_entries: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                    ],
                    description: T.nilable(String),
                    effective_at: Time,
                    effective_date: Date,
                    external_id: String,
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
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              sig { returns(Symbol) }
              def direction
              end

              sig { params(_: Symbol).returns(Symbol) }
              def direction=(_)
              end

              sig { returns(String) }
              def ledger_account_id
              end

              sig { params(_: String).returns(String) }
              def ledger_account_id=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def available_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def available_balance_amount=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def lock_version
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def lock_version=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
              def metadata=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def pending_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def pending_balance_amount=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def posted_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def posted_balance_amount=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def show_resulting_ledger_account_balances
              end

              sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def show_resulting_ledger_account_balances=(_)
              end

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
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Status < ModernTreasury::Enum
              abstract!

              ARCHIVED = :archived
              PENDING = :pending
              POSTED = :posted

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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
        end

        class LedgerTransactionCreateRequest < ModernTreasury::BaseModel
          sig do
            returns(
              T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
            )
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
              )
          end
          def ledger_entries=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(Time)) }
          def effective_at
          end

          sig { params(_: Time).returns(Time) }
          def effective_at=(_)
          end

          sig { returns(T.nilable(Date)) }
          def effective_date
          end

          sig { params(_: Date).returns(Date) }
          def effective_date=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_id
          end

          sig { params(_: String).returns(String) }
          def external_id=(_)
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

          sig { returns(T.nilable(Symbol)) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry],
                  description: T.nilable(String),
                  effective_at: Time,
                  effective_date: Date,
                  external_id: String,
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
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def direction
            end

            sig { params(_: Symbol).returns(Symbol) }
            def direction=(_)
            end

            sig { returns(String) }
            def ledger_account_id
            end

            sig { params(_: String).returns(String) }
            def ledger_account_id=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def available_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def available_balance_amount=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def lock_version
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def lock_version=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def pending_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def pending_balance_amount=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def posted_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def posted_balance_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances=(_)
            end

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
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class TransactionCreateRequest < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(Date)) }
          def as_of_date
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def as_of_date=(_)
          end

          sig { returns(String) }
          def direction
          end

          sig { params(_: String).returns(String) }
          def direction=(_)
          end

          sig { returns(String) }
          def internal_account_id
          end

          sig { params(_: String).returns(String) }
          def internal_account_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def vendor_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def vendor_code_type
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_code_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def posted
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def posted=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig { returns(T.nilable(String)) }
          def vendor_description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_description=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class ID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
              )
            )
          end
          def accounting
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
              )
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

          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
              )
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

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
              )
            )
          end
          def receiving_account
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
              )
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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

            sig do
              params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class)
            end
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            def account_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                  ]
                )
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                  ]
                )
              )
            end
            def contact_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                  ]
                )
            end
            def contact_details=(_)
            end

            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount
                )
              )
            end
            def ledger_account
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount
                )
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

            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress
                )
              )
            end
            def party_address
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress
                )
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            def routing_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                  ]
                )
            end
            def routing_details=(_)
            end

            sig do
              params(
                account_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                ],
                account_type: Symbol,
                contact_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                ],
                ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                ]
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
                    account_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                    ],
                    account_type: Symbol,
                    contact_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                    ],
                    ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                    metadata: T::Hash[Symbol, String],
                    name: T.nilable(String),
                    party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                    party_identifier: String,
                    party_name: String,
                    party_type: T.nilable(Symbol),
                    plaid_processor_token: String,
                    routing_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                    ]
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

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def amount_lower_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_lower_bound=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def amount_upper_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_upper_bound=(_)
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

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def currency=(_)
          end

          sig { returns(T.nilable(Date)) }
          def date_lower_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_lower_bound=(_)
          end

          sig { returns(T.nilable(Date)) }
          def date_upper_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_upper_bound=(_)
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

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def direction=(_)
          end

          sig { returns(T.nilable(String)) }
          def internal_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def internal_account_id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def reconciliation_filters
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_filters=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def reconciliation_groups
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_groups=(_)
          end

          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          def reconciliation_rule_variables
          end

          sig do
            params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
              .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          end
          def reconciliation_rule_variables=(_)
          end

          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
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

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def status=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            RECONCILED = T.let(:reconciled, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { params(id: String, metadata: T::Hash[Symbol, String]).returns(T.attached_class) }
          def self.new(id: nil, metadata: nil)
          end

          sig { override.returns({id: String, metadata: T::Hash[Symbol, String]}) }
          def to_hash
          end
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(Time)) }
          def effective_at
          end

          sig { params(_: Time).returns(Time) }
          def effective_at=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                ]
              )
            )
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
              ]
            )
              .returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                ]
              )
          end
          def ledger_entries=(_)
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

          sig { returns(T.nilable(Symbol)) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig do
            params(
              id: String,
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries: T::Array[
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
              ],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              status: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  id: String,
                  description: T.nilable(String),
                  effective_at: Time,
                  ledger_entries: T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                  ],
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
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def direction
            end

            sig { params(_: Symbol).returns(Symbol) }
            def direction=(_)
            end

            sig { returns(String) }
            def ledger_account_id
            end

            sig { params(_: String).returns(String) }
            def ledger_account_id=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def available_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def available_balance_amount=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def lock_version
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def lock_version=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def pending_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def pending_balance_amount=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def posted_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def posted_balance_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances=(_)
            end

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
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Status < ModernTreasury::Enum
            abstract!

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [[NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID], [NilClass, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
