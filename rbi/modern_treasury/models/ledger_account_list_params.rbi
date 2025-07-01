# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      # filter by balance amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountListParams::AvailableBalanceAmount
          )
        )
      end
      attr_reader :available_balance_amount

      sig do
        params(
          available_balance_amount:
            ModernTreasury::LedgerAccountListParams::AvailableBalanceAmount::OrHash
        ).void
      end
      attr_writer :available_balance_amount

      # Use `balances[effective_at_lower_bound]` and
      # `balances[effective_at_upper_bound]` to get the balances change between the two
      # timestamps. The lower bound is inclusive while the upper bound is exclusive of
      # the provided timestamps. If no value is supplied the balances will be retrieved
      # not including that bound.
      sig do
        returns(T.nilable(ModernTreasury::LedgerAccountListParams::Balances))
      end
      attr_reader :balances

      sig do
        params(
          balances: ModernTreasury::LedgerAccountListParams::Balances::OrHash
        ).void
      end
      attr_writer :balances

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      # created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :created_at

      sig { params(created_at: T::Hash[Symbol, Time]).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # If you have specific names to retrieve in bulk, you can pass them as query
      # parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :name

      sig { params(name: T::Array[String]).void }
      attr_writer :name

      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :normal_balance

      sig do
        params(
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol
        ).void
      end
      attr_writer :normal_balance

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      # filter by balance amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountListParams::PendingBalanceAmount
          )
        )
      end
      attr_reader :pending_balance_amount

      sig do
        params(
          pending_balance_amount:
            ModernTreasury::LedgerAccountListParams::PendingBalanceAmount::OrHash
        ).void
      end
      attr_writer :pending_balance_amount

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      # filter by balance amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountListParams::PostedBalanceAmount
          )
        )
      end
      attr_reader :posted_balance_amount

      sig do
        params(
          posted_balance_amount:
            ModernTreasury::LedgerAccountListParams::PostedBalanceAmount::OrHash
        ).void
      end
      attr_writer :posted_balance_amount

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount:
            ModernTreasury::LedgerAccountListParams::AvailableBalanceAmount::OrHash,
          balances: ModernTreasury::LedgerAccountListParams::Balances::OrHash,
          created_at: T::Hash[Symbol, Time],
          currency: String,
          external_id: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
          pending_balance_amount:
            ModernTreasury::LedgerAccountListParams::PendingBalanceAmount::OrHash,
          per_page: Integer,
          posted_balance_amount:
            ModernTreasury::LedgerAccountListParams::PostedBalanceAmount::OrHash,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        # filter by balance amount.
        available_balance_amount: nil,
        # Use `balances[effective_at_lower_bound]` and
        # `balances[effective_at_upper_bound]` to get the balances change between the two
        # timestamps. The lower bound is inclusive while the upper bound is exclusive of
        # the provided timestamps. If no value is supplied the balances will be retrieved
        # not including that bound.
        balances: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        created_at: nil,
        currency: nil,
        external_id: nil,
        ledger_account_category_id: nil,
        ledger_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # If you have specific names to retrieve in bulk, you can pass them as query
        # parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
        name: nil,
        normal_balance: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        # filter by balance amount.
        pending_balance_amount: nil,
        per_page: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        # filter by balance amount.
        posted_balance_amount: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            available_balance_amount:
              ModernTreasury::LedgerAccountListParams::AvailableBalanceAmount,
            balances: ModernTreasury::LedgerAccountListParams::Balances,
            created_at: T::Hash[Symbol, Time],
            currency: String,
            external_id: String,
            ledger_account_category_id: String,
            ledger_id: String,
            metadata: T::Hash[Symbol, String],
            name: T::Array[String],
            normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
            pending_balance_amount:
              ModernTreasury::LedgerAccountListParams::PendingBalanceAmount,
            per_page: Integer,
            posted_balance_amount:
              ModernTreasury::LedgerAccountListParams::PostedBalanceAmount,
            updated_at: T::Hash[Symbol, Time],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AvailableBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountListParams::AvailableBalanceAmount,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        # filter by balance amount.
        sig do
          params(
            eq: Integer,
            gt: Integer,
            gte: Integer,
            lt: Integer,
            lte: Integer,
            not_eq: Integer
          ).returns(T.attached_class)
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

      class Balances < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountListParams::Balances,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        # `balances[effective_at_upper_bound]` to get the balances change between the two
        # timestamps. The lower bound is inclusive while the upper bound is exclusive of
        # the provided timestamps. If no value is supplied the balances will be retrieved
        # not including that bound.
        sig do
          params(
            as_of_date: Date,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          ).returns(T.attached_class)
        end
        def self.new(
          as_of_date: nil,
          effective_at: nil,
          effective_at_lower_bound: nil,
          effective_at_upper_bound: nil
        )
        end

        sig do
          override.returns(
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

      class PendingBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountListParams::PendingBalanceAmount,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        # filter by balance amount.
        sig do
          params(
            eq: Integer,
            gt: Integer,
            gte: Integer,
            lt: Integer,
            lte: Integer,
            not_eq: Integer
          ).returns(T.attached_class)
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

      class PostedBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountListParams::PostedBalanceAmount,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        # filter by balance amount.
        sig do
          params(
            eq: Integer,
            gt: Integer,
            gte: Integer,
            lt: Integer,
            lte: Integer,
            not_eq: Integer
          ).returns(T.attached_class)
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
