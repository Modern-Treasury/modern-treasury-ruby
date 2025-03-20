# typed: strong

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(ModernTreasury::Models::LineItem::Accounting) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::LineItem::Accounting)
          .returns(ModernTreasury::Models::LineItem::Accounting)
      end
      def accounting=(_)
      end

      # The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      def accounting_category_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_category_id=(_)
      end

      # The ID of one of the class objects in your accounting system. Class objects
      #   track segments of your business independent of client or project. Note that
      #   these will only be accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      def accounting_ledger_class_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_ledger_class_id=(_)
      end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # A free-form description of the line item.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The ID of the payment order or expected payment.
      sig { returns(String) }
      def itemizable_id
      end

      sig { params(_: String).returns(String) }
      def itemizable_id=(_)
      end

      # One of `payment_orders` or `expected_payments`.
      sig { returns(ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol) }
      def itemizable_type
      end

      sig do
        params(_: ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol)
          .returns(ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol)
      end
      def itemizable_type=(_)
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

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
          itemizable_type: ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              id: String,
              accounting: ModernTreasury::Models::LineItem::Accounting,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              amount: Integer,
              created_at: Time,
              description: T.nilable(String),
              itemizable_id: String,
              itemizable_type: ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol,
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
        # The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def account_id=(_)
        end

        # The ID of one of the class objects in your accounting system. Class objects
        #   track segments of your business independent of client or project. Note that
        #   these will only be accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def class_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def class_id=(_)
        end

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(account_id: nil, class_id: nil)
        end

        sig { override.returns({account_id: T.nilable(String), class_id: T.nilable(String)}) }
        def to_hash
        end
      end

      # One of `payment_orders` or `expected_payments`.
      module ItemizableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItem::ItemizableType) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol) }

        EXPECTED_PAYMENT =
          T.let(:ExpectedPayment, ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol)
        PAYMENT_ORDER = T.let(:PaymentOrder, ModernTreasury::Models::LineItem::ItemizableType::TaggedSymbol)
      end
    end
  end
end
