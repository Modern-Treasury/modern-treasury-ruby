# typed: strong

module ModernTreasury
  module Models
    TransactionLineItem = T.type_alias { Transactions::TransactionLineItem }

    module Transactions
      class TransactionLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
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

        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(Time)) }
        def discarded_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def discarded_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def expected_payment_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def expected_payment_id=(_)
        end

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(T::Boolean) }
        def reconcilable
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def reconcilable=(_)
        end

        sig { returns(T.nilable(String)) }
        def transactable_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def transactable_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def transactable_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def transactable_type=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
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
            amount: Integer,
            counterparty_id: T.nilable(String),
            created_at: Time,
            description: String,
            discarded_at: T.nilable(Time),
            expected_payment_id: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            reconcilable: T::Boolean,
            transactable_id: T.nilable(String),
            transactable_type: T.nilable(Symbol),
            transaction_id: String,
            type: Symbol,
            updated_at: Time
          )
            .void
        end
        def initialize(
          id:,
          amount:,
          counterparty_id:,
          created_at:,
          description:,
          discarded_at:,
          expected_payment_id:,
          live_mode:,
          object:,
          reconcilable:,
          transactable_id:,
          transactable_type:,
          transaction_id:,
          type:,
          updated_at:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Integer,
                counterparty_id: T.nilable(String),
                created_at: Time,
                description: String,
                discarded_at: T.nilable(Time),
                expected_payment_id: T.nilable(String),
                live_mode: T::Boolean,
                object: String,
                reconcilable: T::Boolean,
                transactable_id: T.nilable(String),
                transactable_type: T.nilable(Symbol),
                transaction_id: String,
                type: Symbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        class TransactableType < ModernTreasury::Enum
          abstract!

          INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
          PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
          PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
          PAYMENT_ORDER_ATTEMPT = T.let(:payment_order_attempt, T.nilable(Symbol))
          RETURN = T.let(:return, T.nilable(Symbol))
          REVERSAL = T.let(:reversal, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < ModernTreasury::Enum
          abstract!

          ORIGINATING = :originating
          RECEIVING = :receiving

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
