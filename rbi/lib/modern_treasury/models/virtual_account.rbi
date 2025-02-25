# typed: strong

module ModernTreasury
  module Models
    class VirtualAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::AccountDetail]) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::AccountDetail])
      end
      def account_details=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def credit_ledger_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def credit_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def debit_ledger_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def debit_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_id=(_)
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
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::RoutingDetail]) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::RoutingDetail])
      end
      def routing_details=(_)
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
          account_details: T::Array[ModernTreasury::Models::AccountDetail],
          counterparty_id: T.nilable(String),
          created_at: Time,
          credit_ledger_account_id: T.nilable(String),
          debit_ledger_account_id: T.nilable(String),
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          internal_account_id: String,
          ledger_account_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          object: String,
          routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
          updated_at: Time
        )
          .void
      end
      def initialize(
        id:,
        account_details:,
        counterparty_id:,
        created_at:,
        credit_ledger_account_id:,
        debit_ledger_account_id:,
        description:,
        discarded_at:,
        internal_account_id:,
        ledger_account_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        routing_details:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_details: T::Array[ModernTreasury::Models::AccountDetail],
              counterparty_id: T.nilable(String),
              created_at: Time,
              credit_ledger_account_id: T.nilable(String),
              debit_ledger_account_id: T.nilable(String),
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              internal_account_id: String,
              ledger_account_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              name: String,
              object: String,
              routing_details: T::Array[ModernTreasury::Models::RoutingDetail],
              updated_at: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
