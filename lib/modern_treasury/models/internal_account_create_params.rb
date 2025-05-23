# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#create
    class InternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
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
      required :currency, enum: -> { ModernTreasury::InternalAccountCreateParams::Currency }

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

      # @!attribute account_type
      #   The account type, used to provision the appropriate account at the financial
      #   institution.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountType, nil]
      optional :account_type, enum: -> { ModernTreasury::InternalAccountCreateParams::AccountType }

      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute legal_entity_id
      #   The LegalEntity associated to this account.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!attribute parent_account_id
      #   The parent internal account of this new account.
      #
      #   @return [String, nil]
      optional :parent_account_id, String

      # @!attribute party_address
      #   The address associated with the owner or null.
      #
      #   @return [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::InternalAccountCreateParams::PartyAddress }

      # @!attribute vendor_attributes
      #   A hash of vendor specific attributes that will be used when creating the account
      #   at the vendor specified by the given connection.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :vendor_attributes, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(connection_id:, currency:, name:, party_name:, account_type: nil, counterparty_id: nil, legal_entity_id: nil, parent_account_id: nil, party_address: nil, vendor_attributes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccountCreateParams} for more details.
      #
      #   @param connection_id [String] The identifier of the financial institution the account belongs to.
      #
      #   @param currency [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency] Either "USD" or "CAD". Internal accounts created at Increase only supports "USD"
      #
      #   @param name [String] The nickname of the account.
      #
      #   @param party_name [String] The legal name of the entity which owns the account.
      #
      #   @param account_type [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountType] The account type, used to provision the appropriate account at the financial ins
      #
      #   @param counterparty_id [String] The Counterparty associated to this account.
      #
      #   @param legal_entity_id [String] The LegalEntity associated to this account.
      #
      #   @param parent_account_id [String] The parent internal account of this new account.
      #
      #   @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress] The address associated with the owner or null.
      #
      #   @param vendor_attributes [Hash{Symbol=>String}] A hash of vendor specific attributes that will be used when creating the account
      #
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

      # The account type, used to provision the appropriate account at the financial
      # institution.
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        BASE_WALLET = :base_wallet
        CASH = :cash
        CHECKING = :checking
        CRYPTO_WALLET = :crypto_wallet
        ETHEREUM_WALLET = :ethereum_wallet
        GENERAL_LEDGER = :general_ledger
        LOAN = :loan
        NON_RESIDENT = :non_resident
        OTHER = :other
        OVERDRAFT = :overdraft
        POLYGON_WALLET = :polygon_wallet
        SAVINGS = :savings
        SOLANA_WALLET = :solana_wallet

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

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The address associated with the owner or null.
        #
        #   @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @param line1 [String]
        #
        #   @param locality [String] Locality or City.
        #
        #   @param postal_code [String] The postal code of the address.
        #
        #   @param region [String] Region or State.
        #
        #   @param line2 [String]
      end
    end
  end
end
