# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def contra_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def contra_ledger_account_id=(_)
      end

      sig { returns(String) }
      def settled_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def settled_ledger_account_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def allow_either_direction
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_either_direction=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def effective_at_upper_bound
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def effective_at_upper_bound=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def skip_settlement_ledger_transaction
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def skip_settlement_ledger_transaction=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status=(_)
      end

      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(Symbol),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        contra_ledger_account_id:,
        settled_ledger_account_id:,
        allow_either_direction: nil,
        description: nil,
        effective_at_upper_bound: nil,
        metadata: nil,
        skip_settlement_ledger_transaction: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              contra_ledger_account_id: String,
              settled_ledger_account_id: String,
              allow_either_direction: T.nilable(T::Boolean),
              description: T.nilable(String),
              effective_at_upper_bound: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              skip_settlement_ledger_transaction: T.nilable(T::Boolean),
              status: T.nilable(Symbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = T.let(:pending, T.nilable(Symbol))
        POSTED = T.let(:posted, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
