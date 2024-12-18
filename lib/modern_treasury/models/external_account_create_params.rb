# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   @return [String]
      required :counterparty_id, String

      # @!attribute account_details
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
      optional :account_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail
                 }
               )

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute contact_details
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      optional :contact_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail
                 }
               )

      # @!attribute ledger_account
      #   Specifies a ledger account object that will be created with the external account. The resulting ledger account is linked to the external account for auto-ledgering Payment objects. See https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects for more details.
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount]
      optional :ledger_account, -> { ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #   @return [String]
      optional :name, String

      # @!attribute party_address
      #   Required if receiving wire payments.
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress }

      # @!attribute party_identifier
      #   @return [String]
      optional :party_identifier, String

      # @!attribute party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #   @return [String]
      optional :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType]
      optional :party_type, enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyType }

      # @!attribute plaid_processor_token
      #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account, you can pass the processor token in this field.
      #   @return [String]
      optional :plaid_processor_token, String

      # @!attribute routing_details
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
      optional :routing_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail
                 }
               )

      class AccountDetail < ModernTreasury::BaseModel
        # @!attribute account_number
        #   @return [String]
        required :account_number, String

        # @!attribute account_number_type
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType]
        optional :account_number_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType
                 }

        class AccountNumberType < ModernTreasury::Enum
          AU_NUMBER = :au_number
          CLABE = :clabe
          HK_NUMBER = :hk_number
          IBAN = :iban
          ID_NUMBER = :id_number
          NZ_NUMBER = :nz_number
          OTHER = :other
          PAN = :pan
          SG_NUMBER = :sg_number
          WALLET_ADDRESS = :wallet_address
        end

        # @!parse
        #   # Create a new instance of AccountDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :account_number
        #   #   @option data [String, nil] :account_number_type
        #   def initialize(data = {}) = super
      end

      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute contact_identifier
        #   @return [String]
        optional :contact_identifier, String

        # @!attribute contact_identifier_type
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType]
        optional :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType
                 }

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end

        # @!parse
        #   # Create a new instance of ContactDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :contact_identifier
        #   #   @option data [String, nil] :contact_identifier_type
        #   def initialize(data = {}) = super
      end

      class LedgerAccount < ModernTreasury::BaseModel
        # @!attribute currency
        #   The currency of the ledger account.
        #   @return [String]
        required :currency, String

        # @!attribute ledger_id
        #   The id of the ledger that this account belongs to.
        #   @return [String]
        required :ledger_id, String

        # @!attribute name
        #   The name of the ledger account.
        #   @return [String]
        required :name, String

        # @!attribute normal_balance
        #   The normal balance of the ledger account.
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute currency_exponent
        #   The currency exponent of the ledger account.
        #   @return [Integer]
        optional :currency_exponent, Integer

        # @!attribute description
        #   The description of the ledger account.
        #   @return [String]
        optional :description, String

        # @!attribute ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a child of.
        #   @return [Array<String>]
        optional :ledger_account_category_ids, ModernTreasury::ArrayOf.new(String)

        # @!attribute ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
        #   @return [String]
        optional :ledgerable_id, String

        # @!attribute ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType
                 }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        class LedgerableType < ModernTreasury::Enum
          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account
        end

        # @!parse
        #   # Create a new instance of LedgerAccount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :currency The currency of the ledger account.
        #   #   @option data [String] :ledger_id The id of the ledger that this account belongs to.
        #   #   @option data [String] :name The name of the ledger account.
        #   #   @option data [String] :normal_balance The normal balance of the ledger account.
        #   #   @option data [Integer, nil] :currency_exponent The currency exponent of the ledger account.
        #   #   @option data [String, nil] :description The description of the ledger account.
        #   #   @option data [Array<String>, nil] :ledger_account_category_ids The array of ledger account category ids that this ledger account should be a
        #   #     child of.
        #   #   @option data [String, nil] :ledgerable_id If the ledger account links to another object in Modern Treasury, the id will be
        #   #     populated here, otherwise null.
        #   #   @option data [String, nil] :ledgerable_type If the ledger account links to another object in Modern Treasury, the type will
        #   #     be populated here, otherwise null. The value is one of internal_account or
        #   #     external_account.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   def initialize(data = {}) = super
      end

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        optional :country, String

        # @!attribute line1
        #   @return [String]
        optional :line1, String

        # @!attribute line2
        #   @return [String]
        optional :line2, String

        # @!attribute locality
        #   Locality or City.
        #   @return [String]
        optional :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #   @return [String]
        optional :postal_code, String

        # @!attribute region
        #   Region or State.
        #   @return [String]
        optional :region, String

        # @!parse
        #   # Create a new instance of PartyAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String, nil] :line1
        #   #   @option data [String, nil] :line2
        #   #   @option data [String, nil] :locality Locality or City.
        #   #   @option data [String, nil] :postal_code The postal code of the address.
        #   #   @option data [String, nil] :region Region or State.
        #   def initialize(data = {}) = super
      end

      # Either `individual` or `business`.
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end

      class RoutingDetail < ModernTreasury::BaseModel
        # @!attribute routing_number
        #   @return [String]
        required :routing_number, String

        # @!attribute routing_number_type
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType]
        required :routing_number_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType
                 }

        # @!attribute payment_type
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType }

        class RoutingNumberType < ModernTreasury::Enum
          ABA = :aba
          AU_BSB = :au_bsb
          BR_CODIGO = :br_codigo
          CA_CPA = :ca_cpa
          CHIPS = :chips
          CNAPS = :cnaps
          DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
          GB_SORT_CODE = :gb_sort_code
          HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
          HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
          ID_SKNBI_CODE = :id_sknbi_code
          IN_IFSC = :in_ifsc
          JP_ZENGIN_CODE = :jp_zengin_code
          MY_BRANCH_CODE = :my_branch_code
          MX_BANK_IDENTIFIER = :mx_bank_identifier
          NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
          PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
          SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
          SWIFT = :swift
          ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code
        end

        class PaymentType < ModernTreasury::Enum
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
          HU_ICS = :hu_ics
          INTERAC = :interac
          MASAV = :masav
          MX_CCEN = :mx_ccen
          NEFT = :neft
          NICS = :nics
          NZ_BECS = :nz_becs
          PL_ELIXIR = :pl_elixir
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
          WIRE = :wire
          ZENGIN = :zengin
        end

        # @!parse
        #   # Create a new instance of RoutingDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :routing_number
        #   #   @option data [String] :routing_number_type
        #   #   @option data [String, nil] :payment_type
        #   def initialize(data = {}) = super
      end
    end
  end
end
