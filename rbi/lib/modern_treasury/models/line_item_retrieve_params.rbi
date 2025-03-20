# typed: strong

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol) }
      def itemizable_type
      end

      sig do
        params(_: ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol)
          .returns(ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol)
      end
      def itemizable_type=(_)
      end

      sig { returns(String) }
      def itemizable_id
      end

      sig { params(_: String).returns(String) }
      def itemizable_id=(_)
      end

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(itemizable_type:, itemizable_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              itemizable_type: ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol,
              itemizable_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module ItemizableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol) }

        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
