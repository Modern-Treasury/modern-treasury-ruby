# typed: strong

module ModernTreasury
  module Models
    class LedgerTransaction < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(Time) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::LedgerEntry]) }
      def ledger_entries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::LedgerEntry])
          .returns(T::Array[ModernTreasury::Models::LedgerEntry])
      end
      def ledger_entries=(_)
      end

      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledgerable_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def ledgerable_type=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T.nilable(String)) }
      def partially_posts_ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def partially_posts_ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def posted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def posted_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def reversed_by_ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reversed_by_ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def reverses_ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reverses_ledger_transaction_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
