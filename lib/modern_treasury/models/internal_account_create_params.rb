# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#create
    class InternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   The identifier of the financial institution the account belongs to.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute currency
      #   Either "USD" or "CAD". Internal accounts created at Increase only supports
      #   "USD".
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency]
      required :currency, enum: -> { ModernTreasury::Models::InternalAccountCreateParams::Currency }

      # @!attribute name
      #   The nickname of the account.
      #
      #   @return [String]
      required :name, String

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute [r] counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] legal_entity_id
      #   The LegalEntity associated to this account.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :legal_entity_id

      # @!attribute [r] parent_account_id
      #   The parent internal account of this new account.
      #
      #   @return [String, nil]
      optional :parent_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :parent_account_id

      # @!attribute [r] party_address
      #   The address associated with the owner or null.
      #
      #   @return [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::Models::InternalAccountCreateParams::PartyAddress }

      # @!parse
      #   # @return [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress]
      #   attr_writer :party_address

      # @!attribute [r] vendor_attributes
      #   A hash of vendor specific attributes that will be used when creating the account
      #   at the vendor specified by the given connection.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :vendor_attributes, ModernTreasury::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :vendor_attributes

      # @!method initialize(connection_id:, currency:, name:, party_name:, counterparty_id: nil, legal_entity_id: nil, parent_account_id: nil, party_address: nil, vendor_attributes: nil, request_options: {})
      #   @param connection_id [String]
      #   @param currency [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency]
      #   @param name [String]
      #   @param party_name [String]
      #   @param counterparty_id [String]
      #   @param legal_entity_id [String]
      #   @param parent_account_id [String]
      #   @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress]
      #   @param vendor_attributes [Hash{Symbol=>String}]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Either "USD" or "CAD". Internal accounts created at Increase only supports
      # "USD".
      module Currency
        extend ModernTreasury::Internal::Type::Enum

        USD = :USD
        CAD = :CAD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        required :region, String

        # @!attribute [r] line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The address associated with the owner or null.
        #
        #   @param country [String]
        #   @param line1 [String]
        #   @param locality [String]
        #   @param postal_code [String]
        #   @param region [String]
        #   @param line2 [String]
      end
    end
  end
end
