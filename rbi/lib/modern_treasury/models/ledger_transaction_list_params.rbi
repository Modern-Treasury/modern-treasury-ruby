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

      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
        params(_: ModernTreasury::Models::LedgerTransactionListParams::OrderBy)
          .returns(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)
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

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy,
          partially_posts_ledger_transaction_id: String,
          per_page: Integer,
          posted_at: T::Hash[Symbol, Time],
          reverses_ledger_transaction_id: String,
          status: Symbol,
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
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy,
              partially_posts_ledger_transaction_id: String,
              per_page: Integer,
              posted_at: T::Hash[Symbol, Time],
              reverses_ledger_transaction_id: String,
              status: Symbol,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class OrderBy < ModernTreasury::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def created_at
        end

        sig { params(_: Symbol).returns(Symbol) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def effective_at
        end

        sig { params(_: Symbol).returns(Symbol) }
        def effective_at=(_)
        end

        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   by only one field at a time is supported.
        sig { params(created_at: Symbol, effective_at: Symbol).returns(T.attached_class) }
        def self.new(created_at: nil, effective_at: nil)
        end

        sig { override.returns({created_at: Symbol, effective_at: Symbol}) }
        def to_hash
        end

        class CreatedAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class EffectiveAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
