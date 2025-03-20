# typed: strong

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol) }
      def itemizable_type
      end

      sig do
        params(_: ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol)
          .returns(ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol)
      end
      def itemizable_type=(_)
      end

      sig { returns(String) }
      def itemizable_id
      end

      sig { params(_: String).returns(String) }
      def itemizable_id=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(itemizable_type:, itemizable_id:, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              itemizable_type: ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol,
              itemizable_id: String,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module ItemizableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType::TaggedSymbol) }

        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol)
      end
    end
  end
end
