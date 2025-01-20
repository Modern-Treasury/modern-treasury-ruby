# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute connection_id
      #   The identifier of the financial institution the account belongs to.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute currency
      #   Either "USD" or "CAD". Internal accounts created at Increase only supports "USD".
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
      #   A hash of vendor specific attributes that will be used when creating the account at the vendor specified by the given connection.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :vendor_attributes, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :vendor_attributes

      # @!parse
      #   # @param connection_id [String] The identifier of the financial institution the account belongs to.
      #   #
      #   # @param currency [String] Either "USD" or "CAD". Internal accounts created at Increase only supports
      #   #   "USD".
      #   #
      #   # @param name [String] The nickname of the account.
      #   #
      #   # @param party_name [String] The legal name of the entity which owns the account.
      #   #
      #   # @param counterparty_id [String] The Counterparty associated to this account.
      #   #
      #   # @param legal_entity_id [String] The LegalEntity associated to this account.
      #   #
      #   # @param parent_account_id [String] The parent internal account of this new account.
      #   #
      #   # @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress] The address associated with the owner or null.
      #   #
      #   # @param vendor_attributes [Hash{Symbol=>String}] A hash of vendor specific attributes that will be used when creating the account
      #   #   at the vendor specified by the given connection.
      #   #
      #   def initialize(
      #     connection_id:,
      #     currency:,
      #     name:,
      #     party_name:,
      #     counterparty_id: nil,
      #     legal_entity_id: nil,
      #     parent_account_id: nil,
      #     party_address: nil,
      #     vendor_attributes: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Either "USD" or "CAD". Internal accounts created at Increase only supports "USD".
      #
      # @example
      # ```ruby
      # case currency
      # in :USD
      #   # ...
      # in :CAD
      #   # ...
      # end
      # ```
      class Currency < ModernTreasury::Enum
        USD = :USD
        CAD = :CAD

        finalize!
      end

      # @example
      # ```ruby
      # party_address => {
      #   country: String,
      #   line1: String,
      #   locality: String,
      #   postal_code: String,
      #   region: String
      # }
      # ```
      class PartyAddress < ModernTreasury::BaseModel
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

        # @!parse
        #   # The address associated with the owner or null.
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
