# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :effective_at

      sig { params(effective_at: T::Hash[Symbol, Time]).void }
      attr_writer :effective_at

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

      sig { returns(T.nilable(Symbol)) }
      attr_reader :ledgerable_type

      sig { params(ledgerable_type: Symbol).void }
      attr_writer :ledgerable_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionListParams::OrderBy)) }
      attr_reader :order_by

      sig { params(order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy).void }
      attr_writer :order_by

      sig { returns(T.nilable(String)) }
      attr_reader :partially_posts_ledger_transaction_id

      sig { params(partially_posts_ledger_transaction_id: String).void }
      attr_writer :partially_posts_ledger_transaction_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :posted_at

      sig { params(posted_at: T::Hash[Symbol, Time]).void }
      attr_writer :posted_at

      sig { returns(T.nilable(String)) }
      attr_reader :reverses_ledger_transaction_id

      sig { params(reverses_ledger_transaction_id: String).void }
      attr_writer :reverses_ledger_transaction_id

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
      ); end

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
      def to_hash; end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class OrderBy < ModernTreasury::BaseModel
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

        sig { override.returns({created_at: Symbol, effective_at: Symbol}) }
        def to_hash; end

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
