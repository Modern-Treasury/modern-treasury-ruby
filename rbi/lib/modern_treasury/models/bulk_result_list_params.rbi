# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Unique identifier for the result entity object.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)) }
      def entity_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
          .returns(ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
      end
      def entity_type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      sig { returns(T.nilable(String)) }
      def request_id
      end

      sig { params(_: String).returns(String) }
      def request_id=(_)
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol)) }
      def request_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol)
          .returns(ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol)
      end
      def request_type=(_)
      end

      # One of successful or failed.
      sig { returns(T.nilable(ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type: ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol,
          per_page: Integer,
          request_id: String,
          request_type: ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol,
          status: ModernTreasury::Models::BulkResultListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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

        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
        TRANSACTION = T.let(:transaction, ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
        BULK_ERROR = T.let(:bulk_error, ModernTreasury::Models::BulkResultListParams::EntityType::OrSymbol)
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      module RequestType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkResultListParams::RequestType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkResultListParams::RequestType::TaggedSymbol) }

        BULK_REQUEST = T.let(:bulk_request, ModernTreasury::Models::BulkResultListParams::RequestType::OrSymbol)
      end

      # One of successful or failed.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkResultListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkResultListParams::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)
        SUCCESSFUL = T.let(:successful, ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::BulkResultListParams::Status::OrSymbol)
      end
    end
  end
end
