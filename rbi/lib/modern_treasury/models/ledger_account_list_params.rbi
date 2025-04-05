# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)) }
      attr_reader :available_balance_amount

      sig do
        params(
          available_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :available_balance_amount

      # Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::Balances)) }
      attr_reader :balances

      sig do
        params(
          balances: T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Internal::AnyHash)
        )
          .void
      end
      attr_writer :balances

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :created_at

      sig { params(created_at: T::Hash[Symbol, Time]).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # If you have specific names to retrieve in bulk, you can pass them as query
      #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :name

      sig { params(name: T::Array[String]).void }
      attr_writer :name

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)) }
      attr_reader :pending_balance_amount

      sig do
        params(
          pending_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :pending_balance_amount

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)) }
      attr_reader :posted_balance_amount

      sig do
        params(
          posted_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :posted_balance_amount

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            ModernTreasury::Internal::AnyHash
          ),
          balances: T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Internal::AnyHash),
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            ModernTreasury::Internal::AnyHash
          ),
          per_page: Integer,
          posted_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
            ModernTreasury::Internal::AnyHash
          ),
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      class AvailableBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

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
        def to_hash; end
      end

      class Balances < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_lower_bound

        sig { params(effective_at_lower_bound: Time).void }
        attr_writer :effective_at_lower_bound

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_upper_bound

        sig { params(effective_at_upper_bound: Time).void }
        attr_writer :effective_at_upper_bound

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
        def self.new(
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
        def to_hash; end
      end

      class PendingBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

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
        def to_hash; end
      end

      class PostedBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer)
            .returns(T.attached_class)
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

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
        def to_hash; end
      end
    end
  end
end
