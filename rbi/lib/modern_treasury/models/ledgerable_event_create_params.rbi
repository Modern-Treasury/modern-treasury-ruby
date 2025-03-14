# typed: strong

module ModernTreasury
  module Models
    class LedgerableEventCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Name of the ledgerable event.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Additionally data to be used by the Ledger Event Handler.
      sig { returns(T.nilable(T.anything)) }
      def custom_data
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def custom_data=(_)
      end

      # Description of the ledgerable event.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          name: String,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
