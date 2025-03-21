# typed: strong

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # One of create, or update.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol)) }
      def action_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol)
          .returns(ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol)
      end
      def action_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol)) }
      def resource_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol)
          .returns(ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol)
      end
      def resource_type=(_)
      end

      # One of pending, processing, or completed.
      sig { returns(T.nilable(ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          action_type: ModernTreasury::Models::BulkRequestListParams::ActionType::OrSymbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: ModernTreasury::Models::BulkRequestListParams::ResourceType::OrSymbol,
          status: ModernTreasury::Models::BulkRequestListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol) }

        CREATE = T.let(:create, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)
        UPDATE = T.let(:update, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)
        DELETE = T.let(:delete, ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::ActionType::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        TRANSACTION =
          T.let(:transaction, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::ResourceType::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
