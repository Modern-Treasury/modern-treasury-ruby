# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # internal_account => {
    #   id: String,
    #   account_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail] === _1 },
    #   account_type: ModernTreasury::Models::InternalAccount::AccountType,
    #   connection: ModernTreasury::Models::Connection,
    #   counterparty_id: String,
    #   **_
    # }
    # ```
    class InternalAccount < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail] }

      # @!attribute account_type
      #   Can be checking, savings or other.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::AccountType, nil]
      required :account_type, enum: -> { ModernTreasury::Models::InternalAccount::AccountType }, nil?: true

      # @!attribute connection
      #   Specifies which financial institution the accounts belong to.
      #
      #   @return [ModernTreasury::Models::Connection]
      required :connection, -> { ModernTreasury::Models::Connection }

      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute ledger_account_id
      #   If the internal account links to a ledger account in Modern Treasury, the id of
      #     the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

      # @!attribute legal_entity_id
      #   The Legal Entity associated to this account
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
      #   A nickname for the account.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute parent_account_id
      #   The parent InternalAccount of this account.
      #
      #   @return [String, nil]
      required :parent_account_id, String, nil?: true

      # @!attribute party_address
      #   The address associated with the owner or null.
      #
      #   @return [ModernTreasury::Models::InternalAccount::PartyAddress, nil]
      required :party_address, -> { ModernTreasury::Models::InternalAccount::PartyAddress }, nil?: true

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either individual or business.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::PartyType, nil]
      required :party_type, enum: -> { ModernTreasury::Models::InternalAccount::PartyType }, nil?: true

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>]
      #   # @param account_type [String, nil]
      #   # @param connection [ModernTreasury::Models::Connection]
      #   # @param counterparty_id [String, nil]
      #   # @param created_at [String]
      #   # @param currency [String]
      #   # @param ledger_account_id [String, nil]
      #   # @param legal_entity_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String, nil]
      #   # @param object [String]
      #   # @param parent_account_id [String, nil]
      #   # @param party_address [ModernTreasury::Models::InternalAccount::PartyAddress, nil]
      #   # @param party_name [String]
      #   # @param party_type [String, nil]
      #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>]
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     account_details:,
      #     account_type:,
      #     connection:,
      #     counterparty_id:,
      #     created_at:,
      #     currency:,
      #     ledger_account_id:,
      #     legal_entity_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     parent_account_id:,
      #     party_address:,
      #     party_name:,
      #     party_type:,
      #     routing_details:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Can be checking, savings or other.
      #
      # @example
      # ```ruby
      # case account_type
      # in :cash
      #   # ...
      # in :checking
      #   # ...
      # in :general_ledger
      #   # ...
      # in :loan
      #   # ...
      # in :non_resident
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class AccountType < ModernTreasury::Enum
        CASH = :cash
        CHECKING = :checking
        GENERAL_LEDGER = :general_ledger
        LOAN = :loan
        NON_RESIDENT = :non_resident
        OTHER = :other
        OVERDRAFT = :overdraft
        SAVINGS = :savings

        finalize!
      end

      # @example
      # ```ruby
      # party_address => {
      #   id: String,
      #   country: String,
      #   created_at: Time,
      #   line1: String,
      #   line2: String,
      #   **_
      # }
      # ```
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
        #   # The address associated with the owner or null.
        #   #
        #   # @param id [String]
        #   # @param country [String, nil]
        #   # @param created_at [String]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param live_mode [Boolean]
        #   # @param locality [String, nil]
        #   # @param object [String]
        #   # @param postal_code [String, nil]
        #   # @param region [String, nil]
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
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # Either individual or business.
      #
      # @example
      # ```ruby
      # case party_type
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # end
      # ```
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!
      end
    end
  end
end
