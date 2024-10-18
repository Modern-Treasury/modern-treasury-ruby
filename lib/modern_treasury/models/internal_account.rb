# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccount < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_details
      #   An array of account detail objects.
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

      # @!attribute [rw] account_type
      #   Can be checking, savings or other.
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::AccountType]
      required :account_type, enum: -> { ModernTreasury::Models::InternalAccount::AccountType }

      # @!attribute [rw] connection
      #   Specifies which financial institution the accounts belong to.
      #   @return [ModernTreasury::Models::Connection]
      required :connection, -> { ModernTreasury::Models::Connection }

      # @!attribute [rw] counterparty_id
      #   The Counterparty associated to this account.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   The currency of the account.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] ledger_account_id
      #   If the internal account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] legal_entity_id
      #   The Legal Entity associated to this account
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   A nickname for the account.
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] parent_account_id
      #   The parent InternalAccount of this account.
      #   @return [String]
      required :parent_account_id, String

      # @!attribute [rw] party_address
      #   The address associated with the owner or null.
      #   @return [ModernTreasury::Models::InternalAccount::PartyAddress]
      required :party_address, -> { ModernTreasury::Models::InternalAccount::PartyAddress }

      # @!attribute [rw] party_name
      #   The legal name of the entity which owns the account.
      #   @return [String]
      required :party_name, String

      # @!attribute [rw] party_type
      #   Either individual or business.
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::PartyType]
      required :party_type, enum: -> { ModernTreasury::Models::InternalAccount::PartyType }

      # @!attribute [rw] routing_details
      #   An array of routing detail objects.
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # Can be checking, savings or other.
      class AccountType < ModernTreasury::Enum
        CASH = :cash
        CHECKING = :checking
        GENERAL_LEDGER = :general_ledger
        LOAN = :loan
        NON_RESIDENT = :non_resident
        OTHER = :other
        OVERDRAFT = :overdraft
        SAVINGS = :savings
      end

      class PartyAddress < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        required :line2, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # Create a new instance of PartyAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :created_at
        #   #   @option data [String] :line1
        #   #   @option data [String] :line2
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :object
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String] :updated_at
        #   def initialize(data = {}) = super
      end

      # Either individual or business.
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end

      # @!parse
      #   # Create a new instance of InternalAccount from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Array<Object>] :account_details An array of account detail objects.
      #   #   @option data [String] :account_type Can be checking, savings or other.
      #   #   @option data [Object] :connection Specifies which financial institution the accounts belong to.
      #   #   @option data [String] :counterparty_id The Counterparty associated to this account.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :currency The currency of the account.
      #   #   @option data [String] :ledger_account_id If the internal account links to a ledger account in Modern Treasury, the id of
      #   #     the ledger account will be populated here.
      #   #   @option data [String] :legal_entity_id The Legal Entity associated to this account
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name A nickname for the account.
      #   #   @option data [String] :object
      #   #   @option data [String] :parent_account_id The parent InternalAccount of this account.
      #   #   @option data [Object] :party_address The address associated with the owner or null.
      #   #   @option data [String] :party_name The legal name of the entity which owns the account.
      #   #   @option data [String] :party_type Either individual or business.
      #   #   @option data [Array<Object>] :routing_details An array of routing detail objects.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
