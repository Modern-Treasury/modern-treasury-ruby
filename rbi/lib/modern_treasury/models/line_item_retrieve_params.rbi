# typed: strong

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol) }
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(itemizable_type:, itemizable_id:, request_options: {}); end

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
      def to_hash; end

      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
