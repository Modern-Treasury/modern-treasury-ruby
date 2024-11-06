# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccount < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_details
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

      # @!attribute [rw] account_type
      #   Can be `checking`, `savings` or `other`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      required :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute [rw] contact_details
      #   @return [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      required :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ExternalAccount::ContactDetail })

      # @!attribute [rw] counterparty_id
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] ledger_account_id
      #   If the external account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] party_address
      #   The address associated with the owner or `null`.
      #   @return [ModernTreasury::Models::ExternalAccount::PartyAddress]
      required :party_address, -> { ModernTreasury::Models::ExternalAccount::PartyAddress }

      # @!attribute [rw] party_name
      #   The legal name of the entity which owns the account.
      #   @return [String]
      required :party_name, String

      # @!attribute [rw] party_type
      #   Either `individual` or `business`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::PartyType]
      required :party_type, enum: -> { ModernTreasury::Models::ExternalAccount::PartyType }

      # @!attribute [rw] routing_details
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] verification_source
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource]
      required :verification_source, enum: -> { ModernTreasury::Models::ExternalAccount::VerificationSource }

      # @!attribute [rw] verification_status
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::ExternalAccount::VerificationStatus }

      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] contact_identifier
        #   @return [String]
        required :contact_identifier, String

        # @!attribute [rw] contact_identifier_type
        #   @return [Symbol, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType }

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end

        # @!parse
        #   # Create a new instance of ContactDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :contact_identifier
        #   #   @option data [String] :contact_identifier_type
        #   #   @option data [String] :created_at
        #   #   @option data [String] :discarded_at
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :object
        #   #   @option data [String] :updated_at
        #   def initialize(data = {}) = super
      end

      class PartyAddress < ModernTreasury::BaseModel
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

      # Either `individual` or `business`.
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end

      class VerificationSource < ModernTreasury::Enum
        ACH_PRENOTE = :ach_prenote
        MICRODEPOSITS = :microdeposits
        PLAID = :plaid
      end

      class VerificationStatus < ModernTreasury::Enum
        PENDING_VERIFICATION = :pending_verification
        UNVERIFIED = :unverified
        VERIFIED = :verified
      end

      # @!parse
      #   # Create a new instance of ExternalAccount from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Array<Object>] :account_details
      #   #   @option data [String] :account_type Can be `checking`, `savings` or `other`.
      #   #   @option data [Array<Object>] :contact_details
      #   #   @option data [String] :counterparty_id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :ledger_account_id If the external account links to a ledger account in Modern Treasury, the id of
      #   #     the ledger account will be populated here.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name A nickname for the external account. This is only for internal usage and won't
      #   #     affect any payments
      #   #   @option data [String] :object
      #   #   @option data [Object] :party_address The address associated with the owner or `null`.
      #   #   @option data [String] :party_name The legal name of the entity which owns the account.
      #   #   @option data [String] :party_type Either `individual` or `business`.
      #   #   @option data [Array<Object>] :routing_details
      #   #   @option data [String] :updated_at
      #   #   @option data [String] :verification_source
      #   #   @option data [String] :verification_status
      #   def initialize(data = {}) = super
    end
  end
end
