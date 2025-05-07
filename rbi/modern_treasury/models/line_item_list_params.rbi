# typed: strong

module ModernTreasury
  module Models
    class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig do
        returns(ModernTreasury::LineItemListParams::ItemizableType::OrSymbol)
      end
      attr_accessor :itemizable_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          itemizable_type:
            ModernTreasury::LineItemListParams::ItemizableType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        itemizable_type:,
        after_cursor: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            itemizable_type:
              ModernTreasury::LineItemListParams::ItemizableType::OrSymbol,
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

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LineItemListParams::ItemizableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::LineItemListParams::ItemizableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::LineItemListParams::ItemizableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LineItemListParams::ItemizableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
