# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccount < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      required :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute contact_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      required :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ExternalAccount::ContactDetail })

      # @!attribute counterparty_id
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_account_id
      #   If the external account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #
      #   @return [String]
      required :name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute party_address
      #   The address associated with the owner or `null`.
      #
      #   @return [ModernTreasury::Models::ExternalAccount::PartyAddress]
      required :party_address, -> { ModernTreasury::Models::ExternalAccount::PartyAddress }

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::PartyType]
      required :party_type, enum: -> { ModernTreasury::Models::ExternalAccount::PartyType }

      # @!attribute routing_details
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verification_source
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource]
      required :verification_source, enum: -> { ModernTreasury::Models::ExternalAccount::VerificationSource }

      # @!attribute verification_status
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::ExternalAccount::VerificationStatus }

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>]
      #   #
      #   # @param account_type [String] Can be `checking`, `savings` or `other`.
      #   #
      #   # @param contact_details [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      #   #
      #   # @param counterparty_id [String]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param ledger_account_id [String] If the external account links to a ledger account in Modern Treasury, the id of
      #   #   the ledger account will be populated here.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] A nickname for the external account. This is only for internal usage and won't
      #   #   affect any payments
      #   #
      #   # @param object [String]
      #   #
      #   # @param party_address [ModernTreasury::Models::ExternalAccount::PartyAddress] The address associated with the owner or `null`.
      #   #
      #   # @param party_name [String] The legal name of the entity which owns the account.
      #   #
      #   # @param party_type [String] Either `individual` or `business`.
      #   #
      #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param verification_source [String]
      #   #
      #   # @param verification_status [String]
      #   #
      #   def initialize(
      #     id:,
      #     account_details:,
      #     account_type:,
      #     contact_details:,
      #     counterparty_id:,
      #     created_at:,
      #     discarded_at:,
      #     ledger_account_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     party_address:,
      #     party_name:,
      #     party_type:,
      #     routing_details:,
      #     updated_at:,
      #     verification_source:,
      #     verification_status:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute contact_identifier
        #
        #   @return [String]
        required :contact_identifier, String

        # @!attribute contact_identifier_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param contact_identifier [String]
        #   #
        #   # @param contact_identifier_type [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param discarded_at [String]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param object [String]
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     contact_identifier:,
        #     contact_identifier_type:,
        #     created_at:,
        #     discarded_at:,
        #     live_mode:,
        #     object:,
        #     updated_at:
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute line2
        #
        #   @return [String]
        required :line2, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute object
        #
        #   @return [String]
        required :object, String

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

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # The address associated with the owner or `null`.
        #   #
        #   # @param id [String]
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param line2 [String]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param object [String]
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     country:,
        #     created_at:,
        #     line1:,
        #     line2:,
        #     live_mode:,
        #     locality:,
        #     object:,
        #     postal_code:,
        #     region:,
        #     updated_at:
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
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
    end
  end
end
