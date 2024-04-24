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
      #   @return [Symbol]
      required :account_type,
               ModernTreasury::Enum.new(
                 :cash,
                 :checking,
                 :general_ledger,
                 :loan,
                 :non_resident,
                 :other,
                 :overdraft,
                 :savings
               )

      # @!attribute [rw] contact_details
      #   @return [Array<ModernTreasury::Models::ExternalAccount::ContactDetail>]
      required :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ExternalAccount::ContactDetail })

      # @!attribute [rw] counterparty_id
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

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
      #   @return [Symbol]
      required :party_type, ModernTreasury::Enum.new(:business, :individual)

      # @!attribute [rw] routing_details
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] verification_status
      #   @return [Symbol]
      required :verification_status, ModernTreasury::Enum.new(:pending_verification, :unverified, :verified)

      class ContactDetail < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] contact_identifier
        #   @return [String]
        required :contact_identifier, String

        # @!attribute [rw] contact_identifier_type
        #   @return [Symbol]
        required :contact_identifier_type, ModernTreasury::Enum.new(:email, :phone_number, :website)

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
    end
  end
end
