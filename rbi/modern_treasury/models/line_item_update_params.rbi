# typed: strong

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LineItemUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(ModernTreasury::LineItemUpdateParams::ItemizableType::OrSymbol)
      end
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          itemizable_type:
            ModernTreasury::LineItemUpdateParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        itemizable_type:,
        itemizable_id:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            itemizable_type:
              ModernTreasury::LineItemUpdateParams::ItemizableType::OrSymbol,
            itemizable_id: String,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LineItemUpdateParams::ItemizableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::LineItemUpdateParams::ItemizableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::LineItemUpdateParams::ItemizableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LineItemUpdateParams::ItemizableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
