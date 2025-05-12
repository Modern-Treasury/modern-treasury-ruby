# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::BulkResultListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Unique identifier for the result entity object.
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      sig do
        returns(
          T.nilable(ModernTreasury::BulkResultListParams::EntityType::OrSymbol)
        )
      end
      attr_reader :entity_type

      sig do
        params(
          entity_type:
            ModernTreasury::BulkResultListParams::EntityType::OrSymbol
        ).void
      end
      attr_writer :entity_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Unique identifier for the request that created this bulk result. This is the ID
      # of the bulk request when `request_type` is bulk_request
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      sig do
        returns(
          T.nilable(ModernTreasury::BulkResultListParams::RequestType::OrSymbol)
        )
      end
      attr_reader :request_type

      sig do
        params(
          request_type:
            ModernTreasury::BulkResultListParams::RequestType::OrSymbol
        ).void
      end
      attr_writer :request_type

      # One of successful or failed.
      sig do
        returns(
          T.nilable(ModernTreasury::BulkResultListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::BulkResultListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type:
            ModernTreasury::BulkResultListParams::EntityType::OrSymbol,
          per_page: Integer,
          request_id: String,
          request_type:
            ModernTreasury::BulkResultListParams::RequestType::OrSymbol,
          status: ModernTreasury::BulkResultListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Unique identifier for the result entity object.
        entity_id: nil,
        # The type of the request that created this result. bulk_request is the only
        # supported `request_type`
        entity_type: nil,
        per_page: nil,
        # Unique identifier for the request that created this bulk result. This is the ID
        # of the bulk request when `request_type` is bulk_request
        request_id: nil,
        # The type of the request that created this result. bulk_request is the only
        # supported `request_type`
        request_type: nil,
        # One of successful or failed.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            entity_id: String,
            entity_type:
              ModernTreasury::BulkResultListParams::EntityType::OrSymbol,
            per_page: Integer,
            request_id: String,
            request_type:
              ModernTreasury::BulkResultListParams::RequestType::OrSymbol,
            status: ModernTreasury::BulkResultListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      module EntityType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkResultListParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        LEDGER_ACCOUNT =
          T.let(
            :ledger_account,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        LEDGER_TRANSACTION =
          T.let(
            :ledger_transaction,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        ENTITY_LINK =
          T.let(
            :entity_link,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )
        BULK_ERROR =
          T.let(
            :bulk_error,
            ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkResultListParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      module RequestType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkResultListParams::RequestType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BULK_REQUEST =
          T.let(
            :bulk_request,
            ModernTreasury::BulkResultListParams::RequestType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkResultListParams::RequestType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of successful or failed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkResultListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::BulkResultListParams::Status::TaggedSymbol
          )
        SUCCESSFUL =
          T.let(
            :successful,
            ModernTreasury::BulkResultListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::BulkResultListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::BulkResultListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
