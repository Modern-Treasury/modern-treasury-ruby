# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class TransactionLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID for the counterparty for this transaction line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :counterparty_id

        sig { returns(Time) }
        attr_accessor :created_at

        # If no matching object is found, `description` will be a free-form text field
        #   describing the line item. This field may contain personally identifiable
        #   information (PII) and is not included in API responses by default. Learn more
        #   about changing your settings at
        #   https://docs.moderntreasury.com/reference/personally-identifiable-information.
        sig { returns(String) }
        attr_accessor :description

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # The ID of the reconciled Expected Payment, otherwise `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :expected_payment_id

        # This field will be true if this object exists in the live environment, or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        # Describes whether this line item should be counted towards the corresponding
        #   transaction’s reconciliation.
        sig { returns(T::Boolean) }
        attr_accessor :reconcilable

        # If a matching object exists in Modern Treasury, the ID will be populated here,
        #   otherwise `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :transactable_id

        # If a matching object exists in Modern Treasury, the type will be populated here,
        #   otherwise `null`.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol)
          )
        end
        attr_accessor :transactable_type

        # The ID of the parent transaction.
        sig { returns(String) }
        attr_accessor :transaction_id

        # Indicates whether the line item is `originating` or `receiving` (see
        #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        sig { returns(ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

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
            transactable_type: T.nilable(ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::OrSymbol),
            transaction_id: String,
            type: ModernTreasury::Models::Transactions::TransactionLineItem::Type::OrSymbol,
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

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType::TaggedSymbol]
              )
          end
          def self.values
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

          sig { override.returns(T::Array[ModernTreasury::Models::Transactions::TransactionLineItem::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end

    TransactionLineItem = Transactions::TransactionLineItem
  end
end
