# typed: strong

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # One of create, or update.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol)) }
      attr_reader :action_type

      sig { params(action_type: ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol).void }
      attr_writer :action_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # One of payment_order, expected_payment, or ledger_transaction.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol)) }
      attr_reader :resource_type

      sig { params(resource_type: ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol).void }
      attr_writer :resource_type

      # One of pending, processing, or completed.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          action_type: ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol,
          status: ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        action_type: nil,
        after_cursor: nil,
        metadata: nil,
        per_page: nil,
        resource_type: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              action_type: ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol,
              after_cursor: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              resource_type: ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol,
              status: ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol) }

        CREATE = T.let(:create, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)
        UPDATE = T.let(:update, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)
        DELETE = T.let(:delete, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol]) }
        def self.values; end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        LEDGER_ACCOUNT =
          T.let(:ledger_account, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        TRANSACTION =
          T.let(:transaction, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        ENTITY_LINK =
          T.let(:entity_link, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol]) }
        def self.values; end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
