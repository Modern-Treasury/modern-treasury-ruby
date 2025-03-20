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
      required :account_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail] }

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      required :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute contact_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      required :contact_details,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail] }

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_account_id
      #   If the external account links to a ledger account in Modern Treasury, the id of
      #     the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't
      #     affect any payments
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute party_address
      #   The address associated with the owner or `null`.
      #
      #   @return [ModernTreasury::Models::ExternalAccount::PartyAddress, nil]
      required :party_address, -> { ModernTreasury::Models::ExternalAccount::PartyAddress }, nil?: true

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::PartyType, nil]
      required :party_type, enum: -> { ModernTreasury::Models::ExternalAccount::PartyType }, nil?: true

      # @!attribute routing_details
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verification_source
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource, nil]
      required :verification_source,
               enum: -> { ModernTreasury::Models::ExternalAccount::VerificationSource },
               nil?: true

      # @!attribute verification_status
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::ExternalAccount::VerificationStatus }

      # @!parse
      #   # @param id [String]
      #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>]
      #   # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
      #   # @param contact_details [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      #   # @param counterparty_id [String, nil]
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param ledger_account_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String, nil]
      #   # @param object [String]
      #   # @param party_address [ModernTreasury::Models::ExternalAccount::PartyAddress, nil]
      #   # @param party_name [String]
      #   # @param party_type [Symbol, ModernTreasury::Models::ExternalAccount::PartyType, nil]
      #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
      #   # @param updated_at [Time]
      #   # @param verification_source [Symbol, ModernTreasury::Models::ExternalAccount::VerificationSource, nil]
      #   # @param verification_status [Symbol, ModernTreasury::Models::ExternalAccount::VerificationStatus]
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
      #     verification_status:,
      #     **
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
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
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
        #   # @param contact_identifier [String]
        #   # @param contact_identifier_type [Symbol, ModernTreasury::Models::ExternalAccount::ContactDetail::ContactIdentifierType]
        #   # @param created_at [Time]
        #   # @param discarded_at [Time, nil]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(
        #     id:,
        #     contact_identifier:,
        #     contact_identifier_type:,
        #     created_at:,
        #     discarded_at:,
        #     live_mode:,
        #     object:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        module ContactIdentifierType
          extend ModernTreasury::Enum

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          finalize!
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
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

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

        # @!parse
        #   # The address associated with the owner or `null`.
        #   #
        #   # @param id [String]
        #   # @param country [String, nil]
        #   # @param created_at [Time]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param live_mode [Boolean]
        #   # @param locality [String, nil]
        #   # @param object [String]
        #   # @param postal_code [String, nil]
        #   # @param region [String, nil]
        #   # @param updated_at [Time]
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
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!
      end

      module VerificationSource
        extend ModernTreasury::Enum

        ACH_PRENOTE = :ach_prenote
        MICRODEPOSITS = :microdeposits
        PLAID = :plaid

        finalize!
      end

      module VerificationStatus
        extend ModernTreasury::Enum

        PENDING_VERIFICATION = :pending_verification
        UNVERIFIED = :unverified
        VERIFIED = :verified

        finalize!
      end
    end
  end
end
