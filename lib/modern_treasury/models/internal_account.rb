# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#create
    class InternalAccount < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_capabilities
      #   An array of AccountCapability objects that list the originating abilities of the
      #   internal account and any relevant information for them.
      #
      #   @return [Array<ModernTreasury::Models::InternalAccount::AccountCapability>]
      required :account_capabilities,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccount::AccountCapability] }

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail] }

      # @!attribute account_type
      #   Can be checking, savings or other.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::AccountType, nil]
      required :account_type, enum: -> { ModernTreasury::InternalAccount::AccountType }, nil?: true

      # @!attribute connection
      #   Specifies which financial institution the accounts belong to.
      #
      #   @return [ModernTreasury::Models::Connection]
      required :connection, -> { ModernTreasury::Connection }

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
      required :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute ledger_account_id
      #   If the internal account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

      # @!attribute legal_entity_id
      #   The Legal Entity associated to this account.
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
      #   @return [ModernTreasury::Models::Address, nil]
      required :party_address, -> { ModernTreasury::Address }, nil?: true

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String]
      required :party_name, String

      # @!attribute party_type
      #   Either individual or business.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::PartyType, nil]
      required :party_type, enum: -> { ModernTreasury::InternalAccount::PartyType }, nil?: true

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail] }

      # @!attribute status
      #   The internal account status.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccount::Status, nil]
      required :status, enum: -> { ModernTreasury::InternalAccount::Status }, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   The vendor ID associated with this account.
      #
      #   @return [String, nil]
      required :vendor_id, String, nil?: true

      # @!method initialize(id:, account_capabilities:, account_details:, account_type:, connection:, counterparty_id:, created_at:, currency:, ledger_account_id:, legal_entity_id:, live_mode:, metadata:, name:, object:, parent_account_id:, party_address:, party_name:, party_type:, routing_details:, status:, updated_at:, vendor_id:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccount} for more details.
      #
      #   @param id [String]
      #
      #   @param account_capabilities [Array<ModernTreasury::Models::InternalAccount::AccountCapability>] An array of AccountCapability objects that list the originating abilities of the
      #
      #   @param account_details [Array<ModernTreasury::Models::AccountDetail>] An array of account detail objects.
      #
      #   @param account_type [Symbol, ModernTreasury::Models::InternalAccount::AccountType, nil] Can be checking, savings or other.
      #
      #   @param connection [ModernTreasury::Models::Connection] Specifies which financial institution the accounts belong to.
      #
      #   @param counterparty_id [String, nil] The Counterparty associated to this account.
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] The currency of the account.
      #
      #   @param ledger_account_id [String, nil] If the internal account links to a ledger account in Modern Treasury, the id of
      #
      #   @param legal_entity_id [String, nil] The Legal Entity associated to this account.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String, nil] A nickname for the account.
      #
      #   @param object [String]
      #
      #   @param parent_account_id [String, nil] The parent InternalAccount of this account.
      #
      #   @param party_address [ModernTreasury::Models::Address, nil] The address associated with the owner or null.
      #
      #   @param party_name [String] The legal name of the entity which owns the account.
      #
      #   @param party_type [Symbol, ModernTreasury::Models::InternalAccount::PartyType, nil] Either individual or business.
      #
      #   @param routing_details [Array<ModernTreasury::Models::RoutingDetail>] An array of routing detail objects.
      #
      #   @param status [Symbol, ModernTreasury::Models::InternalAccount::Status, nil] The internal account status.
      #
      #   @param updated_at [Time]
      #
      #   @param vendor_id [String, nil] The vendor ID associated with this account.

      class AccountCapability < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute direction
        #   One of `debit` or `credit`. Indicates the direction of money movement this
        #   capability is responsible for.
        #
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :direction, enum: -> { ModernTreasury::TransactionDirection }

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute identifier
        #   A unique reference assigned by your bank for tracking and recognizing payment
        #   files. It is important this is formatted exactly how the bank assigned it.
        #
        #   @return [String, nil]
        required :identifier, String, nil?: true

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

        # @!attribute payment_type
        #   Indicates the the type of payment this capability is responsible for
        #   originating.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccount::AccountCapability::PaymentType]
        required :payment_type, enum: -> { ModernTreasury::InternalAccount::AccountCapability::PaymentType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, direction:, discarded_at:, identifier:, live_mode:, object:, payment_type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::InternalAccount::AccountCapability} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `debit` or `credit`. Indicates the direction of money movement this capab
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param identifier [String, nil] A unique reference assigned by your bank for tracking and recognizing payment fi
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param payment_type [Symbol, ModernTreasury::Models::InternalAccount::AccountCapability::PaymentType] Indicates the the type of payment this capability is responsible for originating
        #
        #   @param updated_at [Time]

        # Indicates the the type of payment this capability is responsible for
        # originating.
        #
        # @see ModernTreasury::Models::InternalAccount::AccountCapability#payment_type
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          ACH = :ach
          AU_BECS = :au_becs
          BACS = :bacs
          BASE = :base
          BOOK = :book
          CARD = :card
          CHATS = :chats
          CHECK = :check
          CROSS_BORDER = :cross_border
          DK_NETS = :dk_nets
          EFT = :eft
          ETHEREUM = :ethereum
          GB_FPS = :gb_fps
          HU_ICS = :hu_ics
          INTERAC = :interac
          MASAV = :masav
          MX_CCEN = :mx_ccen
          NEFT = :neft
          NICS = :nics
          NZ_BECS = :nz_becs
          PL_ELIXIR = :pl_elixir
          POLYGON = :polygon
          PROVXCHANGE = :provxchange
          RO_SENT = :ro_sent
          RTP = :rtp
          SE_BANKGIROT = :se_bankgirot
          SEN = :sen
          SEPA = :sepa
          SG_GIRO = :sg_giro
          SIC = :sic
          SIGNET = :signet
          SKNBI = :sknbi
          SOLANA = :solana
          WIRE = :wire
          ZENGIN = :zengin

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Can be checking, savings or other.
      #
      # @see ModernTreasury::Models::InternalAccount#account_type
      module AccountType
        extend ModernTreasury::Internal::Type::Enum

        BASE_WALLET = :base_wallet
        CASH = :cash
        CHECKING = :checking
        CRYPTO_WALLET = :crypto_wallet
        ETHEREUM_WALLET = :ethereum_wallet
        GENERAL_LEDGER = :general_ledger
        LOAN = :loan
        NON_RESIDENT = :non_resident
        OTHER = :other
        OVERDRAFT = :overdraft
        POLYGON_WALLET = :polygon_wallet
        SAVINGS = :savings
        SOLANA_WALLET = :solana_wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Either individual or business.
      #
      # @see ModernTreasury::Models::InternalAccount#party_type
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The internal account status.
      #
      # @see ModernTreasury::Models::InternalAccount#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        CLOSED = :closed
        PENDING_ACTIVATION = :pending_activation
        PENDING_CLOSURE = :pending_closure
        SUSPENDED = :suspended

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
