# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            updated_at: T::Hash[Symbol, Time]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[String]) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :as_of_lock_version

      sig { params(as_of_lock_version: Integer).void }
      attr_writer :as_of_lock_version

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :effective_at

      sig { params(effective_at: T::Hash[Symbol, Time]).void }
      attr_writer :effective_at

      sig { returns(T.nilable(T::Hash[Symbol, Date])) }
      attr_reader :effective_date

      sig { params(effective_date: T::Hash[Symbol, Date]).void }
      attr_writer :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      attr_reader :ledger_account_lock_version

      sig { params(ledger_account_lock_version: T::Hash[Symbol, Integer]).void }
      attr_writer :ledger_account_lock_version

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_payout_id

      sig { params(ledger_account_payout_id: String).void }
      attr_writer :ledger_account_payout_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_settlement_id

      sig { params(ledger_account_settlement_id: String).void }
      attr_writer :ledger_account_settlement_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_statement_id

      sig { params(ledger_account_statement_id: String).void }
      attr_writer :ledger_account_statement_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEntryListParams::OrderBy)) }
      attr_reader :order_by

      sig { params(order_by: ModernTreasury::Models::LedgerEntryListParams::OrderBy).void }
      attr_writer :order_by

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_deleted

      sig { params(show_deleted: T::Boolean).void }
      attr_writer :show_deleted

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

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
          request_options: ModernTreasury::RequestOpts
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::LedgerEntryListParams::Shape) }
      def to_h; end

      class OrderBy < ModernTreasury::BaseModel
        Shape = T.type_alias { {created_at: Symbol, effective_at: Symbol} }

        sig { returns(T.nilable(Symbol)) }
        attr_reader :created_at

        sig { params(created_at: Symbol).void }
        attr_writer :created_at

        sig { returns(T.nilable(Symbol)) }
        attr_reader :effective_at

        sig { params(effective_at: Symbol).void }
        attr_writer :effective_at

        sig { params(created_at: Symbol, effective_at: Symbol).void }
        def initialize(created_at: nil, effective_at: nil); end

        sig { returns(ModernTreasury::Models::LedgerEntryListParams::OrderBy::Shape) }
        def to_h; end

        class CreatedAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class EffectiveAt < ModernTreasury::Enum
          abstract!

          ASC = :asc
          DESC = :desc

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
