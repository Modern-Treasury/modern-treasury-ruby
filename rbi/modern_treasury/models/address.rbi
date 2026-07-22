# typed: strong

module ModernTreasury
  module Models
    class Address < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Address, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Country code conforms to [ISO 3166-1 alpha-2]
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Locality or City.
      sig { returns(T.nilable(String)) }
      attr_accessor :locality

      sig { returns(String) }
      attr_accessor :object

      # The postal code of the address.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # Region or State.
      sig { returns(T.nilable(String)) }
      attr_accessor :region

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          country: T.nilable(String),
          created_at: Time,
          line1: T.nilable(String),
          line2: T.nilable(String),
          live_mode: T::Boolean,
          locality: T.nilable(String),
          object: String,
          postal_code: T.nilable(String),
          region: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Country code conforms to [ISO 3166-1 alpha-2]
        country:,
        created_at:,
        line1:,
        line2:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Locality or City.
        locality:,
        object:,
        # The postal code of the address.
        postal_code:,
        # Region or State.
        region:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
