# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status: ModernTreasury::Models::ConnectionLegalEntityListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol) }

        COMPLETED =
          T.let(:completed, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
