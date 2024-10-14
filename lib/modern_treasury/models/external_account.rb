# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccount < BaseModel
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
      required :name_, String

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

      class ContactDetail < BaseModel
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

        # Create a new instance of ContactDetail from a Hash of raw data.
        #
        # @overload initialize(id: nil, contact_identifier: nil, contact_identifier_type: nil, created_at: nil, discarded_at: nil, live_mode: nil, object: nil, updated_at: nil)
        # @param id [String]
        # @param contact_identifier [String]
        # @param contact_identifier_type [String]
        # @param created_at [String]
        # @param discarded_at [String]
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param object [String]
        # @param updated_at [String]
        def initialize(data = {})
          super
        end
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

        # Create a new instance of PartyAddress from a Hash of raw data.
        #
        # @overload initialize(id: nil, country: nil, created_at: nil, line1: nil, line2: nil, live_mode: nil, locality: nil, object: nil, postal_code: nil, region: nil, updated_at: nil)
        # @param id [String]
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param created_at [String]
        # @param line1 [String]
        # @param line2 [String]
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param locality [String] Locality or City.
        # @param object [String]
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        # @param updated_at [String]
        def initialize(data = {})
          super
        end
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

      # Create a new instance of ExternalAccount from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_details: nil, account_type: nil, contact_details: nil, counterparty_id: nil, created_at: nil, discarded_at: nil, ledger_account_id: nil, live_mode: nil, metadata: nil, name: nil, object: nil, party_address: nil, party_name: nil, party_type: nil, routing_details: nil, updated_at: nil, verification_source: nil, verification_status: nil)
      # @param id [String]
      # @param account_details [Array<Object>]
      # @param account_type [String] Can be `checking`, `savings` or `other`.
      # @param contact_details [Array<Object>]
      # @param counterparty_id [String]
      # @param created_at [String]
      # @param discarded_at [String]
      # @param ledger_account_id [String] If the external account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      # @param object [String]
      # @param party_address [Object] The address associated with the owner or `null`.
      # @param party_name [String] The legal name of the entity which owns the account.
      # @param party_type [String] Either `individual` or `business`.
      # @param routing_details [Array<Object>]
      # @param updated_at [String]
      # @param verification_source [String]
      # @param verification_status [String]
      def initialize(data = {})
        super
      end
    end
  end
end
