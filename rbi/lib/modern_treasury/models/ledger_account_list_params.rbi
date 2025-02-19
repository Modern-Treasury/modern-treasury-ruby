# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      def id
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)) }
      def available_balance_amount
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)
          .returns(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)
      end
      def available_balance_amount=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::Balances)) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountListParams::Balances)
          .returns(ModernTreasury::Models::LedgerAccountListParams::Balances)
      end
      def balances=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def created_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_category_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_category_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def name
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)) }
      def pending_balance_amount
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)
          .returns(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)
      end
      def pending_balance_amount=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)) }
      def posted_balance_amount
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)
          .returns(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)
      end
      def posted_balance_amount=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def updated_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def updated_at=(_)
      end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
          balances: ModernTreasury::Models::LedgerAccountListParams::Balances,
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
          per_page: Integer,
          posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        available_balance_amount: nil,
        balances: nil,
        created_at: nil,
        currency: nil,
        ledger_account_category_id: nil,
        ledger_id: nil,
        metadata: nil,
        name: nil,
        pending_balance_amount: nil,
        per_page: nil,
        posted_balance_amount: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              id: T::Array[String],
              after_cursor: T.nilable(String),
              available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
              balances: ModernTreasury::Models::LedgerAccountListParams::Balances,
              created_at: T::Hash[Symbol, Time],
              currency: String,
              ledger_account_category_id: String,
              ledger_id: String,
              metadata: T::Hash[Symbol, String],
              name: T::Array[String],
              pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
              per_page: Integer,
              posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AvailableBalanceAmount < ModernTreasury::BaseModel
        sig { returns(T.nilable(Integer)) }
        def eq
        end

        sig { params(_: Integer).returns(Integer) }
        def eq=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gt
        end

        sig { params(_: Integer).returns(Integer) }
        def gt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gte
        end

        sig { params(_: Integer).returns(Integer) }
        def gte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lt
        end

        sig { params(_: Integer).returns(Integer) }
        def lt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lte
        end

        sig { params(_: Integer).returns(Integer) }
        def lte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def not_eq
        end

        sig { params(_: Integer).returns(Integer) }
        def not_eq=(_)
        end

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        end

        sig do
          override.returns(
            {
              eq: Integer,
              gt: Integer,
              gte: Integer,
              lt: Integer,
              lte: Integer,
              not_eq: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Balances < ModernTreasury::BaseModel
        sig { returns(T.nilable(Date)) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_lower_bound
        end

        sig { params(_: Time).returns(Time) }
        def effective_at_lower_bound=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at_upper_bound
        end

        sig { params(_: Time).returns(Time) }
        def effective_at_upper_bound=(_)
        end

        sig do
          params(
            as_of_date: Date,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          )
            .void
        end
        def initialize(
          as_of_date: nil,
          effective_at: nil,
          effective_at_lower_bound: nil,
          effective_at_upper_bound: nil
        )
        end

        sig do
          override
            .returns(
              {
                as_of_date: Date,
                effective_at: Time,
                effective_at_lower_bound: Time,
                effective_at_upper_bound: Time
              }
            )
        end
        def to_hash
        end
      end

      class PendingBalanceAmount < ModernTreasury::BaseModel
        sig { returns(T.nilable(Integer)) }
        def eq
        end

        sig { params(_: Integer).returns(Integer) }
        def eq=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gt
        end

        sig { params(_: Integer).returns(Integer) }
        def gt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gte
        end

        sig { params(_: Integer).returns(Integer) }
        def gte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lt
        end

        sig { params(_: Integer).returns(Integer) }
        def lt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lte
        end

        sig { params(_: Integer).returns(Integer) }
        def lte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def not_eq
        end

        sig { params(_: Integer).returns(Integer) }
        def not_eq=(_)
        end

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        end

        sig do
          override.returns(
            {
              eq: Integer,
              gt: Integer,
              gte: Integer,
              lt: Integer,
              lte: Integer,
              not_eq: Integer
            }
          )
        end
        def to_hash
        end
      end

      class PostedBalanceAmount < ModernTreasury::BaseModel
        sig { returns(T.nilable(Integer)) }
        def eq
        end

        sig { params(_: Integer).returns(Integer) }
        def eq=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gt
        end

        sig { params(_: Integer).returns(Integer) }
        def gt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def gte
        end

        sig { params(_: Integer).returns(Integer) }
        def gte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lt
        end

        sig { params(_: Integer).returns(Integer) }
        def lt=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lte
        end

        sig { params(_: Integer).returns(Integer) }
        def lte=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def not_eq
        end

        sig { params(_: Integer).returns(Integer) }
        def not_eq=(_)
        end

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        end

        sig do
          override.returns(
            {
              eq: Integer,
              gt: Integer,
              gte: Integer,
              lt: Integer,
              lte: Integer,
              not_eq: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
