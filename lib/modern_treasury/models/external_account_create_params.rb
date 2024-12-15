# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute account_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
      optional :account_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail
                 }
               )

      # @!attribute account_type
      #   Can be `checking`, `savings` or `other`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
      optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

      # @!attribute contact_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      optional :contact_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail
                 }
               )

      # @!attribute ledger_account
      #   Specifies a ledger account object that will be created with the external account. The resulting ledger account is linked to the external account for auto-ledgering Payment objects. See https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects for more details.
      #
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount]
      optional :ledger_account, -> { ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   A nickname for the external account. This is only for internal usage and won't affect any payments
      #
      #   @return [String]
      optional :name, String

      # @!attribute party_address
      #   Required if receiving wire payments.
      #
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress }

      # @!attribute party_identifier
      #
      #   @return [String]
      optional :party_identifier, String

      # @!attribute party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @return [String]
      optional :party_name, String

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType]
      optional :party_type, enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyType }

      # @!attribute plaid_processor_token
      #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account, you can pass the processor token in this field.
      #
      #   @return [String]
      optional :plaid_processor_token, String

      # @!attribute routing_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
      optional :routing_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail
                 }
               )

      # @!parse
      #   # @param counterparty_id [String]
      #   #
      #   # @param account_details [Array<Object>, nil]
      #   #
      #   # @param account_type [String, nil] Can be `checking`, `savings` or `other`.
      #   #
      #   # @param contact_details [Array<Object>, nil]
      #   #
      #   # @param ledger_account [Object, nil] Specifies a ledger account object that will be created with the external
      #   #   account. The resulting ledger account is linked to the external account for
      #   #   auto-ledgering Payment objects. See
      #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      #   #   for more details.
      #   #
      #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't
      #   #   affect any payments
      #   #
      #   # @param party_address [Object, nil] Required if receiving wire payments.
      #   #
      #   # @param party_identifier [String, nil]
      #   #
      #   # @param party_name [String, nil] If this value isn't provided, it will be inherited from the counterparty's name.
      #   #
      #   # @param party_type [String, nil] Either `individual` or `business`.
      #   #
      #   # @param plaid_processor_token [String, nil] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
      #   #   you can pass the processor token in this field.
      #   #
      #   # @param routing_details [Array<Object>, nil]
      #   #
      #   def initialize(
      #     counterparty_id:,
      #     account_details: nil,
      #     account_type: nil,
      #     contact_details: nil,
      #     ledger_account: nil,
      #     metadata: nil,
      #     name: nil,
      #     party_address: nil,
      #     party_identifier: nil,
      #     party_name: nil,
      #     party_type: nil,
      #     plaid_processor_token: nil,
      #     routing_details: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class AccountDetail < ModernTreasury::BaseModel
        # @!attribute account_number
        #
        #   @return [String]
        required :account_number, String

        # @!attribute account_number_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType]
        optional :account_number_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType
                 }

        # @!parse
        #   # @param account_number [String]
        #   # @param account_number_type [String, nil]
        #   #
        #   def initialize(account_number:, account_number_type: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
      end

      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute contact_identifier
        #
        #   @return [String]
        optional :contact_identifier, String

        # @!attribute contact_identifier_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType]
        optional :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType
                 }

        # @!parse
        #   # @param contact_identifier [String, nil]
        #   # @param contact_identifier_type [String, nil]
        #   #
        #   def initialize(contact_identifier: nil, contact_identifier_type: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
        # @!attribute currency
        #   The currency of the ledger account.
        #
        #   @return [String]
        required :currency, String

        # @!attribute ledger_id
        #   The id of the ledger that this account belongs to.
        #
        #   @return [String]
        required :ledger_id, String

        # @!attribute name
        #   The name of the ledger account.
        #
        #   @return [String]
        required :name, String

        # @!attribute normal_balance
        #   The normal balance of the ledger account.
        #
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute currency_exponent
        #   The currency exponent of the ledger account.
        #
        #   @return [Integer]
        optional :currency_exponent, Integer

        # @!attribute description
        #   The description of the ledger account.
        #
        #   @return [String]
        optional :description, String

        # @!attribute ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a child of.
        #
        #   @return [Array<String>]
        optional :ledger_account_category_ids, ModernTreasury::ArrayOf.new(String)

        # @!attribute ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
        #
        #   @return [String]
        optional :ledgerable_id, String

        # @!attribute ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType
                 }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash]
        optional :metadata, Hash

        # @!parse
        #   # Specifies a ledger account object that will be created with the external
        #   #   account. The resulting ledger account is linked to the external account for
        #   #   auto-ledgering Payment objects. See
        #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   #   for more details.
        #   #
        #   # @param currency [String] The currency of the ledger account.
        #   #
        #   # @param ledger_id [String] The id of the ledger that this account belongs to.
        #   #
        #   # @param name [String] The name of the ledger account.
        #   #
        #   # @param normal_balance [String] The normal balance of the ledger account.
        #   #
        #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
        #   #
        #   # @param description [String, nil] The description of the ledger account.
        #   #
        #   # @param ledger_account_category_ids [Array<String>, nil] The array of ledger account category ids that this ledger account should be a
        #   #   child of.
        #   #
        #   # @param ledgerable_id [String, nil] If the ledger account links to another object in Modern Treasury, the id will be
        #   #   populated here, otherwise null.
        #   #
        #   # @param ledgerable_type [String, nil] If the ledger account links to another object in Modern Treasury, the type will
        #   #   be populated here, otherwise null. The value is one of internal_account or
        #   #   external_account.
        #   #
        #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   def initialize(
        #     currency:,
        #     ledger_id:,
        #     name:,
        #     normal_balance:,
        #     currency_exponent: nil,
        #     description: nil,
        #     ledger_account_category_ids: nil,
        #     ledgerable_id: nil,
        #     ledgerable_type: nil,
        #     metadata: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        class LedgerableType < ModernTreasury::Enum
          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        optional :country, String

        # @!attribute line1
        #
        #   @return [String]
        optional :line1, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        optional :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        optional :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        optional :region, String

        # @!parse
        #   # Required if receiving wire payments.
        #   #
        #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String, nil]
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   # @param locality [String, nil] Locality or City.
        #   #
        #   # @param postal_code [String, nil] The postal code of the address.
        #   #
        #   # @param region [String, nil] Region or State.
        #   #
        #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # Either `individual` or `business`.
      class PartyType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end

      class RoutingDetail < ModernTreasury::BaseModel
        # @!attribute routing_number
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute routing_number_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType]
        required :routing_number_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType
                 }

        # @!attribute payment_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType }

        # @!parse
        #   # @param routing_number [String]
        #   # @param routing_number_type [String]
        #   # @param payment_type [String, nil]
        #   #
        #   def initialize(routing_number:, routing_number_type:, payment_type: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
      end
    end
  end
end
