# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::Models::TransactionCreate
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::TransactionCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        params(request_options: ModernTreasury::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: ModernTreasury::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
