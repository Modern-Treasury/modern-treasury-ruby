# typed: strong

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      attr_reader :action_type

      sig { params(action_type: Symbol).void }
      attr_writer :action_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(Symbol)) }
      attr_reader :resource_type

      sig { params(resource_type: Symbol).void }
      attr_writer :resource_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          action_type: Symbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: Symbol,
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        action_type: nil,
        after_cursor: nil,
        metadata: nil,
        per_page: nil,
        resource_type: nil,
        status: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            action_type: Symbol,
            after_cursor: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            resource_type: Symbol,
            status: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class ActionType < ModernTreasury::Enum
        abstract!

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
