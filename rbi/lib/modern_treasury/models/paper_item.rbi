# typed: strong

module ModernTreasury
  module Models
    class PaperItem < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number_safe
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number_safe=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def check_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def check_number=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(Date) }
      def deposit_date
      end

      sig { params(_: Date).returns(Date) }
      def deposit_date=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def lockbox_number
      end

      sig { params(_: String).returns(String) }
      def lockbox_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo_field
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo_field=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T.nilable(String)) }
      def remitter_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remitter_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def routing_number=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
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
          account_number: T.nilable(String),
          account_number_safe: T.nilable(String),
          amount: Integer,
          check_number: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          deposit_date: Date,
          live_mode: T::Boolean,
          lockbox_number: String,
          memo_field: T.nilable(String),
          object: String,
          remitter_name: T.nilable(String),
          routing_number: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          updated_at: Time
        )
          .void
      end
      def initialize(
        id:,
        account_number:,
        account_number_safe:,
        amount:,
        check_number:,
        created_at:,
        currency:,
        deposit_date:,
        live_mode:,
        lockbox_number:,
        memo_field:,
        object:,
        remitter_name:,
        routing_number:,
        status:,
        transaction_id:,
        transaction_line_item_id:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_number: T.nilable(String),
              account_number_safe: T.nilable(String),
              amount: Integer,
              check_number: T.nilable(String),
              created_at: Time,
              currency: Symbol,
              deposit_date: Date,
              live_mode: T::Boolean,
              lockbox_number: String,
              memo_field: T.nilable(String),
              object: String,
              remitter_name: T.nilable(String),
              routing_number: T.nilable(String),
              status: Symbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
