# typed: strong

module ModernTreasury
  module Models
    LedgerTransactionVersion = T.type_alias { LedgerTransactions::LedgerTransactionVersion }

    module LedgerTransactions
      class LedgerTransactionVersion < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(Time) }
        attr_accessor :effective_at

        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        sig do
          returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry])
        end
        attr_accessor :ledger_entries

        sig { returns(String) }
        attr_accessor :ledger_id

        sig { returns(String) }
        attr_accessor :ledger_transaction_id

        sig { returns(T.nilable(String)) }
        attr_accessor :ledgerable_id

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :ledgerable_type

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T.nilable(String)) }
        attr_accessor :partially_posts_ledger_transaction_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :posted_at

        sig { returns(T.nilable(String)) }
        attr_accessor :reversed_by_ledger_transaction_id

        sig { returns(T.nilable(String)) }
        attr_accessor :reverses_ledger_transaction_id

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(Integer) }
        attr_accessor :version

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
          ).void
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
        ); end

        sig do
          override.returns(
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
        def to_hash; end

        class LedgerEntry < ModernTreasury::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Symbol) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :ledger_account_currency

          sig { returns(Integer) }
          attr_accessor :ledger_account_currency_exponent

          sig { returns(String) }
          attr_accessor :ledger_account_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :ledger_account_lock_version

          sig { returns(String) }
          attr_accessor :ledger_transaction_id

          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :metadata

          sig { returns(String) }
          attr_accessor :object

          sig do
            returns(T.nilable(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances))
          end
          attr_accessor :resulting_ledger_account_balances

          sig { returns(Symbol) }
          attr_accessor :status

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
              resulting_ledger_account_balances: T.nilable(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances),
              status: Symbol
            ).void
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
          ); end

          sig do
            override.returns(
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
                resulting_ledger_account_balances: T.nilable(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances),
                status: Symbol
              }
            )
          end
          def to_hash; end

          class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
            sig do
              returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance)
            end
            attr_accessor :available_balance

            sig do
              returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance)
            end
            attr_accessor :pending_balance

            sig do
              returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance)
            end
            attr_accessor :posted_balance

            sig do
              params(
                available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              ).void
            end
            def initialize(available_balance:, pending_balance:, posted_balance:); end

            sig do
              override.returns(
                {
                  available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance, posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
                }
              )
            end
            def to_hash; end

            class AvailableBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              attr_accessor :amount

              sig { returns(Integer) }
              attr_accessor :credits

              sig { returns(String) }
              attr_accessor :currency

              sig { returns(Integer) }
              attr_accessor :currency_exponent

              sig { returns(Integer) }
              attr_accessor :debits

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                ).void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

              sig do
                override.returns(
                  {
                    amount: Integer,
                    credits: Integer,
                    currency: String,
                    currency_exponent: Integer,
                    debits: Integer
                  }
                )
              end
              def to_hash; end
            end

            class PendingBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              attr_accessor :amount

              sig { returns(Integer) }
              attr_accessor :credits

              sig { returns(String) }
              attr_accessor :currency

              sig { returns(Integer) }
              attr_accessor :currency_exponent

              sig { returns(Integer) }
              attr_accessor :debits

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                ).void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

              sig do
                override.returns(
                  {
                    amount: Integer,
                    credits: Integer,
                    currency: String,
                    currency_exponent: Integer,
                    debits: Integer
                  }
                )
              end
              def to_hash; end
            end

            class PostedBalance < ModernTreasury::BaseModel
              sig { returns(Integer) }
              attr_accessor :amount

              sig { returns(Integer) }
              attr_accessor :credits

              sig { returns(String) }
              attr_accessor :currency

              sig { returns(Integer) }
              attr_accessor :currency_exponent

              sig { returns(Integer) }
              attr_accessor :debits

              sig do
                params(
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                ).void
              end
              def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

              sig do
                override.returns(
                  {
                    amount: Integer,
                    credits: Integer,
                    currency: String,
                    currency_exponent: Integer,
                    debits: Integer
                  }
                )
              end
              def to_hash; end
            end
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

        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = T.let(:expected_payment, T.nilable(Symbol))
          INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
          PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
          PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
          RETURN = T.let(:return, T.nilable(Symbol))
          REVERSAL = T.let(:reversal, T.nilable(Symbol))

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
    end
  end
end
