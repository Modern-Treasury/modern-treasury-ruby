# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The name of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(description: nil, metadata: nil, name: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
