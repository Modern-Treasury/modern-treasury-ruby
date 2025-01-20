# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute [r] account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      #   attr_writer :account_type

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute [r] party_address
      #
      #   @return [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress }

      # @!parse
      #   # @return [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      #   attr_writer :party_address

      # @!attribute [r] party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @return [String, nil]
      optional :party_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :party_name

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil]
      optional :party_type,
               enum: -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyType },
               nil?: true

      # @!parse
      #   # @param account_type [String] Can be `checking`, `savings` or `other`.
      #   #
      #   # @param counterparty_id [String, nil]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   #   an empty string or `null` as the value.
      #   #
      #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
      #   #   affect any payments
      #   #
      #   # @param party_address [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      #   #
      #   # @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
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

      # @example
      # ```ruby
      # party_address => {
      #   country: String,
      #   line1: String,
      #   line2: String,
      #   locality: String,
      #   postal_code: String
      # }
      # ```
      class PartyAddress < ModernTreasury::BaseModel
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
      # ```ruby
      # case party_type
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
