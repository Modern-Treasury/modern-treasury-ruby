# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute counterparty_id
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #
      #   @return [String]
      optional :name, String

      # @!attribute party_address
      #
      #   @return [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress }

      # @!attribute party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @return [String]
      optional :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType]
      optional :party_type, enum: -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyType }

      # @!parse
      #   # @param account_type [String, nil] Can be `checking`, `savings` or `other`.
      #   #
      #   # @param counterparty_id [String, nil]
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   #   an empty string or `null` as the value.
      #   #
      #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
      #   #   affect any payments
      #   #
      #   # @param party_address [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress, nil]
      #   #
      #   # @param party_name [String, nil] If this value isn't provided, it will be inherited from the counterparty's name.
      #   #
      #   # @param party_type [String, nil] Either `individual` or `business`.
      #   #
      #   def initialize(
      #     account_type: nil,
      #     counterparty_id: nil,
      #     metadata: nil,
      #     name: nil,
      #     party_address: nil,
      #     party_name: nil,
      #     party_type: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        optional :country, String

        # @!attribute line1
        #
        #   @return [String]
        optional :line1, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        optional :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        optional :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        optional :region, String

        # @!parse
        #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String, nil]
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   # @param locality [String, nil] Locality or City.
        #   #
        #   # @param postal_code [String, nil] The postal code of the address.
        #   #
        #   # @param region [String, nil] Region or State.
        #   #
        #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # Either `individual` or `business`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # end
      # ```
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!
      end
    end
  end
end
