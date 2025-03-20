# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
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

      # Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #   effective at. For example, for all transactions after Jan 1 2000, use
      #   effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def effective_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def effective_at=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #   effective date. For example, for all dates after Jan 1 2000, use
      #   effective_date%5Bgt%5D=2000-01-01.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def effective_date
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_category_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_category_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_settlement_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: String).returns(String) }
      def ledgerable_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)) }
      def ledgerable_type
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
      end
      def ledgerable_type=(_)
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

      # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   by only one field at a time is supported.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)) }
      def order_by
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::LedgerTransactionListParams::OrderBy, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::LedgerTransactionListParams::OrderBy, ModernTreasury::Util::AnyHash)
          )
      end
      def order_by=(_)
      end

      sig { returns(T.nilable(String)) }
      def partially_posts_ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def partially_posts_ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def posted_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def posted_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def reverses_ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def reverses_ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
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
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Time],
          external_id: String,
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_settlement_id: String,
          ledger_id: String,
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy,
          partially_posts_ledger_transaction_id: String,
          per_page: Integer,
          posted_at: T::Hash[Symbol, Time],
          reverses_ledger_transaction_id: String,
          status: ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        id: nil,
        after_cursor: nil,
        effective_at: nil,
        effective_date: nil,
        external_id: nil,
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        ledger_account_settlement_id: nil,
        ledger_id: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        order_by: nil,
        partially_posts_ledger_transaction_id: nil,
        per_page: nil,
        posted_at: nil,
        reverses_ledger_transaction_id: nil,
        status: nil,
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
              effective_at: T::Hash[Symbol, Time],
              effective_date: T::Hash[Symbol, Time],
              external_id: String,
              ledger_account_category_id: String,
              ledger_account_id: String,
              ledger_account_settlement_id: String,
              ledger_id: String,
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy,
              partially_posts_ledger_transaction_id: String,
              per_page: Integer,
              posted_at: T::Hash[Symbol, Time],
              reverses_ledger_transaction_id: String,
              status: ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module LedgerableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol) }

        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol
          )
        PAPER_ITEM =
          T.let(:paper_item, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)
      end

      class OrderBy < ModernTreasury::BaseModel
        sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)) }
        def created_at
        end

        sig do
          params(_: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)
            .returns(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)
        end
        def created_at=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)) }
        def effective_at
        end

        sig do
          params(_: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)
            .returns(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)
        end
        def effective_at=(_)
        end

        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   by only one field at a time is supported.
        sig do
          params(
            created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol,
            effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(created_at: nil, effective_at: nil)
        end

        sig do
          override
            .returns(
              {
                created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol,
                effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol
              }
            )
        end
        def to_hash
        end

        module CreatedAt
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::TaggedSymbol) }

          ASC = T.let(:asc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)
          DESC = T.let(:desc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)
        end

        module EffectiveAt
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::TaggedSymbol) }

          ASC = T.let(:asc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)
          DESC = T.let(:desc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)
        end
      end

      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)
        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)
      end
    end
  end
end
