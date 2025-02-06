# typed: strong

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :itemizable_type

      sig { returns(String) }
      attr_accessor :itemizable_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          itemizable_type: Symbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(itemizable_type:, itemizable_id:, metadata: nil, request_options: {}); end

      sig do
        override.returns(
          {
            itemizable_type: Symbol,
            itemizable_id: String,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

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
