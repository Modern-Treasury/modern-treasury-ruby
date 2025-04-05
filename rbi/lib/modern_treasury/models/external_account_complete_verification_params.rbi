# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(T::Array[Integer])) }
      attr_reader :amounts

      sig { params(amounts: T::Array[Integer]).void }
      attr_writer :amounts

      sig do
        params(
          amounts: T::Array[Integer],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(amounts: nil, request_options: {})
      end

      sig { override.returns({amounts: T::Array[Integer], request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
