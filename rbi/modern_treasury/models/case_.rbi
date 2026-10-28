# typed: strong

module ModernTreasury
  module Models
    class Case < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Case, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The pending actions requested to resolve the case.
      sig { returns(T::Array[ModernTreasury::RequestedAction]) }
      attr_accessor :requested_actions

      # The requested actions that have been resolved.
      sig { returns(T::Array[ModernTreasury::RequestedAction]) }
      attr_accessor :resolved_actions

      # The status of the case.
      sig { returns(ModernTreasury::Case::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the object the case is about.
      sig { returns(String) }
      attr_accessor :subject_id

      # The type of the object the case is about.
      sig { returns(String) }
      attr_accessor :subject_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          live_mode: T::Boolean,
          object: String,
          requested_actions: T::Array[ModernTreasury::RequestedAction::OrHash],
          resolved_actions: T::Array[ModernTreasury::RequestedAction::OrHash],
          status: ModernTreasury::Case::Status::OrSymbol,
          subject_id: String,
          subject_type: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The pending actions requested to resolve the case.
        requested_actions:,
        # The requested actions that have been resolved.
        resolved_actions:,
        # The status of the case.
        status:,
        # The ID of the object the case is about.
        subject_id:,
        # The type of the object the case is about.
        subject_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            requested_actions: T::Array[ModernTreasury::RequestedAction],
            resolved_actions: T::Array[ModernTreasury::RequestedAction],
            status: ModernTreasury::Case::Status::TaggedSymbol,
            subject_id: String,
            subject_type: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The status of the case.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Case::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:open, ModernTreasury::Case::Status::TaggedSymbol)
        RESOLVED = T.let(:resolved, ModernTreasury::Case::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Case::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
