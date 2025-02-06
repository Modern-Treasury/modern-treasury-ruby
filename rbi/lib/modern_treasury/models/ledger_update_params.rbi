# typed: strong

module ModernTreasury
  module Models
    class LedgerUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(description: nil, metadata: nil, name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
