# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#create
    class InternalAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute currency
      #   The currency of the internal account. Supports fiat and stablecoin currencies.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency]
      required :currency, enum: -> { ModernTreasury::InternalAccountCreateParams::Currency }

      # @!attribute name
      #   The nickname of the account.
      #
      #   @return [String]
      required :name, String

      # @!attribute account_capabilities
      #   An array of AccountCapability objects that list the originating abilities of the
      #   internal account and any relevant information for them.
      #
      #   @return [Array<ModernTreasury::Models::InternalAccountCreateParams::AccountCapability>, nil]
      optional :account_capabilities,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccountCreateParams::AccountCapability] }

      # @!attribute account_type
      #   The account type, used to provision the appropriate account at the financial
      #   institution.
      #
      #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountType, nil]
      optional :account_type, enum: -> { ModernTreasury::InternalAccountCreateParams::AccountType }

      # @!attribute connection_id
      #   The identifier of the financial institution the account belongs to. If not
      #   provided, defaults to the default connection, or the sole connection if only one
      #   exists.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute debitable
      #   Whether this account can receive ACH debits. Only applicable to accounts created
      #   under a Modern Treasury PSP connection, or `null` for Bring Your Own Bank
      #   accounts. Defaults to `false`. Configurable only on creation. Please reach out
      #   to your customer success manager to enable this capability for your connection.
      #
      #   @return [Boolean, nil]
      optional :debitable, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute legal_entity_id
      #   The LegalEntity associated to this account.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute parent_account_id
      #   The parent internal account of this new account.
      #
      #   @return [String, nil]
      optional :parent_account_id, String

      # @!attribute party_address
      #   The address associated with the owner or null.
      #
      #   @return [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::InternalAccountCreateParams::PartyAddress }

      # @!attribute party_name
      #   The legal name of the entity which owns the account.
      #
      #   @return [String, nil]
      optional :party_name, String, nil?: true

      # @!attribute vendor_attributes
      #   A hash of vendor specific attributes that will be used when creating the account
      #   at the vendor specified by the given connection.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :vendor_attributes, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(currency:, name:, account_capabilities: nil, account_type: nil, connection_id: nil, counterparty_id: nil, debitable: nil, external_id: nil, legal_entity_id: nil, metadata: nil, parent_account_id: nil, party_address: nil, party_name: nil, vendor_attributes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccountCreateParams} for more details.
      #
      #   @param currency [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency] The currency of the internal account. Supports fiat and stablecoin currencies.
      #
      #   @param name [String] The nickname of the account.
      #
      #   @param account_capabilities [Array<ModernTreasury::Models::InternalAccountCreateParams::AccountCapability>] An array of AccountCapability objects that list the originating abilities of the
      #
      #   @param account_type [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountType] The account type, used to provision the appropriate account at the financial ins
      #
      #   @param connection_id [String] The identifier of the financial institution the account belongs to. If not provi
      #
      #   @param counterparty_id [String] The Counterparty associated to this account.
      #
      #   @param debitable [Boolean, nil] Whether this account can receive ACH debits. Only applicable to accounts created
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param legal_entity_id [String] The LegalEntity associated to this account.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param parent_account_id [String] The parent internal account of this new account.
      #
      #   @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress] The address associated with the owner or null.
      #
      #   @param party_name [String, nil] The legal name of the entity which owns the account.
      #
      #   @param vendor_attributes [Hash{Symbol=>String}] A hash of vendor specific attributes that will be used when creating the account
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The currency of the internal account. Supports fiat and stablecoin currencies.
      module Currency
        extend ModernTreasury::Internal::Type::Enum

        USD = :USD
        CAD = :CAD
        USDC = :USDC
        USDT = :USDT
        PYUSD = :PYUSD
        USDG = :USDG

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        #   @return [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountCapability::PaymentType]
        required :payment_type,
                 enum: -> { ModernTreasury::InternalAccountCreateParams::AccountCapability::PaymentType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, direction:, discarded_at:, identifier:, live_mode:, object:, payment_type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::InternalAccountCreateParams::AccountCapability} for
        #   more details.
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
        #   @param payment_type [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountCapability::PaymentType] Indicates the the type of payment this capability is responsible for originating
        #
        #   @param updated_at [Time]

        # Indicates the the type of payment this capability is responsible for
        # originating.
        #
        # @see ModernTreasury::Models::InternalAccountCreateParams::AccountCapability#payment_type
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          ACH = :ach
          AU_BECS = :au_becs
          BACS = :bacs
          BOOK = :book
          CARD = :card
          CHATS = :chats
          CHECK = :check
          CROSS_BORDER = :cross_border
          DK_NETS = :dk_nets
          EFT = :eft
          GB_FPS = :gb_fps
          MASAV = :masav
          MX_CCEN = :mx_ccen
          NEFT = :neft
          NICS = :nics
          NZ_BECS = :nz_becs
          PL_ELIXIR = :pl_elixir
          RTP = :rtp
          SE_BANKGIROT = :se_bankgirot
          SEPA = :sepa
          SG_GIRO = :sg_giro
          SIC = :sic
          STABLECOIN = :stablecoin
          WIRE = :wire
          ZENGIN = :zengin

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The account type, used to provision the appropriate account at the financial
      # institution.
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

      class PartyAddress < ModernTreasury::Internal::Type::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

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

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The address associated with the owner or null.
        #
        #   @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @param line1 [String]
        #
        #   @param locality [String] Locality or City.
        #
        #   @param postal_code [String] The postal code of the address.
        #
        #   @param region [String] Region or State.
        #
        #   @param line2 [String]
      end
    end
  end
end
