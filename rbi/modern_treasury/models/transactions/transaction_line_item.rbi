# typed: strong

module ModernTreasury
  module Models
    TransactionLineItem = Transactions::TransactionLineItem

    module Transactions
      class TransactionLineItem < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Transactions::TransactionLineItem,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # If a matching object exists in Modern Treasury, `amount` will be populated.
        # Value in specified currency's smallest unit (taken from parent Transaction).
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID for the counterparty for this transaction line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :counterparty_id

        sig { returns(Time) }
        attr_accessor :created_at

        # If no matching object is found, `description` will be a free-form text field
        # describing the line item. This field may contain personally identifiable
        # information (PII) and is not included in API responses by default. Learn more
        # about changing your settings at
        # https://docs.moderntreasury.com/reference/personally-identifiable-information.
        sig { returns(String) }
        attr_accessor :description

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # The ID of the reconciled Expected Payment, otherwise `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :expected_payment_id

        # This field will be true if this object exists in the live environment, or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        # Describes whether this line item should be counted towards the corresponding
        # transaction’s reconciliation.
        sig { returns(T::Boolean) }
        attr_accessor :reconcilable

        # The ID of the reconciliation group this line item belongs to, otherwise `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :reconciliation_group_id

        # If a matching object exists in Modern Treasury, the ID will be populated here,
        # otherwise `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :transactable_id

        # If a matching object exists in Modern Treasury, the type will be populated here,
        # otherwise `null`.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          )
        end
        attr_accessor :transactable_type

        # The ID of the parent transaction.
        sig { returns(String) }
        attr_accessor :transaction_id

        # Indicates whether the line item is `originating` or `receiving` (see
        # https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        sig do
          returns(
            ModernTreasury::Transactions::TransactionLineItem::Type::TaggedSymbol
          )
        end
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
            reconciliation_group_id: T.nilable(String),
            transactable_id: T.nilable(String),
            transactable_type:
              T.nilable(
                ModernTreasury::Transactions::TransactionLineItem::TransactableType::OrSymbol
              ),
            transaction_id: String,
            type:
              ModernTreasury::Transactions::TransactionLineItem::Type::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # If a matching object exists in Modern Treasury, `amount` will be populated.
          # Value in specified currency's smallest unit (taken from parent Transaction).
          amount:,
          # The ID for the counterparty for this transaction line item.
          counterparty_id:,
          created_at:,
          # If no matching object is found, `description` will be a free-form text field
          # describing the line item. This field may contain personally identifiable
          # information (PII) and is not included in API responses by default. Learn more
          # about changing your settings at
          # https://docs.moderntreasury.com/reference/personally-identifiable-information.
          description:,
          discarded_at:,
          # The ID of the reconciled Expected Payment, otherwise `null`.
          expected_payment_id:,
          # This field will be true if this object exists in the live environment, or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          # Describes whether this line item should be counted towards the corresponding
          # transaction’s reconciliation.
          reconcilable:,
          # The ID of the reconciliation group this line item belongs to, otherwise `null`.
          reconciliation_group_id:,
          # If a matching object exists in Modern Treasury, the ID will be populated here,
          # otherwise `null`.
          transactable_id:,
          # If a matching object exists in Modern Treasury, the type will be populated here,
          # otherwise `null`.
          transactable_type:,
          # The ID of the parent transaction.
          transaction_id:,
          # Indicates whether the line item is `originating` or `receiving` (see
          # https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
          type:,
          updated_at:
        )
        end

        sig do
          override.returns(
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
              reconciliation_group_id: T.nilable(String),
              transactable_id: T.nilable(String),
              transactable_type:
                T.nilable(
                  ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
                ),
              transaction_id: String,
              type:
                ModernTreasury::Transactions::TransactionLineItem::Type::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # If a matching object exists in Modern Treasury, the type will be populated here,
        # otherwise `null`.
        module TransactableType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::Transactions::TransactionLineItem::TransactableType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMING_PAYMENT_DETAIL =
            T.let(
              :incoming_payment_detail,
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          PAYMENT_ORDER =
            T.let(
              :payment_order,
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          PAYMENT_ORDER_ATTEMPT =
            T.let(
              :payment_order_attempt,
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          RETURN =
            T.let(
              :return,
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )
          REVERSAL =
            T.let(
              :reversal,
              ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Transactions::TransactionLineItem::TransactableType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates whether the line item is `originating` or `receiving` (see
        # https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        module Type
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::Transactions::TransactionLineItem::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ORIGINATING =
            T.let(
              :originating,
              ModernTreasury::Transactions::TransactionLineItem::Type::TaggedSymbol
            )
          RECEIVING =
            T.let(
              :receiving,
              ModernTreasury::Transactions::TransactionLineItem::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Transactions::TransactionLineItem::Type::TaggedSymbol
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
