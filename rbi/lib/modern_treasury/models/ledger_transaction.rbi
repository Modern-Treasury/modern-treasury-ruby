# typed: strong

module ModernTreasury
  module Models
    class LedgerTransaction < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(Time) }
      attr_accessor :effective_at

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      sig { returns(T::Array[ModernTreasury::Models::LedgerEntry]) }
      attr_accessor :ledger_entries

      sig { returns(String) }
      attr_accessor :ledger_id

      sig { returns(T.nilable(String)) }
      attr_accessor :ledgerable_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :ledgerable_type

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(String)) }
      attr_accessor :partially_posts_ledger_transaction_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_at

      sig { returns(T.nilable(String)) }
      attr_accessor :reversed_by_ledger_transaction_id

      sig { returns(T.nilable(String)) }
      attr_accessor :reverses_ledger_transaction_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          effective_at: Time,
          effective_date: Date,
          external_id: T.nilable(String),
          ledger_entries: T::Array[ModernTreasury::Models::LedgerEntry],
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type: T.nilable(Symbol),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          partially_posts_ledger_transaction_id: T.nilable(String),
          posted_at: T.nilable(Time),
          reversed_by_ledger_transaction_id: T.nilable(String),
          reverses_ledger_transaction_id: T.nilable(String),
          status: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        description:,
        effective_at:,
        effective_date:,
        external_id:,
        ledger_entries:,
        ledger_id:,
        ledgerable_id:,
        ledgerable_type:,
        live_mode:,
        metadata:,
        object:,
        partially_posts_ledger_transaction_id:,
        posted_at:,
        reversed_by_ledger_transaction_id:,
        reverses_ledger_transaction_id:,
        status:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEntry],
            ledger_id: String,
            ledgerable_id: T.nilable(String),
            ledgerable_type: T.nilable(Symbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            partially_posts_ledger_transaction_id: T.nilable(String),
            posted_at: T.nilable(Time),
            reversed_by_ledger_transaction_id: T.nilable(String),
            reverses_ledger_transaction_id: T.nilable(String),
            status: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = T.let(:expected_payment, T.nilable(Symbol))
        INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
        PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
        PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
        RETURN = T.let(:return, T.nilable(Symbol))
        REVERSAL = T.let(:reversal, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
