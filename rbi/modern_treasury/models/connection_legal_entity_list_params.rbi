# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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

      sig do
        returns(
          T.nilable(
            ModernTreasury::ConnectionLegalEntityListParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::ConnectionLegalEntityListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status:
            ModernTreasury::ConnectionLegalEntityListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
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
        override.returns(
          {
            after_cursor: T.nilable(String),
            connection_id: String,
            legal_entity_id: String,
            per_page: Integer,
            status:
              ModernTreasury::ConnectionLegalEntityListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ConnectionLegalEntityListParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::ConnectionLegalEntityListParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            ModernTreasury::ConnectionLegalEntityListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::ConnectionLegalEntityListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::ConnectionLegalEntityListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ConnectionLegalEntityListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
