# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] account_type
      #   Can be `checking`, `savings` or `other`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute [rw] counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #   @return [String]
      optional :name, String

      # @!attribute [rw] party_address
      #   @return [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress }

      # @!attribute [rw] party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #   @return [String]
      optional :party_name, String

      # @!attribute [rw] party_type
      #   Either `individual` or `business`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType]
      optional :party_type, enum: -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyType }

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        optional :country, String

        # @!attribute [rw] line1
        #   @return [String]
        optional :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        optional :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        optional :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        optional :region, String

        # @!parse
        #   # Create a new instance of PartyAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String, nil] :line1
        #   #   @option data [String, nil] :line2
        #   #   @option data [String, nil] :locality Locality or City.
        #   #   @option data [String, nil] :postal_code The postal code of the address.
        #   #   @option data [String, nil] :region Region or State.
        #   def initialize(data = {}) = super
      end

      # Either `individual` or `business`.
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end
    end
  end
end
