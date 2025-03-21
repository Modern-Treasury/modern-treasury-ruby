# typed: strong

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol) }
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          itemizable_type: ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.let(:expected_payments, ModernTreasury::Models::LineItemUpdateParams::ItemizableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::LineItemUpdateParams::ItemizableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LineItemUpdateParams::ItemizableType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
