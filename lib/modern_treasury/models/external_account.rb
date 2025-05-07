# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#create
    class ExternalAccount < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #
      #   @return [Array<ModernTreasury::AccountDetail>]
      required :account_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail] }

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::ExternalAccountType]
      required :account_type, enum: -> { ModernTreasury::ExternalAccountType }

      # @!attribute contact_details
      #
      #   @return [Array<ModernTreasury::ExternalAccount::ContactDetail>]
      required :contact_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ExternalAccount::ContactDetail] }

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
      #   the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

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
      #   A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
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
      #   @return [ModernTreasury::ExternalAccount::PartyAddress, nil]
      required :party_address, -> { ModernTreasury::ExternalAccount::PartyAddress }, nil?: true

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::ExternalAccount::PartyType, nil]
      required :party_type, enum: -> { ModernTreasury::ExternalAccount::PartyType }, nil?: true

      # @!attribute routing_details
      #
      #   @return [Array<ModernTreasury::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verification_source
      #
      #   @return [Symbol, ModernTreasury::ExternalAccount::VerificationSource, nil]
      required :verification_source,
               enum: -> { ModernTreasury::ExternalAccount::VerificationSource },
               nil?: true

      # @!attribute verification_status
      #
      #   @return [Symbol, ModernTreasury::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::ExternalAccount::VerificationStatus }

      # @!method initialize(id:, account_details:, account_type:, contact_details:, counterparty_id:, created_at:, discarded_at:, ledger_account_id:, live_mode:, metadata:, name:, object:, party_address:, party_name:, party_type:, routing_details:, updated_at:, verification_source:, verification_status:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::ExternalAccount} for more details.
      #
      #   @param id [String]
      #
      #   @param account_details [Array<ModernTreasury::AccountDetail>]
      #
      #   @param account_type [Symbol, ModernTreasury::ExternalAccountType] Can be `checking`, `savings` or `other`.
      #
      #   @param contact_details [Array<ModernTreasury::ExternalAccount::ContactDetail>]
      #
      #   @param counterparty_id [String, nil]
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param ledger_account_id [String, nil] If the external account links to a ledger account in Modern Treasury, the id of
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
      #
      #   @param object [String]
      #
      #   @param party_address [ModernTreasury::ExternalAccount::PartyAddress, nil] The address associated with the owner or `null`.
      #
      #   @param party_name [String] The legal name of the entity which owns the account.
      #
      #   @param party_type [Symbol, ModernTreasury::ExternalAccount::PartyType, nil] Either `individual` or `business`.
      #
      #   @param routing_details [Array<ModernTreasury::RoutingDetail>]
      #
      #   @param updated_at [Time]
      #
      #   @param verification_source [Symbol, ModernTreasury::ExternalAccount::VerificationSource, nil]
      #
      #   @param verification_status [Symbol, ModernTreasury::ExternalAccount::VerificationStatus]

      class ContactDetail < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [Symbol, ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType }

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
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, contact_identifier:, contact_identifier_type:, created_at:, discarded_at:, live_mode:, object:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::ExternalAccount::ContactDetail} for more details.
        #
        #   @param id [String]
        #
        #   @param contact_identifier [String]
        #
        #   @param contact_identifier_type [Symbol, ModernTreasury::ExternalAccount::ContactDetail::ContactIdentifierType]
        #
        #   @param created_at [Time]
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param updated_at [Time]

        # @see ModernTreasury::ExternalAccount::ContactDetail#contact_identifier_type
        module ContactIdentifierType
          extend ModernTreasury::Internal::Type::Enum

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see ModernTreasury::ExternalAccount#party_address
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
        #   {ModernTreasury::ExternalAccount::PartyAddress} for more details.
        #
        #   The address associated with the owner or `null`.
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

      # Either `individual` or `business`.
      #
      # @see ModernTreasury::ExternalAccount#party_type
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::ExternalAccount#verification_source
      module VerificationSource
        extend ModernTreasury::Internal::Type::Enum

        ACH_PRENOTE = :ach_prenote
        MICRODEPOSITS = :microdeposits
        PLAID = :plaid

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::ExternalAccount#verification_status
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        PENDING_VERIFICATION = :pending_verification
        UNVERIFIED = :unverified
        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
