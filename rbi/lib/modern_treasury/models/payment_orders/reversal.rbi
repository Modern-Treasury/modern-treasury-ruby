# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class Reversal < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the ledger transaction linked to the reversal.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_transaction_id

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :object

        # The ID of the relevant Payment Order.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_order_id

        # The reason for the reversal.
        sig { returns(ModernTreasury::Models::PaymentOrders::Reversal::Reason::TaggedSymbol) }
        attr_accessor :reason

        # The current status of the reversal.
        sig { returns(ModernTreasury::Models::PaymentOrders::Reversal::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T::Array[T.nilable(T.anything)]) }
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
            reason: ModernTreasury::Models::PaymentOrders::Reversal::Reason::OrSymbol,
            status: ModernTreasury::Models::PaymentOrders::Reversal::Status::OrSymbol,
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
