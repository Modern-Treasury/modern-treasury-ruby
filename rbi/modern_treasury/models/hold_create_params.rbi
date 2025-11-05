# typed: strong

module ModernTreasury
  module Models
    class HoldCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::HoldCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The status of the hold
      sig { returns(ModernTreasury::HoldCreateParams::Status::OrSymbol) }
      attr_accessor :status

      # The ID of the target to hold
      sig { returns(String) }
      attr_accessor :target_id

      # The type of target to hold
      sig { returns(ModernTreasury::HoldCreateParams::TargetType::OrSymbol) }
      attr_accessor :target_type

      # Additional metadata for the hold
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # The reason for the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          status: ModernTreasury::HoldCreateParams::Status::OrSymbol,
          target_id: String,
          target_type: ModernTreasury::HoldCreateParams::TargetType::OrSymbol,
          metadata: T.nilable(T::Hash[Symbol, String]),
          reason: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The status of the hold
        status:,
        # The ID of the target to hold
        target_id:,
        # The type of target to hold
        target_type:,
        # Additional metadata for the hold
        metadata: nil,
        # The reason for the hold
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: ModernTreasury::HoldCreateParams::Status::OrSymbol,
            target_id: String,
            target_type: ModernTreasury::HoldCreateParams::TargetType::OrSymbol,
            metadata: T.nilable(T::Hash[Symbol, String]),
            reason: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of the hold
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::HoldCreateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, ModernTreasury::HoldCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::HoldCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of target to hold
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::HoldCreateParams::TargetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::HoldCreateParams::TargetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::HoldCreateParams::TargetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
