# typed: strong

module ModernTreasury
  module Models
    TransactionLineItem = T.type_alias { Transactions::TransactionLineItem }

    module Transactions
      class TransactionLineItem < ModernTreasury::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(String)) }
        attr_accessor :counterparty_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :description

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T.nilable(String)) }
        attr_accessor :expected_payment_id

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T::Boolean) }
        attr_accessor :reconcilable

        sig { returns(T.nilable(String)) }
        attr_accessor :transactable_id

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :transactable_type

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { returns(Symbol) }
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
            transactable_type: T.nilable(Symbol),
            transaction_id: String,
            type: Symbol,
            updated_at: Time
          ).void
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
        ); end

        sig { returns(ModernTreasury::Models::Transactions::TransactionLineItem::Shape) }
        def to_h; end

        class TransactableType < ModernTreasury::Enum
          abstract!

          INCOMING_PAYMENT_DETAIL = T.let(:incoming_payment_detail, T.nilable(Symbol))
          PAPER_ITEM = T.let(:paper_item, T.nilable(Symbol))
          PAYMENT_ORDER = T.let(:payment_order, T.nilable(Symbol))
          PAYMENT_ORDER_ATTEMPT = T.let(:payment_order_attempt, T.nilable(Symbol))
          RETURN = T.let(:return, T.nilable(Symbol))
          REVERSAL = T.let(:reversal, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Type < ModernTreasury::Enum
          abstract!

          ORIGINATING = :originating
          RECEIVING = :receiving

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
