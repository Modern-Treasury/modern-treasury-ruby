# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class TransactionLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The ID for the counterparty for this transaction line item.
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

        # If no matching object is found, `description` will be a free-form text field
        #   describing the line item. This field may contain personally identifiable
        #   information (PII) and is not included in API responses by default. Learn more
        #   about changing your settings at
        #   https://docs.moderntreasury.com/reference/personally-identifiable-information.
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

        # The ID of the reconciled Expected Payment, otherwise `null`.
        sig { returns(T.nilable(String)) }
        def expected_payment_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def expected_payment_id=(_)
        end

        # This field will be true if this object exists in the live environment, or false
        #   if it exists in the test environment.
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

        # Describes whether this line item should be counted towards the corresponding
        #   transaction’s reconciliation.
        sig { returns(T::Boolean) }
        def reconcilable
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def reconcilable=(_)
        end

        # If a matching object exists in Modern Treasury, the ID will be populated here,
        #   otherwise `null`.
        sig { returns(T.nilable(String)) }
        def transactable_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def transactable_id=(_)
        end

        # If a matching object exists in Modern Treasury, the type will be populated here,
        #   otherwise `null`.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol)
          )
        end
        def transactable_type
        end

        sig do
          params(
            _: T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol)
          )
            .returns(
              T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol)
            )
        end
        def transactable_type=(_)
        end

        # The ID of the parent transaction.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # Indicates whether the line item is `originating` or `receiving` (see
        #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        sig { returns(ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol)
            .returns(ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol)
        end
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
            transactable_type: T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol),
            transaction_id: String,
            type: ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                transactable_type: T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol),
                transaction_id: String,
                type: ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # If a matching object exists in Modern Treasury, the type will be populated here,
        #   otherwise `null`.
        module TransactableType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol) }

          INCOMING_PAYMENT_DETAIL =
            T.let(
              :incoming_payment_detail,
              ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          PAPER_ITEM =
            T.let(
              :paper_item,
              ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          PAYMENT_ORDER =
            T.let(
              :payment_order,
              ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          PAYMENT_ORDER_ATTEMPT =
            T.let(
              :payment_order_attempt,
              ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          RETURN =
            T.let(:return, ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol)
          REVERSAL =
            T.let(
              :reversal,
              ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # Indicates whether the line item is `originating` or `receiving` (see
        #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        module Type
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol) }

          ORIGINATING =
            T.let(:originating, ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol)
          RECEIVING =
            T.let(:receiving, ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end

    TransactionLineItem = Transactions::TransactionLineItem
  end
end
