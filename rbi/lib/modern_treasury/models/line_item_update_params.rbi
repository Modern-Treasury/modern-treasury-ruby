# typed: strong

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def itemizable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def itemizable_type=(_)
      end

      sig { returns(String) }
      def itemizable_id
      end

      sig { params(_: String).returns(String) }
      def itemizable_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          itemizable_type: Symbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(itemizable_type:, itemizable_id:, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              itemizable_type: Symbol,
              itemizable_id: String,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ItemizableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
