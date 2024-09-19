# frozen_string_literal: true

module ModernTreasury
  module Models
    class Counterparty < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] accounts
      #   The accounts for this counterparty.
      #   @return [Array<ModernTreasury::Models::Counterparty::Account>]
      required :accounts, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::Counterparty::Account })

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

      # @!attribute [rw] email
      #   The counterparty's email.
      #   @return [String]
      required :email, String

      # @!attribute [rw] legal_entity_id
      #   The id of the legal entity.
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
      #   A human friendly name for this counterparty.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent to the bank.
      #   @return [Boolean]
      required :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] verification_status
      #   The verification status of the counterparty.
      #   One of the constants defined in {ModernTreasury::Models::Counterparty::VerificationStatus}
      #   @return [Symbol]
      required :verification_status, enum: -> { ModernTreasury::Models::Counterparty::VerificationStatus }

      class Account < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        optional :id, String

        # @!attribute [rw] account_details
        #   @return [Array<ModernTreasury::Models::AccountDetail>]
        optional :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

        # @!attribute [rw] account_type
        #   Can be `checking`, `savings` or `other`.
        #   One of the constants defined in {ModernTreasury::Models::ExternalAccountType}
        #   @return [Symbol]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!attribute [rw] contact_details
        #   @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        optional :contact_details,
                 ModernTreasury::ArrayOf.new(
                   lambda {
                     ModernTreasury::Models::Counterparty::Account::ContactDetail
                   }
                 )

        # @!attribute [rw] created_at
        #   @return [String]
        optional :created_at, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        optional :discarded_at, String

        # @!attribute [rw] ledger_account_id
        #   If the external account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
        #   @return [String]
        optional :ledger_account_id, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        optional :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute [rw] name_
        #   A nickname for the external account. This is only for internal usage and won't affect any payments
        #   @return [String]
        optional :name_, String

        # @!attribute [rw] object
        #   @return [String]
        optional :object, String

        # @!attribute [rw] party_address
        #   The address associated with the owner or `null`.
        #   @return [ModernTreasury::Models::Counterparty::Account::PartyAddress]
        optional :party_address, -> { ModernTreasury::Models::Counterparty::Account::PartyAddress }

        # @!attribute [rw] party_name
        #   The legal name of the entity which owns the account.
        #   @return [String]
        optional :party_name, String

        # @!attribute [rw] party_type
        #   Either `individual` or `business`.
        #   One of the constants defined in {ModernTreasury::Models::Counterparty::Account::PartyType}
        #   @return [Symbol]
        optional :party_type, enum: -> { ModernTreasury::Models::Counterparty::Account::PartyType }

        # @!attribute [rw] routing_details
        #   @return [Array<ModernTreasury::Models::RoutingDetail>]
        optional :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

        # @!attribute [rw] updated_at
        #   @return [String]
        optional :updated_at, String

        # @!attribute [rw] verification_source
        #   One of the constants defined in {ModernTreasury::Models::Counterparty::Account::VerificationSource}
        #   @return [Symbol]
        optional :verification_source,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationSource }

        # @!attribute [rw] verification_status
        #   One of the constants defined in {ModernTreasury::Models::Counterparty::Account::VerificationStatus}
        #   @return [Symbol]
        optional :verification_status,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationStatus }

        class ContactDetail < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] contact_identifier
          #   @return [String]
          required :contact_identifier, String

          # @!attribute [rw] contact_identifier_type
          #   One of the constants defined in {ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType}
          #   @return [Symbol]
          required :contact_identifier_type,
                   enum: lambda {
                     ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType
                   }

          # @!attribute [rw] created_at
          #   @return [String]
          required :created_at, String

          # @!attribute [rw] discarded_at
          #   @return [String]
          required :discarded_at, String

          # @!attribute [rw] live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute [rw] object
          #   @return [String]
          required :object, String

          # @!attribute [rw] updated_at
          #   @return [String]
          required :updated_at, String

          class ContactIdentifierType < ModernTreasury::Enum
            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website
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
          #   @return [String]
          required :created_at, String

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
          #   @return [String]
          required :updated_at, String
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

      # The verification status of the counterparty.
      class VerificationStatus < ModernTreasury::Enum
        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified
      end
    end
  end
end
