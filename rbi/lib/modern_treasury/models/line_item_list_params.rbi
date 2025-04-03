# typed: strong

module ModernTreasury
  module Models
    class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol) }
      attr_accessor :itemizable_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(itemizable_type:, after_cursor: nil, per_page: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              itemizable_type: ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol,
              after_cursor: T.nilable(String),
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol) }

        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
