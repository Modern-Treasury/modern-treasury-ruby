# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {}); end

      sig { override.returns({request_options: ModernTreasury::RequestOptions}) }
      def to_hash; end
    end
  end
end
