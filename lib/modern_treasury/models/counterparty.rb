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
      required :accounts, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::Counterparty::Account }]

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute email
      #   The counterparty's email.
      #
      #   @return [String]
      required :email, String

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   A human friendly name for this counterparty.
      #
      #   @return [String]
      required :name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent to the bank.
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
      #   #
      #   # @param accounts [Array<ModernTreasury::Models::Counterparty::Account>] The accounts for this counterparty.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param email [String, nil] The counterparty's email.
      #   #
      #   # @param legal_entity_id [String, nil] The id of the legal entity.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String, nil] A human friendly name for this counterparty.
      #   #
      #   # @param object [String]
      #   #
      #   # @param send_remittance_advice [Boolean] Send an email to the counterparty whenever an associated payment order is sent
      #   #   to the bank.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param verification_status [String] The verification status of the counterparty.
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
      #     verification_status:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Account < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::AccountDetail>]
        optional :account_details, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::AccountDetail }]

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!attribute contact_details
        #
        #   @return [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>]
        optional :contact_details,
                 ModernTreasury::ArrayOf[-> { ModernTreasury::Models::Counterparty::Account::ContactDetail }]

        # @!attribute created_at
        #
        #   @return [Time]
        optional :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time]
        optional :discarded_at, Time

        # @!attribute ledger_account_id
        #   If the external account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
        #
        #   @return [String]
        optional :ledger_account_id, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        optional :live_mode, ModernTreasury::BooleanModel

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash{Symbol => String}]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't affect any payments
        #
        #   @return [String]
        optional :name, String

        # @!attribute object
        #
        #   @return [String]
        optional :object, String

        # @!attribute party_address
        #   The address associated with the owner or `null`.
        #
        #   @return [ModernTreasury::Models::Counterparty::Account::PartyAddress]
        optional :party_address, -> { ModernTreasury::Models::Counterparty::Account::PartyAddress }

        # @!attribute party_name
        #   The legal name of the entity which owns the account.
        #
        #   @return [String]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType]
        optional :party_type, enum: -> { ModernTreasury::Models::Counterparty::Account::PartyType }

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::RoutingDetail>]
        optional :routing_details, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::RoutingDetail }]

        # @!attribute updated_at
        #
        #   @return [Time]
        optional :updated_at, Time

        # @!attribute verification_source
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource]
        optional :verification_source,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationSource }

        # @!attribute verification_status
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]
        optional :verification_status,
                 enum: -> { ModernTreasury::Models::Counterparty::Account::VerificationStatus }

        # @!parse
        #   # @param id [String, nil]
        #   #
        #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>, nil]
        #   #
        #   # @param account_type [String, nil] Can be `checking`, `savings` or `other`.
        #   #
        #   # @param contact_details [Array<ModernTreasury::Models::Counterparty::Account::ContactDetail>, nil]
        #   #
        #   # @param created_at [String, nil]
        #   #
        #   # @param discarded_at [String, nil]
        #   #
        #   # @param ledger_account_id [String, nil] If the external account links to a ledger account in Modern Treasury, the id of
        #   #   the ledger account will be populated here.
        #   #
        #   # @param live_mode [Boolean, nil] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
        #   #   affect any payments
        #   #
        #   # @param object [String, nil]
        #   #
        #   # @param party_address [ModernTreasury::Models::Counterparty::Account::PartyAddress, nil] The address associated with the owner or `null`.
        #   #
        #   # @param party_name [String, nil] The legal name of the entity which owns the account.
        #   #
        #   # @param party_type [String, nil] Either `individual` or `business`.
        #   #
        #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>, nil]
        #   #
        #   # @param updated_at [String, nil]
        #   #
        #   # @param verification_source [String, nil]
        #   #
        #   # @param verification_status [String, nil]
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
        #     verification_status: nil
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
                   enum: -> {
                     ModernTreasury::Models::Counterparty::Account::ContactDetail::ContactIdentifierType
                   }

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
          #   # @param discarded_at [String, nil]
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

          # @example
          #
          # ```ruby
          # case enum
          # in :email
          #   # ...
          # in :phone_number
          #   # ...
          # in :website
          #   # ...
          # end
          # ```
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
          #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
          #   #
          #   # @param created_at [String]
          #   #
          #   # @param line1 [String, nil]
          #   #
          #   # @param line2 [String, nil]
          #   #
          #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
          #   #   if it exists in the test environment.
          #   #
          #   # @param locality [String, nil] Locality or City.
          #   #
          #   # @param object [String]
          #   #
          #   # @param postal_code [String, nil] The postal code of the address.
          #   #
          #   # @param region [String, nil] Region or State.
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
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :business
        #   # ...
        # in :individual
        #   # ...
        # end
        # ```
        class PartyType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :ach_prenote
        #   # ...
        # in :microdeposits
        #   # ...
        # in :plaid
        #   # ...
        # end
        # ```
        class VerificationSource < ModernTreasury::Enum
          ACH_PRENOTE = :ach_prenote
          MICRODEPOSITS = :microdeposits
          PLAID = :plaid
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :pending_verification
        #   # ...
        # in :unverified
        #   # ...
        # in :verified
        #   # ...
        # end
        # ```
        class VerificationStatus < ModernTreasury::Enum
          PENDING_VERIFICATION = :pending_verification
          UNVERIFIED = :unverified
          VERIFIED = :verified
        end
      end

      # The verification status of the counterparty.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :denied
      #   # ...
      # in :needs_approval
      #   # ...
      # in :unverified
      #   # ...
      # in :verified
      #   # ...
      # end
      # ```
      class VerificationStatus < ModernTreasury::Enum
        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified
      end
    end
  end
end
