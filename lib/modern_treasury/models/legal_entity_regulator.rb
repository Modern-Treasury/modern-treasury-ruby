# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityRegulator < ModernTreasury::Internal::Type::BaseModel
      # @!attribute jurisdiction
      #   The country code where the regulator operates in the ISO 3166-1 alpha-2 format
      #   (e.g., "US", "CA", "GB").
      #
      #   @return [String]
      required :jurisdiction, String

      # @!attribute name
      #   Full name of the regulatory body.
      #
      #   @return [String]
      required :name, String

      # @!attribute registration_number
      #   Registration or identification number with the regulator.
      #
      #   @return [String]
      required :registration_number, String

      # @!method initialize(jurisdiction:, name:, registration_number:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityRegulator} for more details.
      #
      #   @param jurisdiction [String] The country code where the regulator operates in the ISO 3166-1 alpha-2 format (
      #
      #   @param name [String] Full name of the regulatory body.
      #
      #   @param registration_number [String] Registration or identification number with the regulator.
    end
  end
end
