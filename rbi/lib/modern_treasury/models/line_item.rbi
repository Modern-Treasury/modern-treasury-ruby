# typed: strong

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(ModernTreasury::Models::LineItem::Accounting) }
      attr_accessor :accounting

      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_category_id

      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_ledger_class_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :itemizable_id

      sig { returns(Symbol) }
      attr_accessor :itemizable_type

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          accounting: ModernTreasury::Models::LineItem::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          created_at: Time,
          description: T.nilable(String),
          itemizable_id: String,
          itemizable_type: Symbol,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        accounting:,
        accounting_category_id:,
        accounting_ledger_class_id:,
        amount:,
        created_at:,
        description:,
        itemizable_id:,
        itemizable_type:,
        live_mode:,
        metadata:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accounting: ModernTreasury::Models::LineItem::Accounting,
            accounting_category_id: T.nilable(String),
            accounting_ledger_class_id: T.nilable(String),
            amount: Integer,
            created_at: Time,
            description: T.nilable(String),
            itemizable_id: String,
            itemizable_type: Symbol,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Accounting < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        sig { returns(T.nilable(String)) }
        attr_accessor :class_id

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).void }
        def initialize(account_id: nil, class_id: nil)
        end

        sig { override.returns({account_id: T.nilable(String), class_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class ItemizableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
