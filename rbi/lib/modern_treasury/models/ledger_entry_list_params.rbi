# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::BaseModel
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

      sig { returns(T.nilable(Integer)) }
      def as_of_lock_version
      end

      sig { params(_: Integer).returns(Integer) }
      def as_of_lock_version=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def effective_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def effective_at=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, Date])) }
      def effective_date
      end

      sig { params(_: T::Hash[Symbol, Date]).returns(T::Hash[Symbol, Date]) }
      def effective_date=(_)
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

      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      def ledger_account_lock_version
      end

      sig { params(_: T::Hash[Symbol, Integer]).returns(T::Hash[Symbol, Integer]) }
      def ledger_account_lock_version=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_payout_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_payout_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_settlement_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_statement_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_statement_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEntryListParams::OrderBy)) }
      def order_by
      end

      sig do
        params(_: ModernTreasury::Models::LedgerEntryListParams::OrderBy)
          .returns(ModernTreasury::Models::LedgerEntryListParams::OrderBy)
      end
      def order_by=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def show_balances
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def show_balances=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def show_deleted
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def show_deleted=(_)
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
          as_of_lock_version: Integer,
          direction: Symbol,
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Date],
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_lock_version: T::Hash[Symbol, Integer],
          ledger_account_payout_id: String,
          ledger_account_settlement_id: String,
          ledger_account_statement_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::Models::LedgerEntryListParams::OrderBy,
          per_page: Integer,
          show_balances: T::Boolean,
          show_deleted: T::Boolean,
          status: Symbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        as_of_lock_version: nil,
        direction: nil,
        effective_at: nil,
        effective_date: nil,
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        ledger_account_lock_version: nil,
        ledger_account_payout_id: nil,
        ledger_account_settlement_id: nil,
        ledger_account_statement_id: nil,
        ledger_transaction_id: nil,
        metadata: nil,
        order_by: nil,
        per_page: nil,
        show_balances: nil,
        show_deleted: nil,
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
              as_of_lock_version: Integer,
              direction: Symbol,
              effective_at: T::Hash[Symbol, Time],
              effective_date: T::Hash[Symbol, Date],
              ledger_account_category_id: String,
              ledger_account_id: String,
              ledger_account_lock_version: T::Hash[Symbol, Integer],
              ledger_account_payout_id: String,
              ledger_account_settlement_id: String,
              ledger_account_statement_id: String,
              ledger_transaction_id: String,
              metadata: T::Hash[Symbol, String],
              order_by: ModernTreasury::Models::LedgerEntryListParams::OrderBy,
              per_page: Integer,
              show_balances: T::Boolean,
              show_deleted: T::Boolean,
              status: Symbol,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
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
