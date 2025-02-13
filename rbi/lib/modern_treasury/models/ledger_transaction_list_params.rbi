# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
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

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def effective_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def effective_at=(_)
      end

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

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)) }
      def order_by
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionListParams::OrderBy).returns(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)
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
        ).void
      end
      def initialize(
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
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
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

        sig { params(created_at: Symbol, effective_at: Symbol).void }
        def initialize(created_at: nil, effective_at: nil)
        end

        sig { override.returns({created_at: Symbol, effective_at: Symbol}) }
        def to_hash
        end

        class CreatedAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class EffectiveAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
