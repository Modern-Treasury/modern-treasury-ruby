# typed: strong

module ModernTreasury
  module Models
    class LegalEntityRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig do
        params(request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
