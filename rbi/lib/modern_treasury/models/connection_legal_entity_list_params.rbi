# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        after_cursor: nil,
        connection_id: nil,
        legal_entity_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            connection_id: String,
            legal_entity_id: String,
            per_page: Integer,
            status: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
