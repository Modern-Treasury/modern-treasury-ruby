# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#create
    class InternalAccount < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail] }

      # @!attribute account_type
      #   Can be checking, savings or other.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::AccountType, nil]
      required :account_type, enum: -> { ModernTreasury::InternalAccount::AccountType }, nil?: true

      # @!attribute connection
      #   Specifies which financial institution the accounts belong to.
      #
      #   @return [ModernTreasury::Models::Connection]
      required :connection, -> { ModernTreasury::Connection }

      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute ledger_account_id
      #   If the internal account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

      # @!attribute legal_entity_id
      #   The Legal Entity associated to this account
      #
      #   @return [String, nil]
      required :legal_entity_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   A nickname for the account.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute parent_account_id
      #   The parent InternalAccount of this account.
      #
      #   @return [String, nil]
      required :parent_account_id, String, nil?: true

      # @!attribute party_address
      #   The address associated with the owner or null.
      #
      #   @return [ModernTreasury::Models::InternalAccount::PartyAddress, nil]
      required :party_address, -> { ModernTreasury::InternalAccount::PartyAddress }, nil?: true

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either individual or business.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::PartyType, nil]
      required :party_type, enum: -> { ModernTreasury::InternalAccount::PartyType }, nil?: true

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, account_details:, account_type:, connection:, counterparty_id:, created_at:, currency:, ledger_account_id:, legal_entity_id:, live_mode:, metadata:, name:, object:, parent_account_id:, party_address:, party_name:, party_type:, routing_details:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccount} for more details.
      #
      #   @param id [String]
      #
      #   @param account_details [Array<ModernTreasury::Models::AccountDetail>] An array of account detail objects.
      #
      #   @param account_type [Symbol, ModernTreasury::Models::InternalAccount::AccountType, nil] Can be checking, savings or other.
      #
      #   @param connection [ModernTreasury::Models::Connection] Specifies which financial institution the accounts belong to.
      #
      #   @param counterparty_id [String, nil] The Counterparty associated to this account.
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] The currency of the account.
      #
      #   @param ledger_account_id [String, nil] If the internal account links to a ledger account in Modern Treasury, the id of
      #
      #   @param legal_entity_id [String, nil] The Legal Entity associated to this account
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String, nil] A nickname for the account.
      #
      #   @param object [String]
      #
      #   @param parent_account_id [String, nil] The parent InternalAccount of this account.
      #
      #   @param party_address [ModernTreasury::Models::InternalAccount::PartyAddress, nil] The address associated with the owner or null.
      #
      #   @param party_name [String] The legal name of the entity which owns the account.
      #
      #   @param party_type [Symbol, ModernTreasury::Models::InternalAccount::PartyType, nil] Either individual or business.
      #
      #   @param routing_details [Array<ModernTreasury::Models::RoutingDetail>] An array of routing detail objects.
      #
      #   @param updated_at [Time]

      # Can be checking, savings or other.
      #
      # @see ModernTreasury::Models::InternalAccount#account_type
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

      # @see ModernTreasury::Models::InternalAccount#party_address
      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
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
        #   {ModernTreasury::Models::InternalAccount::PartyAddress} for more details.
        #
        #   The address associated with the owner or null.
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

      # Either individual or business.
      #
      # @see ModernTreasury::Models::InternalAccount#party_type
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
