# typed: strong

module ModernTreasury
  module Models
    class LedgerableEventCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Name of the ledgerable event.
      sig { returns(String) }
      attr_accessor :name

      # Additionally data to be used by the Ledger Event Handler.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :custom_data

      # Description of the ledgerable event.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          name: String,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, custom_data: nil, description: nil, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              name: String,
              custom_data: T.nilable(T.anything),
              description: T.nilable(String),
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
