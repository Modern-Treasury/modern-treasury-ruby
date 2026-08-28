# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountSetting < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::VirtualAccountSetting,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # A user-defined identifier for the virtual account setting.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          external_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # A user-defined identifier for the virtual account setting.
        external_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            external_id: T.nilable(String),
            live_mode: T::Boolean,
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
