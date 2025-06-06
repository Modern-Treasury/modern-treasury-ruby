# typed: strong

module ModernTreasury
  module Models
    class LedgerableEventCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerableEventCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      # strings.
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
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the ledgerable event.
        name:,
        # Additionally data to be used by the Ledger Event Handler.
        custom_data: nil,
        # Description of the ledgerable event.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
