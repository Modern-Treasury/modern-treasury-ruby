# typed: strong

module ModernTreasury
  module Models
    class HoldListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::HoldListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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

      # Translation missing: en.openapi.descriptions.payment_order.query_params.status
      sig do
        returns(T.nilable(ModernTreasury::HoldListParams::Status::OrSymbol))
      end
      attr_accessor :status

      # Translation missing:
      # en.openapi.descriptions.payment_order.query_params.target_id
      sig { returns(T.nilable(String)) }
      attr_accessor :target_id

      # Translation missing:
      # en.openapi.descriptions.payment_order.query_params.target_type
      sig do
        returns(T.nilable(ModernTreasury::HoldListParams::TargetType::OrSymbol))
      end
      attr_accessor :target_type

      sig do
        params(
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: T.nilable(ModernTreasury::HoldListParams::Status::OrSymbol),
          target_id: T.nilable(String),
          target_type:
            T.nilable(ModernTreasury::HoldListParams::TargetType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Translation missing: en.openapi.descriptions.payment_order.query_params.status
        status: nil,
        # Translation missing:
        # en.openapi.descriptions.payment_order.query_params.target_id
        target_id: nil,
        # Translation missing:
        # en.openapi.descriptions.payment_order.query_params.target_type
        target_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status: T.nilable(ModernTreasury::HoldListParams::Status::OrSymbol),
            target_id: T.nilable(String),
            target_type:
              T.nilable(ModernTreasury::HoldListParams::TargetType::OrSymbol),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Translation missing: en.openapi.descriptions.payment_order.query_params.status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::HoldListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, ModernTreasury::HoldListParams::Status::TaggedSymbol)
        RESOLVED =
          T.let(:resolved, ModernTreasury::HoldListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::HoldListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Translation missing:
      # en.openapi.descriptions.payment_order.query_params.target_type
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::HoldListParams::TargetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::HoldListParams::TargetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::HoldListParams::TargetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
