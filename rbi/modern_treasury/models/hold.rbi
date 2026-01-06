# typed: strong

module ModernTreasury
  module Models
    class Hold < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Hold, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # The type of object
      sig { returns(ModernTreasury::Hold::Object::TaggedSymbol) }
      attr_accessor :object

      # The status of the hold
      sig { returns(ModernTreasury::Hold::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the target being held
      sig { returns(String) }
      attr_accessor :target_id

      # The type of target being held
      sig { returns(ModernTreasury::Hold::TargetType::TaggedSymbol) }
      attr_accessor :target_type

      sig { returns(Time) }
      attr_accessor :updated_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      # Additional metadata for the hold
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # The reason for the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The resolution of the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :resolution

      # When the hold was resolved
      sig { returns(T.nilable(Time)) }
      attr_accessor :resolved_at

      sig do
        params(
          id: String,
          created_at: Time,
          object: ModernTreasury::Hold::Object::OrSymbol,
          status: ModernTreasury::Hold::Status::OrSymbol,
          target_id: String,
          target_type: ModernTreasury::Hold::TargetType::OrSymbol,
          updated_at: Time,
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          reason: T.nilable(String),
          resolution: T.nilable(String),
          resolved_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # The type of object
        object:,
        # The status of the hold
        status:,
        # The ID of the target being held
        target_id:,
        # The type of target being held
        target_type:,
        updated_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode: nil,
        # Additional metadata for the hold
        metadata: nil,
        # The reason for the hold
        reason: nil,
        # The resolution of the hold
        resolution: nil,
        # When the hold was resolved
        resolved_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            object: ModernTreasury::Hold::Object::TaggedSymbol,
            status: ModernTreasury::Hold::Status::TaggedSymbol,
            target_id: String,
            target_type: ModernTreasury::Hold::TargetType::TaggedSymbol,
            updated_at: Time,
            live_mode: T::Boolean,
            metadata: T.nilable(T::Hash[Symbol, String]),
            reason: T.nilable(String),
            resolution: T.nilable(String),
            resolved_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # The type of object
      module Object
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Hold::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOLD = T.let(:hold, ModernTreasury::Hold::Object::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Hold::Object::TaggedSymbol])
        end
        def self.values
        end
      end

      # The status of the hold
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Hold::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, ModernTreasury::Hold::Status::TaggedSymbol)
        RESOLVED = T.let(:resolved, ModernTreasury::Hold::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Hold::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The type of target being held
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Hold::TargetType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Hold::TargetType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::Hold::TargetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
