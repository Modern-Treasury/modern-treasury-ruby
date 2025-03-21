# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
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

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)) }
      def available_balance_amount
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def available_balance_amount=(_)
      end

      # Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::Balances)) }
      def balances
      end

      sig do
        params(_: T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Util::AnyHash))
          .returns(T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Util::AnyHash))
      end
      def balances=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
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

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # If you have specific names to retrieve in bulk, you can pass them as query
      #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      def name
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def name=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)) }
      def pending_balance_amount
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def pending_balance_amount=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)) }
      def posted_balance_amount
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, ModernTreasury::Util::AnyHash)
          )
      end
      def posted_balance_amount=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
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
          available_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            ModernTreasury::Util::AnyHash
          ),
          balances: T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Util::AnyHash),
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            ModernTreasury::Util::AnyHash
          ),
          per_page: Integer,
          posted_balance_amount: T.any(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, ModernTreasury::Util::AnyHash),
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
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

        # Use `balances[effective_at_lower_bound]` and
        #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   not including that bound.
        sig do
          params(
            as_of_date: Date,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          )
            .returns(T.attached_class)
        end
        def self.new(as_of_date: nil, effective_at: nil, effective_at_lower_bound: nil, effective_at_upper_bound: nil)
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

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
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

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
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
