# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] connection_id
      #   The identifier of the financial institution the account belongs to.
      #   @return [String]
      required :connection_id, String

      # @!attribute [rw] currency
      #   Either "USD" or "CAD". Internal accounts created at Increase only supports "USD".
      #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency]
      required :currency, enum: -> { ModernTreasury::Models::InternalAccountCreateParams::Currency }

      # @!attribute [rw] name
      #   The nickname of the account.
      #   @return [String]
      required :name, String

      # @!attribute [rw] party_name
      #   The legal name of the entity which owns the account.
      #   @return [String]
      required :party_name, String

      # @!attribute [rw] counterparty_id
      #   The Counterparty associated to this account.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] legal_entity_id
      #   The LegalEntity associated to this account.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute [rw] parent_account_id
      #   The parent internal account of this new account.
      #   @return [String]
      optional :parent_account_id, String

      # @!attribute [rw] party_address
      #   The address associated with the owner or null.
      #   @return [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress]
      optional :party_address, -> { ModernTreasury::Models::InternalAccountCreateParams::PartyAddress }

      # @!attribute [rw] vendor_attributes
      #   A hash of vendor specific attributes that will be used when creating the account at the vendor specified by the given connection.
      #   @return [Hash]
      optional :vendor_attributes, Hash

      # Either "USD" or "CAD". Internal accounts created at Increase only supports "USD".
      class Currency < ModernTreasury::Enum
        USD = :USD
        CAD = :CAD
      end

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # Create a new instance of PartyAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :line1
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String, nil] :line2
        #   def initialize(data = {}) = super
      end
    end
  end
end
