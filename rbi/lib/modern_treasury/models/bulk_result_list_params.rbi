# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Unique identifier for the result entity object.
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)) }
      attr_reader :entity_type

      sig { params(entity_type: ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol).void }
      attr_writer :entity_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol)) }
      attr_reader :request_type

      sig { params(request_type: ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol).void }
      attr_writer :request_type

      # One of successful or failed.
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::BulkResultListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type: ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol,
          per_page: Integer,
          request_id: String,
          request_type: ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol,
          status: ModernTreasury::Models::BulkResultListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        entity_id: nil,
        entity_type: nil,
        per_page: nil,
        request_id: nil,
        request_type: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              entity_id: String,
              entity_type: ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol,
              per_page: Integer,
              request_id: String,
              request_type: ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol,
              status: ModernTreasury::Models::BulkResultListParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      module EntityType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkResultListParams::EntityType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        LEDGER_ACCOUNT =
          T.let(:ledger_account, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        TRANSACTION = T.let(:transaction, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        ENTITY_LINK = T.let(:entity_link, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)
        BULK_ERROR = T.let(:bulk_error, ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkResultListParams::EntityType::TaggedSymbol]) }
        def self.values
        end
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      module RequestType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkResultListParams::RequestType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkResultListParams::RequestType::TaggedSymbol) }

        BULK_REQUEST =
          T.let(:bulk_request, ModernTreasury::Models::BulkResultListParams::RequestType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkResultListParams::RequestType::TaggedSymbol]) }
        def self.values
        end
      end

      # One of successful or failed.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkResultListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol)
        SUCCESSFUL = T.let(:successful, ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
