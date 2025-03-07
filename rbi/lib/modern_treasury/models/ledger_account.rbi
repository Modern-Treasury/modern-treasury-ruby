# typed: strong

module ModernTreasury
  module Models
    class LedgerAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(ModernTreasury::Models::LedgerAccount::Balances) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccount::Balances)
          .returns(ModernTreasury::Models::LedgerAccount::Balances)
      end
      def balances=(_)
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

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
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

      sig { returns(Integer) }
      def lock_version
      end

      sig { params(_: Integer).returns(Integer) }
      def lock_version=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
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

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
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
          balances: ModernTreasury::Models::LedgerAccount::Balances,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type: T.nilable(Symbol),
          live_mode: T::Boolean,
          lock_version: Integer,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: Symbol,
          object: String,
          updated_at: Time
        )
          .void
      end
      def initialize(
        id:,
        balances:,
        created_at:,
        description:,
        discarded_at:,
        ledger_id:,
        ledgerable_id:,
        ledgerable_type:,
        live_mode:,
        lock_version:,
        metadata:,
        name:,
        normal_balance:,
        object:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              balances: ModernTreasury::Models::LedgerAccount::Balances,
              created_at: Time,
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              ledger_id: String,
              ledgerable_id: T.nilable(String),
              ledgerable_type: T.nilable(Symbol),
              live_mode: T::Boolean,
              lock_version: Integer,
              metadata: T::Hash[Symbol, String],
              name: String,
              normal_balance: Symbol,
              object: String,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class Balances < ModernTreasury::BaseModel
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance) }
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance)
        end
        def available_balance=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_lower_bound
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_at_lower_bound=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_upper_bound
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_at_upper_bound=(_)
        end

        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance) }
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance)
        end
        def pending_balance=(_)
        end

        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance)
        end
        def posted_balance=(_)
        end

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance,
            effective_at_lower_bound: T.nilable(Time),
            effective_at_upper_bound: T.nilable(Time),
            pending_balance: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance
          )
            .void
        end
        def initialize(
          available_balance:,
          effective_at_lower_bound:,
          effective_at_upper_bound:,
          pending_balance:,
          posted_balance:
        )
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance,
                effective_at_lower_bound: T.nilable(Time),
                effective_at_upper_bound: T.nilable(Time),
                pending_balance: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance
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

      class LedgerableType < ModernTreasury::Enum
        abstract!

        COUNTERPARTY = T.let(:counterparty, T.nilable(Symbol))
        EXTERNAL_ACCOUNT = T.let(:external_account, T.nilable(Symbol))
        INTERNAL_ACCOUNT = T.let(:internal_account, T.nilable(Symbol))
        VIRTUAL_ACCOUNT = T.let(:virtual_account, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
