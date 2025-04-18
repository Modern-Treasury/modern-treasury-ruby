# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#create
    class Counterparty < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accounts
      #   The accounts for this counterparty.
      #
      #   @return [Array<ModernTreasury::Models::Counterparty::Account>]
      required :accounts,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::Counterparty::Account] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute email
      #   The counterparty's email.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute legal_entity_id
      #   The id of the legal entity.
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
      #   A human friendly name for this counterparty.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      #
      #   @return [Boolean]
      required :send_remittance_advice, ModernTreasury::Internal::Type::Boolean

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verification_status
      #   The verification status of the counterparty.
      #
      #   @return [Symbol, ModernTreasury::Models::Counterparty::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::Counterparty::VerificationStatus }

      # @!method initialize(id:, accounts:, created_at:, discarded_at:, email:, legal_entity_id:, live_mode:, metadata:, name:, object:, send_remittance_advice:, updated_at:, verification_status:)
      #   @param id [String]
      #   @param accounts [Array<ModernTreasury::Models::Counterparty::Account>]
      #   @param created_at [Time]
      #   @param discarded_at [Time, nil]
      #   @param email [String, nil]
      #   @param legal_entity_id [String, nil]
      #   @param live_mode [Boolean]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param name [String, nil]
      #   @param object [String]
      #   @param send_remittance_advice [Boolean]
      #   @param updated_at [Time]
      #   @param verification_status [Symbol, ModernTreasury::Models::Counterparty::VerificationStatus]

      class Account < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::AccountDetail>, nil]
        optional :account_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::AccountDetail] }

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!attribute contact_details
        #
        #   @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>, nil]
        optional :contact_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::Counterparty::Account::ContactDetail] }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        optional :discarded_at, Time, nil?: true

        # @!attribute ledger_account_id
        #   If the external account links to a ledger account in Modern Treasury, the id of
        #   the ledger account will be populated here.
        #
        #   @return [String, nil]
        optional :ledger_account_id, String, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean, nil]
        optional :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute object
        #
        #   @return [String, nil]
        optional :object, String

        # @!attribute party_address
        #   The address associated with the owner or `null`.
        #
        #   @return [ModernTreasury::Models::Counterparty::Account::PartyAddress, nil]
        optional :party_address, -> { ModernTreasury::Models::Counterparty::Account::PartyAddress }, nil?: true

        # @!attribute party_name
        #   The legal name of the entity which owns the account.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil]
        optional :party_type, enum: -> { ModernTreasury::Models::Counterparty::Account::PartyType }, nil?: true

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::RoutingDetail>, nil]
        optional :routing_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::RoutingDetail] }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute verification_source
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        optional :verification_source,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationSource },
                 nil?: true

        # @!attribute verification_status
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus, nil]
        optional :verification_status,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationStatus }

        # @!method initialize(id: nil, account_details: nil, account_type: nil, contact_details: nil, created_at: nil, discarded_at: nil, ledger_account_id: nil, live_mode: nil, metadata: nil, name: nil, object: nil, party_address: nil, party_name: nil, party_type: nil, routing_details: nil, updated_at: nil, verification_source: nil, verification_status: nil)
        #   @param id [String]
        #   @param account_details [Array<ModernTreasury::Models::AccountDetail>]
        #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   @param contact_details [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        #   @param created_at [Time]
        #   @param discarded_at [Time, nil]
        #   @param ledger_account_id [String, nil]
        #   @param live_mode [Boolean]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param name [String, nil]
        #   @param object [String]
        #   @param party_address [ModernTreasury::Models::Counterparty::Account::PartyAddress, nil]
        #   @param party_name [String]
        #   @param party_type [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil]
        #   @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
        #   @param updated_at [Time]
        #   @param verification_source [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        #   @param verification_status [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]

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
          #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType]
          required :contact_identifier_type,
                   enum: -> { ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType }

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
          #   @param id [String]
          #   @param contact_identifier [String]
          #   @param contact_identifier_type [Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType]
          #   @param created_at [Time]
          #   @param discarded_at [Time, nil]
          #   @param live_mode [Boolean]
          #   @param object [String]
          #   @param updated_at [Time]

          # @see ModernTreasury::Models::Counterparty::Account::ContactDetail#contact_identifier_type
          module ContactIdentifierType
            extend ModernTreasury::Internal::Type::Enum

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see ModernTreasury::Models::Counterparty::Account#party_address
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
          #   The address associated with the owner or `null`.
          #
          #   @param id [String]
          #   @param country [String, nil]
          #   @param created_at [Time]
          #   @param line1 [String, nil]
          #   @param line2 [String, nil]
          #   @param live_mode [Boolean]
          #   @param locality [String, nil]
          #   @param object [String]
          #   @param postal_code [String, nil]
          #   @param region [String, nil]
          #   @param updated_at [Time]
        end

        # Either `individual` or `business`.
        #
        # @see ModernTreasury::Models::Counterparty::Account#party_type
        module PartyType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see ModernTreasury::Models::Counterparty::Account#verification_source
        module VerificationSource
          extend ModernTreasury::Internal::Type::Enum

          ACH_PRENOTE = :ach_prenote
          MICRODEPOSITS = :microdeposits
          PLAID = :plaid

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see ModernTreasury::Models::Counterparty::Account#verification_status
        module VerificationStatus
          extend ModernTreasury::Internal::Type::Enum

          PENDING_VERIFICATION = :pending_verification
          UNVERIFIED = :unverified
          VERIFIED = :verified

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The verification status of the counterparty.
      #
      # @see ModernTreasury::Models::Counterparty#verification_status
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
