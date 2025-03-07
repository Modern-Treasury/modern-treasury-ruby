# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class Reversal < ModernTreasury::BaseModel
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

        sig { returns(T.nilable(String)) }
        def payment_order_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_order_id=(_)
        end

        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(T::Array[T.nilable(T.anything)]) }
        def transaction_ids
        end

        sig { params(_: T::Array[T.nilable(T.anything)]).returns(T::Array[T.nilable(T.anything)]) }
        def transaction_ids=(_)
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
            ledger_transaction_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            payment_order_id: T.nilable(String),
            reason: Symbol,
            status: Symbol,
            transaction_ids: T::Array[T.nilable(T.anything)],
            updated_at: Time
          )
            .void
        end
        def initialize(
          id:,
          created_at:,
          ledger_transaction_id:,
          live_mode:,
          metadata:,
          object:,
          payment_order_id:,
          reason:,
          status:,
          transaction_ids:,
          updated_at:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                ledger_transaction_id: T.nilable(String),
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                object: String,
                payment_order_id: T.nilable(String),
                reason: Symbol,
                status: Symbol,
                transaction_ids: T::Array[T.nilable(T.anything)],
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        class Reason < ModernTreasury::Enum
          abstract!

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Status < ModernTreasury::Enum
          abstract!

          COMPLETED = :completed
          FAILED = :failed
          PENDING = :pending
          PROCESSING = :processing
          RETURNED = :returned
          SENT = :sent

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
