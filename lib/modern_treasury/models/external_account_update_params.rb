# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#update
    class ExternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute party_address
      #
      #   @return [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress }

      # @!attribute party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @return [String, nil]
      optional :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil]
      optional :party_type,
               enum: -> { ModernTreasury::Models::ExternalAccountUpdateParams::PartyType },
               nil?: true

      # @!method initialize(account_type: nil, counterparty_id: nil, metadata: nil, name: nil, party_address: nil, party_name: nil, party_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExternalAccountUpdateParams} for more details.
      #
      #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
      #
      #   @param counterparty_id [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   ...
      #
      #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
      #   ...
      #
      #   @param party_address [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      #
      #   @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
      #   ...
      #
      #   @param party_type [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil] Either `individual` or `business`.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
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

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
