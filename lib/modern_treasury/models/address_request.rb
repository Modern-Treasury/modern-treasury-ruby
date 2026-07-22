# frozen_string_literal: true

module ModernTreasury
  module Models
    class AddressRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute country
      #   Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute line1
      #
      #   @return [String, nil]
      optional :line1, String, nil?: true

      # @!attribute line2
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!attribute locality
      #   Locality or City.
      #
      #   @return [String, nil]
      optional :locality, String, nil?: true

      # @!attribute postal_code
      #   The postal code of the address.
      #
      #   @return [String, nil]
      optional :postal_code, String, nil?: true

      # @!attribute region
      #   Region or State.
      #
      #   @return [String, nil]
      optional :region, String, nil?: true

      # @!method initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
      #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @param line1 [String, nil]
      #
      #   @param line2 [String, nil]
      #
      #   @param locality [String, nil] Locality or City.
      #
      #   @param postal_code [String, nil] The postal code of the address.
      #
      #   @param region [String, nil] Region or State.
    end
  end
end
