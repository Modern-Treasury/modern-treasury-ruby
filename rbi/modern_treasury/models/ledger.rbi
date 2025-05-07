# typed: strong

module ModernTreasury
  module Models
    class Ledger < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # An optional free-form description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the ledger.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # An optional free-form description for internal use.
        description:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # The name of the ledger.
        name:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: String,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
