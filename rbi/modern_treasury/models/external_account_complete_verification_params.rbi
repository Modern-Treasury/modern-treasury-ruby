# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(T.nilable(T::Array[Integer])) }
      attr_reader :amounts

      sig { params(amounts: T::Array[Integer]).void }
      attr_writer :amounts

      sig do
        params(
          amounts: T::Array[Integer],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(amounts: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            amounts: T::Array[Integer],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
