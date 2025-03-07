# typed: strong

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      def action_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def action_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

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

      sig { returns(T.nilable(Symbol)) }
      def resource_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def resource_type=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          action_type: Symbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: Symbol,
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
      def to_hash
      end

      class ActionType < ModernTreasury::Enum
        abstract!

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
