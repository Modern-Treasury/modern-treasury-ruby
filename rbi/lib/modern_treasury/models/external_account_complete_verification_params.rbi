# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[Integer])) }
      attr_reader :amounts

      sig { params(amounts: T::Array[Integer]).void }
      attr_writer :amounts

      sig do
        params(
          amounts: T::Array[Integer],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(amounts: nil, request_options: {})
      end

      sig { override.returns({amounts: T::Array[Integer], request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
