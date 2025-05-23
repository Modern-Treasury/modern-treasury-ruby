# typed: strong

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::BulkRequestListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # One of create, or update.
      sig do
        returns(
          T.nilable(ModernTreasury::BulkRequestListParams::ActionType::OrSymbol)
        )
      end
      attr_reader :action_type

      sig do
        params(
          action_type:
            ModernTreasury::BulkRequestListParams::ActionType::OrSymbol
        ).void
      end
      attr_writer :action_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # One of payment_order, expected_payment, or ledger_transaction.
      sig do
        returns(
          T.nilable(
            ModernTreasury::BulkRequestListParams::ResourceType::OrSymbol
          )
        )
      end
      attr_reader :resource_type

      sig do
        params(
          resource_type:
            ModernTreasury::BulkRequestListParams::ResourceType::OrSymbol
        ).void
      end
      attr_writer :resource_type

      # One of pending, processing, or completed.
      sig do
        returns(
          T.nilable(ModernTreasury::BulkRequestListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::BulkRequestListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          action_type:
            ModernTreasury::BulkRequestListParams::ActionType::OrSymbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type:
            ModernTreasury::BulkRequestListParams::ResourceType::OrSymbol,
          status: ModernTreasury::BulkRequestListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One of create, or update.
        action_type: nil,
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type: nil,
        # One of pending, processing, or completed.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            action_type:
              ModernTreasury::BulkRequestListParams::ActionType::OrSymbol,
            after_cursor: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            resource_type:
              ModernTreasury::BulkRequestListParams::ResourceType::OrSymbol,
            status: ModernTreasury::BulkRequestListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequestListParams::ActionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :create,
            ModernTreasury::BulkRequestListParams::ActionType::TaggedSymbol
          )
        UPDATE =
          T.let(
            :update,
            ModernTreasury::BulkRequestListParams::ActionType::TaggedSymbol
          )
        DELETE =
          T.let(
            :delete,
            ModernTreasury::BulkRequestListParams::ActionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestListParams::ActionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequestListParams::ResourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        LEDGER_ACCOUNT =
          T.let(
            :ledger_account,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        LEDGER_TRANSACTION =
          T.let(
            :ledger_transaction,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        TRANSACTION_LINE_ITEM =
          T.let(
            :transaction_line_item,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )
        ENTITY_LINK =
          T.let(
            :entity_link,
            ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestListParams::ResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequestListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::BulkRequestListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::BulkRequestListParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::BulkRequestListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
