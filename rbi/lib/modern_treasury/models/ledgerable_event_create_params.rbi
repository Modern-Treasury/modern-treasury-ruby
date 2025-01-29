# typed: strong

module ModernTreasury
  module Models
    class LedgerableEventCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            name: String,
            custom_data: T.nilable(T.anything),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :custom_data

      sig { returns(T.nilable(String)) }
      attr_accessor :description

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
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(name:, custom_data: nil, description: nil, metadata: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerableEventCreateParams::Shape) }
      def to_h; end
    end
  end
end
