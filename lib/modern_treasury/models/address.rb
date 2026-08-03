# frozen_string_literal: true

module ModernTreasury
  module Models
    class Address < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute country
      #   Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @return [String, nil]
      required :country, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute line1
      #
      #   @return [String, nil]
      required :line1, String, nil?: true

      # @!attribute line2
      #
      #   @return [String, nil]
      required :line2, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute locality
      #   Locality or City.
      #
      #   @return [String, nil]
      required :locality, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute postal_code
      #   The postal code of the address.
      #
      #   @return [String, nil]
      required :postal_code, String, nil?: true

      # @!attribute region
      #   Region or State.
      #
      #   @return [String, nil]
      required :region, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, country:, created_at:, line1:, line2:, live_mode:, locality:, object:, postal_code:, region:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Address} for more details.
      #
      #   @param id [String]
      #
      #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @param created_at [Time]
      #
      #   @param line1 [String, nil]
      #
      #   @param line2 [String, nil]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param locality [String, nil] Locality or City.
      #
      #   @param object [String]
      #
      #   @param postal_code [String, nil] The postal code of the address.
      #
      #   @param region [String, nil] Region or State.
      #
      #   @param updated_at [Time]
    end
  end
end
