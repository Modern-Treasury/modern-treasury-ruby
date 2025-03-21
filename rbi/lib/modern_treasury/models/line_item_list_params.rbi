# typed: strong

module ModernTreasury
  module Models
    class LineItemListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol) }
      def itemizable_type
      end

      sig do
        params(_: ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol)
          .returns(ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol)
      end
      def itemizable_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol) }

        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LineItemListParams::ItemizableType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
