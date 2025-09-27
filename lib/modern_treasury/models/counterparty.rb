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
      required :accounts, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Counterparty::Account] }

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

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

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
      #   @deprecated
      #
      #   The verification status of the counterparty.
      #
      #   @return [String]
      required :verification_status, String

      # @!method initialize(id:, accounts:, created_at:, discarded_at:, email:, external_id:, legal_entity_id:, live_mode:, metadata:, name:, object:, send_remittance_advice:, updated_at:, verification_status:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Counterparty} for more details.
      #
      #   @param id [String]
      #
      #   @param accounts [Array<ModernTreasury::Models::Counterparty::Account>] The accounts for this counterparty.
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param email [String, nil] The counterparty's email.
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param legal_entity_id [String, nil] The id of the legal entity.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String, nil] A human friendly name for this counterparty.
      #
      #   @param object [String]
      #
      #   @param send_remittance_advice [Boolean] Send an email to the counterparty whenever an associated payment order is sent t
      #
      #   @param updated_at [Time]
      #
      #   @param verification_status [String] The verification status of the counterparty.

      class Account < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::AccountDetail>, nil]
        optional :account_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail] }

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::ExternalAccountType }

        # @!attribute contact_details
        #
        #   @return [Array<ModernTreasury::Models::ContactDetail>, nil]
        optional :contact_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ContactDetail] }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        optional :discarded_at, Time, nil?: true

        # @!attribute external_id
        #   An optional user-defined 180 character unique identifier.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

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
        #   @return [ModernTreasury::Models::Address, nil]
        optional :party_address, -> { ModernTreasury::Address }, nil?: true

        # @!attribute party_name
        #   The legal name of the entity which owns the account.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil]
        optional :party_type, enum: -> { ModernTreasury::Counterparty::Account::PartyType }, nil?: true

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::RoutingDetail>, nil]
        optional :routing_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail] }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute verification_source
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        optional :verification_source,
                 enum: -> { ModernTreasury::Counterparty::Account::VerificationSource },
                 nil?: true

        # @!attribute verification_status
        #
        #   @return [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus, nil]
        optional :verification_status, enum: -> { ModernTreasury::Counterparty::Account::VerificationStatus }

        # @!method initialize(id: nil, account_details: nil, account_type: nil, contact_details: nil, created_at: nil, discarded_at: nil, external_id: nil, ledger_account_id: nil, live_mode: nil, metadata: nil, name: nil, object: nil, party_address: nil, party_name: nil, party_type: nil, routing_details: nil, updated_at: nil, verification_source: nil, verification_status: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Counterparty::Account} for more details.
        #
        #   @param id [String]
        #
        #   @param account_details [Array<ModernTreasury::Models::AccountDetail>]
        #
        #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
        #
        #   @param contact_details [Array<ModernTreasury::Models::ContactDetail>]
        #
        #   @param created_at [Time]
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
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
        #   @param party_address [ModernTreasury::Models::Address, nil] The address associated with the owner or `null`.
        #
        #   @param party_name [String] The legal name of the entity which owns the account.
        #
        #   @param party_type [Symbol, ModernTreasury::Models::Counterparty::Account::PartyType, nil] Either `individual` or `business`.
        #
        #   @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
        #
        #   @param updated_at [Time]
        #
        #   @param verification_source [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationSource, nil]
        #
        #   @param verification_status [Symbol, ModernTreasury::Models::Counterparty::Account::VerificationStatus]

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
    end
  end
end
