# typed: strong

module ModernTreasury
  module Models
    class PaymentActionListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::PaymentActionListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the associated actionable object.
      sig { returns(T.nilable(String)) }
      attr_reader :actionable_id

      sig { params(actionable_id: String).void }
      attr_writer :actionable_id

      # The type of the associated actionable object. One of `payment_order`,
      # `expected_payment`.
      sig { returns(T.nilable(String)) }
      attr_reader :actionable_type

      sig { params(actionable_type: String).void }
      attr_writer :actionable_type

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
      # `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
      # example, `created_at[gte]=2024-01-01T00:00:00Z`
      sig do
        returns(T.nilable(ModernTreasury::PaymentActionListParams::CreatedAt))
      end
      attr_reader :created_at

      sig do
        params(
          created_at: ModernTreasury::PaymentActionListParams::CreatedAt::OrHash
        ).void
      end
      attr_writer :created_at

      # The ID of one of your internal accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

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

      # Filter by payment actions of a specific status.
      sig do
        returns(
          T.nilable(ModernTreasury::PaymentActionListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::PaymentActionListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # The type of payment action.
      sig do
        returns(
          T.nilable(ModernTreasury::PaymentActionListParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: ModernTreasury::PaymentActionListParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          actionable_id: String,
          actionable_type: String,
          after_cursor: T.nilable(String),
          created_at:
            ModernTreasury::PaymentActionListParams::CreatedAt::OrHash,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::PaymentActionListParams::Status::OrSymbol,
          type: ModernTreasury::PaymentActionListParams::Type::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the associated actionable object.
        actionable_id: nil,
        # The type of the associated actionable object. One of `payment_order`,
        # `expected_payment`.
        actionable_type: nil,
        after_cursor: nil,
        # Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
        # `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
        # example, `created_at[gte]=2024-01-01T00:00:00Z`
        created_at: nil,
        # The ID of one of your internal accounts.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Filter by payment actions of a specific status.
        status: nil,
        # The type of payment action.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            actionable_id: String,
            actionable_type: String,
            after_cursor: T.nilable(String),
            created_at: ModernTreasury::PaymentActionListParams::CreatedAt,
            internal_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status: ModernTreasury::PaymentActionListParams::Status::OrSymbol,
            type: ModernTreasury::PaymentActionListParams::Type::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreatedAt < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::PaymentActionListParams::CreatedAt,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Time)) }
        attr_reader :eq

        sig { params(eq: Time).void }
        attr_writer :eq

        sig { returns(T.nilable(Time)) }
        attr_reader :gt

        sig { params(gt: Time).void }
        attr_writer :gt

        sig { returns(T.nilable(Time)) }
        attr_reader :gte

        sig { params(gte: Time).void }
        attr_writer :gte

        sig { returns(T.nilable(Time)) }
        attr_reader :lt

        sig { params(lt: Time).void }
        attr_writer :lt

        sig { returns(T.nilable(Time)) }
        attr_reader :lte

        sig { params(lte: Time).void }
        attr_writer :lte

        # Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
        # `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
        # example, `created_at[gte]=2024-01-01T00:00:00Z`
        sig do
          params(eq: Time, gt: Time, gte: Time, lt: Time, lte: Time).returns(
            T.attached_class
          )
        end
        def self.new(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil)
        end

        sig do
          override.returns(
            { eq: Time, gt: Time, gte: Time, lt: Time, lte: Time }
          )
        end
        def to_hash
        end
      end

      # Filter by payment actions of a specific status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentActionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        PROCESSABLE =
          T.let(
            :processable,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        SENT =
          T.let(
            :sent,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        ACKNOWLEDGED =
          T.let(
            :acknowledged,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentActionListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of payment action.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentActionListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STOP =
          T.let(
            :stop,
            ModernTreasury::PaymentActionListParams::Type::TaggedSymbol
          )
        ISSUE =
          T.let(
            :issue,
            ModernTreasury::PaymentActionListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentActionListParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
