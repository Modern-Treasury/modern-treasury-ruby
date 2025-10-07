# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class Reversal < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::PaymentOrders::Reversal,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the ledger transaction linked to the reversal.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_transaction_id

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :object

        # The ID of the relevant Payment Order.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_order_id

        # The reason for the reversal.
        sig do
          returns(ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol)
        end
        attr_accessor :reason

        # True if the object is reconciled, false otherwise.
        sig { returns(T::Boolean) }
        attr_accessor :reconciled

        # The current status of the reversal.
        sig do
          returns(ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T::Array[T.nilable(String)]) }
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
            reason: ModernTreasury::PaymentOrders::Reversal::Reason::OrSymbol,
            reconciled: T::Boolean,
            status: ModernTreasury::PaymentOrders::Reversal::Status::OrSymbol,
            transaction_ids: T::Array[T.nilable(String)],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # The ID of the ledger transaction linked to the reversal.
          ledger_transaction_id:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata:,
          object:,
          # The ID of the relevant Payment Order.
          payment_order_id:,
          # The reason for the reversal.
          reason:,
          # True if the object is reconciled, false otherwise.
          reconciled:,
          # The current status of the reversal.
          status:,
          transaction_ids:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              payment_order_id: T.nilable(String),
              reason:
                ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol,
              reconciled: T::Boolean,
              status:
                ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol,
              transaction_ids: T::Array[T.nilable(String)],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The reason for the reversal.
        module Reason
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::PaymentOrders::Reversal::Reason)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DUPLICATE =
            T.let(
              :duplicate,
              ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
            )
          INCORRECT_AMOUNT =
            T.let(
              :incorrect_amount,
              ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
            )
          INCORRECT_RECEIVING_ACCOUNT =
            T.let(
              :incorrect_receiving_account,
              ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
            )
          DATE_EARLIER_THAN_INTENDED =
            T.let(
              :date_earlier_than_intended,
              ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
            )
          DATE_LATER_THAN_INTENDED =
            T.let(
              :date_later_than_intended,
              ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::PaymentOrders::Reversal::Reason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current status of the reversal.
        module Status
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::PaymentOrders::Reversal::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :completed,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :returned,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::PaymentOrders::Reversal::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
