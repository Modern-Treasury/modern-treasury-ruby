# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig do
          returns(T.nilable(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction))
        end
        def ledger_transaction
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction).returns(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction)
        end
        def ledger_transaction=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig do
          params(
            reason: Symbol,
            ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
            metadata: T::Hash[Symbol, String],
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              reason: Symbol,
              ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Reason < ModernTreasury::Enum
          abstract!

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class LedgerTransaction < ModernTreasury::BaseModel
          sig do
            returns(T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry])
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry]
            ).returns(T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry])
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
              ledger_entries: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry],
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
                ledger_entries: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry],
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
      end
    end
  end
end
