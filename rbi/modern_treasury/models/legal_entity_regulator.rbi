# typed: strong

module ModernTreasury
  module Models
    class LegalEntityRegulator < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityRegulator,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
      # (e.g., "US", "CA", "GB").
      sig { returns(String) }
      attr_accessor :jurisdiction

      # Full name of the regulatory body.
      sig { returns(String) }
      attr_accessor :name

      # Registration or identification number with the regulator.
      sig { returns(String) }
      attr_accessor :registration_number

      sig do
        params(
          jurisdiction: String,
          name: String,
          registration_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
        # (e.g., "US", "CA", "GB").
        jurisdiction:,
        # Full name of the regulatory body.
        name:,
        # Registration or identification number with the regulator.
        registration_number:
      )
      end

      sig do
        override.returns(
          { jurisdiction: String, name: String, registration_number: String }
        )
      end
      def to_hash
      end
    end
  end
end
