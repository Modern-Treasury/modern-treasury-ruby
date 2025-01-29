# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({amounts: T::Array[Integer]}, ModernTreasury::RequestParameters::Shape) }

      sig { returns(T::Array[Integer]) }
      attr_reader :amounts

      sig { params(amounts: T::Array[Integer]).void }
      attr_writer :amounts

      sig { params(amounts: T::Array[Integer], request_options: ModernTreasury::RequestOpts).void }
      def initialize(amounts: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::ExternalAccountCompleteVerificationParams::Shape) }
      def to_h; end
    end
  end
end
