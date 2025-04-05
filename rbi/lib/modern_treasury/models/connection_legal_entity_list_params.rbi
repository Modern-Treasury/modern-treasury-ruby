# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status: ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        connection_id: nil,
        legal_entity_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              connection_id: String,
              legal_entity_id: String,
              per_page: Integer,
              status: ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol) }

        COMPLETED =
          T.let(:completed, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
