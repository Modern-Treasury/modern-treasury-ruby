# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # An optional, free-form description for internal use.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(description: nil, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              description: String,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
