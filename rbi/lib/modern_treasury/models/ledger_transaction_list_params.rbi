# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      # effective at. For example, for all transactions after Jan 1 2000, use
      # effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :effective_at

      sig { params(effective_at: T::Hash[Symbol, Time]).void }
      attr_writer :effective_at

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      # effective date. For example, for all dates after Jan 1 2000, use
      # effective_date%5Bgt%5D=2000-01-01.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :effective_date

      sig { params(effective_date: T::Hash[Symbol, Time]).void }
      attr_writer :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_settlement_id

      sig { params(ledger_account_settlement_id: String).void }
      attr_writer :ledger_account_settlement_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol)) }
      attr_reader :ledgerable_type

      sig do
        params(ledgerable_type: ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::OrSymbol).void
      end
      attr_writer :ledgerable_type

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      # by only one field at a time is supported.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)) }
      attr_reader :order_by

      sig do
        params(
          order_by: T.any(ModernTreasury::Models::LedgerTransactionListParams::OrderBy, ModernTreasury::Internal::AnyHash)
        )
          .void
      end
      attr_writer :order_by

      sig { returns(T.nilable(String)) }
      attr_reader :partially_posts_ledger_transaction_id

      sig { params(partially_posts_ledger_transaction_id: String).void }
      attr_writer :partially_posts_ledger_transaction_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      # posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :posted_at

      sig { params(posted_at: T::Hash[Symbol, Time]).void }
      attr_writer :posted_at

      sig { returns(T.nilable(String)) }
      attr_reader :reverses_ledger_transaction_id

      sig { params(reverses_ledger_transaction_id: String).void }
      attr_writer :reverses_ledger_transaction_id

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol).void }
      attr_writer :status

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

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
          order_by: T.any(ModernTreasury::Models::LedgerTransactionListParams::OrderBy, ModernTreasury::Internal::AnyHash),
          partially_posts_ledger_transaction_id: String,
          per_page: Integer,
          posted_at: T::Hash[Symbol, Time],
          reverses_ledger_transaction_id: String,
          status: ModernTreasury::Models::LedgerTransactionListParams::Status::OrSymbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(:paper_item, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol)
        RETURN =
          T.let(:return, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::LedgerTransactionListParams::LedgerableType::TaggedSymbol])
        end
        def self.values; end
      end

      class OrderBy < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol)) }
        attr_reader :created_at

        sig { params(created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol).void }
        attr_writer :created_at

        sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)) }
        attr_reader :effective_at

        sig do
          params(effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol)
            .void
        end
        attr_writer :effective_at

        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        # by only one field at a time is supported.
        sig do
          params(
            created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol,
            effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(created_at: nil, effective_at: nil); end

        sig do
          override
            .returns(
              {
                created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::OrSymbol,
                effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::OrSymbol
              }
            )
        end
        def to_hash; end

        module CreatedAt
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC = T.let(:asc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::TaggedSymbol)
          DESC =
            T.let(:desc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt::TaggedSymbol])
          end
          def self.values; end
        end

        module EffectiveAt
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(:asc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::TaggedSymbol)
          DESC =
            T.let(:desc, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt::TaggedSymbol])
          end
          def self.values; end
        end
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, ModernTreasury::Models::LedgerTransactionListParams::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerTransactionListParams::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerTransactionListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LedgerTransactionListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
