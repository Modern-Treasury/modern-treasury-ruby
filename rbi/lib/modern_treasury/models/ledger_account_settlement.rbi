# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlement < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig { returns(String) }
      def contra_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def contra_ledger_account_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def currency_exponent
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def currency_exponent=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(Time) }
      def effective_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_upper_bound=(_)
      end

      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
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

      sig { returns(String) }
      def settled_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def settled_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def settlement_entry_direction
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def settlement_entry_direction=(_)
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
          amount: T.nilable(Integer),
          contra_ledger_account_id: String,
          created_at: Time,
          currency: String,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          effective_at_upper_bound: Time,
          ledger_id: String,
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          settled_ledger_account_id: String,
          settlement_entry_direction: T.nilable(String),
          status: Symbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        contra_ledger_account_id:,
        created_at:,
        currency:,
        currency_exponent:,
        description:,
        effective_at_upper_bound:,
        ledger_id:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        object:,
        settled_ledger_account_id:,
        settlement_entry_direction:,
        status:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: T.nilable(Integer),
              contra_ledger_account_id: String,
              created_at: Time,
              currency: String,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              effective_at_upper_bound: Time,
              ledger_id: String,
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              settled_ledger_account_id: String,
              settlement_entry_direction: T.nilable(String),
              status: Symbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        ARCHIVING = :archiving
        DRAFTING = :drafting
        PENDING = :pending
        POSTED = :posted
        PROCESSING = :processing

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
