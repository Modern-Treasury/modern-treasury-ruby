# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[Integer])) }
      def amounts
      end

      sig { params(_: T::Array[Integer]).returns(T::Array[Integer]) }
      def amounts=(_)
      end

      sig do
        params(
          amounts: T::Array[Integer],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
