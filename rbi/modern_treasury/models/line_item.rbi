# typed: strong

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::LineItem, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(ModernTreasury::LineItem::Accounting) }
      attr_reader :accounting

      sig do
        params(accounting: ModernTreasury::LineItem::Accounting::OrHash).void
      end
      attr_writer :accounting

      # The ID of one of your accounting categories. Note that these will only be
      # accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_category_id

      # The ID of one of the class objects in your accounting system. Class objects
      # track segments of your business independent of client or project. Note that
      # these will only be accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_ledger_class_id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      # A free-form description of the line item.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The ID of the payment order or expected payment.
      sig { returns(String) }
      attr_accessor :itemizable_id

      # One of `payment_orders` or `expected_payments`.
      sig { returns(ModernTreasury::LineItem::ItemizableType::TaggedSymbol) }
      attr_accessor :itemizable_type

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

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          accounting: ModernTreasury::LineItem::Accounting::OrHash,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          created_at: Time,
          description: T.nilable(String),
          itemizable_id: String,
          itemizable_type: ModernTreasury::LineItem::ItemizableType::OrSymbol,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        accounting:,
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_category_id:,
        # The ID of one of the class objects in your accounting system. Class objects
        # track segments of your business independent of client or project. Note that
        # these will only be accessible if your accounting system has been connected.
        accounting_ledger_class_id:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        created_at:,
        # A free-form description of the line item.
        description:,
        # The ID of the payment order or expected payment.
        itemizable_id:,
        # One of `payment_orders` or `expected_payments`.
        itemizable_type:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accounting: ModernTreasury::LineItem::Accounting,
            accounting_category_id: T.nilable(String),
            accounting_ledger_class_id: T.nilable(String),
            amount: Integer,
            created_at: Time,
            description: T.nilable(String),
            itemizable_id: String,
            itemizable_type:
              ModernTreasury::LineItem::ItemizableType::TaggedSymbol,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Accounting < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LineItem::Accounting,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        # The ID of one of the class objects in your accounting system. Class objects
        # track segments of your business independent of client or project. Note that
        # these will only be accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        attr_accessor :class_id

        sig do
          params(
            account_id: T.nilable(String),
            class_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of one of your accounting categories. Note that these will only be
          # accessible if your accounting system has been connected.
          account_id: nil,
          # The ID of one of the class objects in your accounting system. Class objects
          # track segments of your business independent of client or project. Note that
          # these will only be accessible if your accounting system has been connected.
          class_id: nil
        )
        end

        sig do
          override.returns(
            { account_id: T.nilable(String), class_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      # One of `payment_orders` or `expected_payments`.
      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LineItem::ItemizableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :ExpectedPayment,
            ModernTreasury::LineItem::ItemizableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :PaymentOrder,
            ModernTreasury::LineItem::ItemizableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LineItem::ItemizableType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
