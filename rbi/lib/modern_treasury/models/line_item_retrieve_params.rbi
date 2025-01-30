# typed: strong

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all({itemizable_type: Symbol, itemizable_id: String}, ModernTreasury::RequestParameters::Shape)
      end

      sig { returns(Symbol) }
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      sig do
        params(
          itemizable_type: Symbol,
          itemizable_id: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(itemizable_type:, itemizable_id:, request_options: {}); end

      sig { returns(ModernTreasury::Models::LineItemRetrieveParams::Shape) }
      def to_h; end

      class ItemizableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
