# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(metadata: nil, request_options: {})
      end

      sig do
        override.returns({metadata: T::Hash[Symbol, String], request_options: ModernTreasury::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
