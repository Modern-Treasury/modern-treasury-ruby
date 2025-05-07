# typed: strong

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig do
        returns(
          ModernTreasury::LineItemRetrieveParams::ItemizableType::OrSymbol
        )
      end
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      sig do
        params(
          itemizable_type:
            ModernTreasury::LineItemRetrieveParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(itemizable_type:, itemizable_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            itemizable_type:
              ModernTreasury::LineItemRetrieveParams::ItemizableType::OrSymbol,
            itemizable_id: String,
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
            T.all(
              Symbol,
              ModernTreasury::LineItemRetrieveParams::ItemizableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::LineItemRetrieveParams::ItemizableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::LineItemRetrieveParams::ItemizableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LineItemRetrieveParams::ItemizableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
