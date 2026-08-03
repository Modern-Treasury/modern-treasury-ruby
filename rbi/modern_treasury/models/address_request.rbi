# typed: strong

module ModernTreasury
  module Models
    class AddressRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AddressRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Country code conforms to [ISO 3166-1 alpha-2]
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      # Locality or City.
      sig { returns(T.nilable(String)) }
      attr_accessor :locality

      # The postal code of the address.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # Region or State.
      sig { returns(T.nilable(String)) }
      attr_accessor :region

      sig do
        params(
          country: T.nilable(String),
          line1: T.nilable(String),
          line2: T.nilable(String),
          locality: T.nilable(String),
          postal_code: T.nilable(String),
          region: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Country code conforms to [ISO 3166-1 alpha-2]
        country: nil,
        line1: nil,
        line2: nil,
        # Locality or City.
        locality: nil,
        # The postal code of the address.
        postal_code: nil,
        # Region or State.
        region: nil
      )
      end

      sig do
        override.returns(
          {
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
