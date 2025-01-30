# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class Reversal < ModernTreasury::BaseModel
        Shape = T.type_alias do
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
            transaction_ids: T.nilable(T::Array[T.nilable(T.anything)]),
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_transaction_id

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_order_id

        sig { returns(Symbol) }
        attr_accessor :reason

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(T.nilable(T::Array[T.nilable(T.anything)])) }
        attr_accessor :transaction_ids

        sig { returns(Time) }
        attr_accessor :updated_at

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
            transaction_ids: T.nilable(T::Array[T.nilable(T.anything)]),
            updated_at: Time
          ).void
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
        ); end

        sig { returns(ModernTreasury::Models::PaymentOrders::Reversal::Shape) }
        def to_h; end

        class Reason < ModernTreasury::Enum
          abstract!

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Status < ModernTreasury::Enum
          abstract!

          COMPLETED = :completed
          FAILED = :failed
          PENDING = :pending
          PROCESSING = :processing
          RETURNED = :returned
          SENT = :sent

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
