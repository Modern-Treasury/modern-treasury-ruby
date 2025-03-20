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

        # The ID of the ledger transaction linked to the reversal.
        sig { returns(T.nilable(String)) }
        def ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ledger_transaction_id=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
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

        # The ID of the relevant Payment Order.
        sig { returns(T.nilable(String)) }
        def payment_order_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_order_id=(_)
        end

        # The reason for the reversal.
        sig { returns(ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol) }
        def reason
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
            .returns(ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
        end
        def reason=(_)
        end

        # The current status of the reversal.
        sig { returns(ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
            .returns(ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
        end
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
            reason: ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol,
            status: ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol,
            transaction_ids: T::Array[T.nilable(T.anything)],
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                reason: ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol,
                status: ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol,
                transaction_ids: T::Array[T.nilable(T.anything)],
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # The reason for the reversal.
        module Reason
          extend ModernTreasury::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol) }

          DUPLICATE = T.let(:duplicate, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
          INCORRECT_AMOUNT =
            T.let(:incorrect_amount, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
          INCORRECT_RECEIVING_ACCOUNT =
            T.let(:incorrect_receiving_account, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
          DATE_EARLIER_THAN_INTENDED =
            T.let(:date_earlier_than_intended, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)
          DATE_LATER_THAN_INTENDED =
            T.let(:date_later_than_intended, ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol]) }
            def values
            end
          end
        end

        # The current status of the reversal.
        module Status
          extend ModernTreasury::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol) }

          COMPLETED = T.let(:completed, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
          FAILED = T.let(:failed, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
          PENDING = T.let(:pending, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
          PROCESSING = T.let(:processing, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
          RETURNED = T.let(:returned, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)
          SENT = T.let(:sent, ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
