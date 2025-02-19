# typed: strong

module ModernTreasury
  module Models
    LedgerTransactionVersion = T.type_alias { LedgerTransactions::LedgerTransactionVersion }

    module LedgerTransactions
      class LedgerTransactionVersion < ModernTreasury::BaseModel
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

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(Time) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_id=(_)
        end

        sig { returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry])
        end
        def ledger_entries=(_)
        end

        sig { returns(String) }
        def ledger_id
        end

        sig { params(_: String).returns(String) }
        def ledger_id=(_)
        end

        sig { returns(String) }
        def ledger_transaction_id
        end

        sig { params(_: String).returns(String) }
        def ledger_transaction_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ledgerable_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def ledgerable_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def ledgerable_type=(_)
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

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(T.nilable(String)) }
        def partially_posts_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def partially_posts_ledger_transaction_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def posted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def posted_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def reversed_by_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reversed_by_ledger_transaction_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def reverses_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reverses_ledger_transaction_id=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Integer) }
        def version
        end

        sig { params(_: Integer).returns(Integer) }
        def version=(_)
        end

        sig do
          params(
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry],
            ledger_id: String,
            ledger_transaction_id: String,
            ledgerable_id: T.nilable(String),
            ledgerable_type: T.nilable(Symbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            partially_posts_ledger_transaction_id: T.nilable(String),
            posted_at: T.nilable(Time),
            reversed_by_ledger_transaction_id: T.nilable(String),
            reverses_ledger_transaction_id: T.nilable(String),
            status: Symbol,
            version: Integer
          )
            .void
        end
        def initialize(
          id:,
          created_at:,
          description:,
          effective_at:,
          effective_date:,
          external_id:,
          ledger_entries:,
          ledger_id:,
          ledger_transaction_id:,
          ledgerable_id:,
          ledgerable_type:,
          live_mode:,
          metadata:,
          object:,
          partially_posts_ledger_transaction_id:,
          posted_at:,
          reversed_by_ledger_transaction_id:,
          reverses_ledger_transaction_id:,
          status:,
          version:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: T.nilable(String),
                ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry],
                ledger_id: String,
                ledger_transaction_id: String,
                ledgerable_id: T.nilable(String),
                ledgerable_type: T.nilable(Symbol),
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                object: String,
                partially_posts_ledger_transaction_id: T.nilable(String),
                posted_at: T.nilable(Time),
                reversed_by_ledger_transaction_id: T.nilable(String),
                reverses_ledger_transaction_id: T.nilable(String),
                status: Symbol,
                version: Integer
              }
            )
        end
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
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

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(String) }
          def ledger_account_currency
          end

          sig { params(_: String).returns(String) }
          def ledger_account_currency=(_)
          end

          sig { returns(Integer) }
          def ledger_account_currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def ledger_account_currency_exponent=(_)
          end

          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def ledger_account_lock_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ledger_account_lock_version=(_)
          end

          sig { returns(String) }
          def ledger_transaction_id
          end

          sig { params(_: String).returns(String) }
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

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              )
            )
          end
          def resulting_ledger_account_balances
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
                )
              )
          end
          def resulting_ledger_account_balances=(_)
          end

          sig { returns(Symbol) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig do
            params(
              id: String,
              amount: Integer,
              created_at: Time,
              direction: Symbol,
              ledger_account_currency: String,
              ledger_account_currency_exponent: Integer,
              ledger_account_id: String,
              ledger_account_lock_version: T.nilable(Integer),
              ledger_transaction_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              resulting_ledger_account_balances: T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              ),
              status: Symbol
            )
              .void
          end
          def initialize(
            id:,
            amount:,
            created_at:,
            direction:,
            ledger_account_currency:,
            ledger_account_currency_exponent:,
            ledger_account_id:,
            ledger_account_lock_version:,
            ledger_transaction_id:,
            live_mode:,
            metadata:,
            object:,
            resulting_ledger_account_balances:,
            status:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  created_at: Time,
                  direction: Symbol,
                  ledger_account_currency: String,
                  ledger_account_currency_exponent: Integer,
                  ledger_account_id: String,
                  ledger_account_lock_version: T.nilable(Integer),
                  ledger_transaction_id: String,
                  live_mode: T::Boolean,
                  metadata: T::Hash[Symbol, String],
                  object: String,
                  resulting_ledger_account_balances: T.nilable(
                    ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
                  ),
                  status: Symbol
                }
              )
          end
          def to_hash
          end

          class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
              )
            end
            def available_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
                )
            end
            def available_balance=(_)
            end

            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
              )
            end
            def pending_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
                )
            end
            def pending_balance=(_)
            end

            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
            end
            def posted_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
                )
            end
            def posted_balance=(_)
            end

            sig do
              params(
                available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
                .void
            end
            def initialize(available_balance:, pending_balance:, posted_balance:)
            end

            sig do
              override
                .returns(
                  {
                    available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                    pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                    posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
                  }
                )
            end
            def to_hash
            end

            class AvailableBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              sig { returns(Integer) }
              def credits
              end

              sig { params(_: Integer).returns(Integer) }
              def credits=(_)
              end

              sig { returns(String) }
              def currency
              end

              sig { params(_: String).returns(String) }
              def currency=(_)
              end

              sig { returns(Integer) }
              def currency_exponent
              end

              sig { params(_: Integer).returns(Integer) }
              def currency_exponent=(_)
              end

              sig { returns(Integer) }
              def debits
              end

              sig { params(_: Integer).returns(Integer) }
              def debits=(_)
              end

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                )
                  .void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
              end

              sig do
                override
                  .returns(
                    {
                      amount: Integer,
                      credits: Integer,
                      currency: String,
                      currency_exponent: Integer,
                      debits: Integer
                    }
                  )
              end
              def to_hash
              end
            end

            class PendingBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              sig { returns(Integer) }
              def credits
              end

              sig { params(_: Integer).returns(Integer) }
              def credits=(_)
              end

              sig { returns(String) }
              def currency
              end

              sig { params(_: String).returns(String) }
              def currency=(_)
              end

              sig { returns(Integer) }
              def currency_exponent
              end

              sig { params(_: Integer).returns(Integer) }
              def currency_exponent=(_)
              end

              sig { returns(Integer) }
              def debits
              end

              sig { params(_: Integer).returns(Integer) }
              def debits=(_)
              end

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                )
                  .void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
              end

              sig do
                override
                  .returns(
                    {
                      amount: Integer,
                      credits: Integer,
                      currency: String,
                      currency_exponent: Integer,
                      debits: Integer
                    }
                  )
              end
              def to_hash
              end
            end

            class PostedBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              sig { returns(Integer) }
              def credits
              end

              sig { params(_: Integer).returns(Integer) }
              def credits=(_)
              end

              sig { returns(String) }
              def currency
              end

              sig { params(_: String).returns(String) }
              def currency=(_)
              end

              sig { returns(Integer) }
              def currency_exponent
              end

              sig { params(_: Integer).returns(Integer) }
              def currency_exponent=(_)
              end

              sig { returns(Integer) }
              def debits
              end

              sig { params(_: Integer).returns(Integer) }
              def debits=(_)
              end

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                )
                  .void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
              end

              sig do
                override
                  .returns(
                    {
                      amount: Integer,
                      credits: Integer,
                      currency: String,
                      currency_exponent: Integer,
                      debits: Integer
                    }
                  )
              end
              def to_hash
              end
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

        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = T.let(:expected_payment, T.nilable(Symbol))
          INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
          PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
          PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
          RETURN = T.let(:return, T.nilable(Symbol))
          REVERSAL = T.let(:reversal, T.nilable(Symbol))

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
