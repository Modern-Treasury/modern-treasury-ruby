# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateResponse < ModernTreasury::BaseModel
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
      def effective_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_lower_bound=(_)
      end

      sig { returns(Time) }
      def effective_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_upper_bound=(_)
      end

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance) }
      def ending_balance
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance)
      end
      def ending_balance=(_)
      end

      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      sig { returns(Integer) }
      def ledger_account_lock_version
      end

      sig { params(_: Integer).returns(Integer) }
      def ledger_account_lock_version=(_)
      end

      sig { returns(Symbol) }
      def ledger_account_normal_balance
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ledger_account_normal_balance=(_)
      end

      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
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

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance) }
      def starting_balance
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance)
      end
      def starting_balance=(_)
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
          description: T.nilable(String),
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance: Symbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        description:,
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ending_balance:,
        ledger_account_id:,
        ledger_account_lock_version:,
        ledger_account_normal_balance:,
        ledger_id:,
        live_mode:,
        metadata:,
        object:,
        starting_balance:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time,
            ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
            ledger_account_id: String,
            ledger_account_lock_version: Integer,
            ledger_account_normal_balance: Symbol,
            ledger_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class EndingBalance < ModernTreasury::BaseModel
        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance)
        end
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance)
        end
        def available_balance=(_)
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance)
        end
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance)
        end
        def pending_balance=(_)
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance)
        end
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance)
        end
        def posted_balance=(_)
        end

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override.returns(
            {
              available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
          def to_hash
          end
        end
      end

      class StartingBalance < ModernTreasury::BaseModel
        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance)
        end
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance)
        end
        def available_balance=(_)
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance)
        end
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance)
        end
        def pending_balance=(_)
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance)
        end
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance).returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance)
        end
        def posted_balance=(_)
        end

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override.returns(
            {
              available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

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
          def to_hash
          end
        end
      end
    end
  end
end
