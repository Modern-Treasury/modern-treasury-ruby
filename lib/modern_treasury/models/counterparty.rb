# frozen_string_literal: true

module ModernTreasury
  module Models
    class Counterparty < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accounts
      #   The accounts for this counterparty.
      #
      #   @return [Array<ModernTreasury::Models::Counterparty::Account>]
      required :accounts, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account] }

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
      #     to the bank.
      #
      #   @return [Boolean]
      required :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verification_status
      #   The verification status of the counterparty.
      #
      #   @return [Symbol, ModernTreasury::Models::Counterparty::VerificationStatus]
      required :verification_status, enum: -> { ModernTreasury::Models::Counterparty::VerificationStatus }

      # @!parse
      #   # @param id [String]
      #   # @param accounts [Array<ModernTreasury::Models::Counterparty::Account>]
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param email [String, nil]
      #   # @param legal_entity_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String, nil]
      #   # @param object [String]
      #   # @param send_remittance_advice [Boolean]
      #   # @param updated_at [Time]
      #   # @param verification_status [Symbol, ModernTreasury::Models::Counterparty::VerificationStatus]
      #   #
      #   def initialize(
      #     id:,
      #     accounts:,
      #     created_at:,
      #     discarded_at:,
      #     email:,
      #     legal_entity_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     send_remittance_advice:,
      #     updated_at:,
      #     verification_status:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Account < ModernTreasury::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] account_details
        #
        #   @return [Array<ModernTreasury::Models::AccountDetail>, nil]
        optional :account_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::AccountDetail>]
        #   attr_writer :account_details

        # @!attribute [r] account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   attr_writer :account_type

        # @!attribute [r] contact_details
        #
        #   @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>, nil]
        optional :contact_details,
                 -> { ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account::ContactDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        #   attr_writer :contact_details

        # @!attribute [r] created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :created_at

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        optional :discarded_at, Time, nil?: true

        # @!attribute ledger_account_id
        #   If the external account links to a ledger account in Modern Treasury, the id of
        #     the ledger account will be populated here.
        #
        #   @return [String, nil]
        optional :ledger_account_id, String, nil?: true

        # @!attribute [r] live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
        #
        #   @return [Boolean, nil]
        optional :live_mode, ModernTreasury::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :live_mode

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't
        #     affect any payments
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] object
        #
        #   @return [String, nil]
        optional :object, String

        # @!parse
        #   # @return [String]
        #   attr_writer :object

        # @!attribute party_address
        #   The address associated with the owner or `null`.
        #
        #   @return [ModernTreasury::Models::Counterparty::Account::PartyAddress, nil]
        optional :party_address, -> { ModernTreasury::Models::Counterparty::Account::PartyAddress }, nil?: true

        # @!attribute [r] party_name
        #   The legal name of the entity which owns the account.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :party_name

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil]
        optional :party_type, enum: -> { ModernTreasury::Models::Counterparty::Account::PartyType }, nil?: true

        # @!attribute [r] routing_details
        #
        #   @return [Array<ModernTreasury::Models::RoutingDetail>, nil]
        optional :routing_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail] }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::RoutingDetail>]
        #   attr_writer :routing_details

        # @!attribute [r] updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :updated_at

        # @!attribute verification_source
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        optional :verification_source,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationSource },
                 nil?: true

        # @!attribute [r] verification_status
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus, nil]
        optional :verification_status,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationStatus }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]
        #   attr_writer :verification_status

        # @!parse
        #   # @param id [String]
        #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>]
        #   # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   # @param contact_details [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        #   # @param created_at [Time]
        #   # @param discarded_at [Time, nil]
        #   # @param ledger_account_id [String, nil]
        #   # @param live_mode [Boolean]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param name [String, nil]
        #   # @param object [String]
        #   # @param party_address [ModernTreasury::Models::Counterparty::Account::PartyAddress, nil]
        #   # @param party_name [String]
        #   # @param party_type [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil]
        #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
        #   # @param updated_at [Time]
        #   # @param verification_source [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        #   # @param verification_status [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]
        #   #
        #   def initialize(
        #     id: nil,
        #     account_details: nil,
        #     account_type: nil,
        #     contact_details: nil,
        #     created_at: nil,
        #     discarded_at: nil,
        #     ledger_account_id: nil,
        #     live_mode: nil,
        #     metadata: nil,
        #     name: nil,
        #     object: nil,
        #     party_address: nil,
        #     party_name: nil,
        #     party_type: nil,
        #     routing_details: nil,
        #     updated_at: nil,
        #     verification_source: nil,
        #     verification_status: nil,
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
          #   # @param contact_identifier_type [Symbol, ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType]
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

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Enum

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        finalize!
      end
    end
  end
end
