# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all({metadata: T::Hash[Symbol, String]}, ModernTreasury::RequestParameters::Shape)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { params(metadata: T::Hash[Symbol, String], request_options: ModernTreasury::RequestOpts).void }
      def initialize(metadata: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::IncomingPaymentDetailUpdateParams::Shape) }
      def to_h; end
    end
  end
end
