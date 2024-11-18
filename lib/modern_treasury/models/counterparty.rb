# frozen_string_literal: true

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] accounts
      #   The accounts for this counterparty.
      #   @return [Array<ModernTreasury::Models::Counterparty::Account>]
      required :accounts, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::Counterparty::Account })

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

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

      # @!attribute [rw] name
      #   A human friendly name for this counterparty.
      #   @return [String]
      required :name, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent to the bank.
      #   @return [Boolean]
      required :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] verification_status
      #   The verification status of the counterparty.
      #   @return [Symbol, ModernTreasury::Models::Counterparty::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::Counterparty::VerificationStatus }

      class Account < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        optional :id, String

        # @!attribute [rw] account_details
        #   @return [Array<ModernTreasury::Models::AccountDetail>]
        optional :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

        # @!attribute [rw] account_type
        #   Can be `checking`, `savings` or `other`.
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!attribute [rw] contact_details
        #   @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        optional :contact_details,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::Counterparty::Account::ContactDetail
                   }
                 )

        # @!attribute [rw] created_at
        #   @return [Time]
        optional :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        optional :discarded_at, Time

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

        # @!attribute [rw] name
        #   A nickname for the external account. This is only for internal usage and won't affect any payments
        #   @return [String]
        optional :name, String

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
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType]
        optional :party_type, enum: -> { ModernTreasury::Models::Counterparty::Account::PartyType }

        # @!attribute [rw] routing_details
        #   @return [Array<ModernTreasury::Models::RoutingDetail>]
        optional :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

        # @!attribute [rw] updated_at
        #   @return [Time]
        optional :updated_at, Time

        # @!attribute [rw] verification_source
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource]
        optional :verification_source,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationSource }

        # @!attribute [rw] verification_status
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]
        optional :verification_status,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationStatus }

        class ContactDetail < ModernTreasury::BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] contact_identifier
          #   @return [String]
          required :contact_identifier, String

          # @!attribute [rw] contact_identifier_type
          #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType]
          required :contact_identifier_type,
                   enum: -> {
                     ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType
                   }

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
        #   # Create a new instance of Account from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :id
        #   #   @option data [Array<Object>, nil] :account_details
        #   #   @option data [String, nil] :account_type Can be `checking`, `savings` or `other`.
        #   #   @option data [Array<Object>, nil] :contact_details
        #   #   @option data [String, nil] :created_at
        #   #   @option data [String, nil] :discarded_at
        #   #   @option data [String, nil] :ledger_account_id If the external account links to a ledger account in Modern Treasury, the id of
        #   #     the ledger account will be populated here.
        #   #   @option data [Hash, nil] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String, nil] :name A nickname for the external account. This is only for internal usage and won't
        #   #     affect any payments
        #   #   @option data [String, nil] :object
        #   #   @option data [Object, nil] :party_address The address associated with the owner or `null`.
        #   #   @option data [String, nil] :party_name The legal name of the entity which owns the account.
        #   #   @option data [String, nil] :party_type Either `individual` or `business`.
        #   #   @option data [Array<Object>, nil] :routing_details
        #   #   @option data [String, nil] :updated_at
        #   #   @option data [String, nil] :verification_source
        #   #   @option data [String, nil] :verification_status
        #   def initialize(data = {}) = super
      end

      # The verification status of the counterparty.
      class VerificationStatus < ModernTreasury::Enum
        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified
      end

      # @!parse
      #   # Create a new instance of Counterparty from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Array<Object>] :accounts The accounts for this counterparty.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :email The counterparty's email.
      #   #   @option data [String] :legal_entity_id The id of the legal entity.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name A human friendly name for this counterparty.
      #   #   @option data [String] :object
      #   #   @option data [Hash] :send_remittance_advice Send an email to the counterparty whenever an associated payment order is sent
      #   #     to the bank.
      #   #   @option data [String] :updated_at
      #   #   @option data [String] :verification_status The verification status of the counterparty.
      #   def initialize(data = {}) = super
    end
  end
end
