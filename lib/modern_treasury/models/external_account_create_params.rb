# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute [r] account_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
      optional :account_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail]
               }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
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
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      optional :contact_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail]
               }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      #   attr_writer :contact_details

      # @!attribute [r] ledger_account
      #   Specifies a ledger account object that will be created with the external
      #     account. The resulting ledger account is linked to the external account for
      #     auto-ledgering Payment objects. See
      #     https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      #     for more details.
      #
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount, nil]
      optional :ledger_account, -> { ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount }

      # @!parse
      #   # @return [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount]
      #   attr_writer :ledger_account

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

      # @!attribute [r] party_address
      #   Required if receiving wire payments.
      #
      #   @return [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress, nil]
      optional :party_address, -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress }

      # @!parse
      #   # @return [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress]
      #   attr_writer :party_address

      # @!attribute [r] party_identifier
      #
      #   @return [String, nil]
      optional :party_identifier, String

      # @!parse
      #   # @return [String]
      #   attr_writer :party_identifier

      # @!attribute [r] party_name
      #   If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @return [String, nil]
      optional :party_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :party_name

      # @!attribute party_type
      #   Either `individual` or `business`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType, nil]
      optional :party_type,
               enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::PartyType },
               nil?: true

      # @!attribute [r] plaid_processor_token
      #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
      #     you can pass the processor token in this field.
      #
      #   @return [String, nil]
      optional :plaid_processor_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :plaid_processor_token

      # @!attribute [r] routing_details
      #
      #   @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
      optional :routing_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail]
               }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
      #   attr_writer :routing_details

      # @!parse
      #   # @param counterparty_id [String, nil]
      #   # @param account_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
      #   # @param account_type [String]
      #   # @param contact_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      #   # @param ledger_account [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String, nil]
      #   # @param party_address [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress]
      #   # @param party_identifier [String]
      #   # @param party_name [String]
      #   # @param party_type [String, nil]
      #   # @param plaid_processor_token [String]
      #   # @param routing_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
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
      #     routing_details: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # account_detail => {
      #   account_number: String,
      #   account_number_type: ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType
      # }
      # ```
      class AccountDetail < ModernTreasury::BaseModel
        # @!attribute account_number
        #
        #   @return [String]
        required :account_number, String

        # @!attribute [r] account_number_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType, nil]
        optional :account_number_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType]
        #   attr_writer :account_number_type

        # @!parse
        #   # @param account_number [String]
        #   # @param account_number_type [String]
        #   #
        #   def initialize(account_number:, account_number_type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # case account_number_type
        # in :au_number
        #   # ...
        # in :clabe
        #   # ...
        # in :hk_number
        #   # ...
        # in :iban
        #   # ...
        # in :id_number
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # contact_detail => {
      #   contact_identifier: String,
      #   contact_identifier_type: ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType
      # }
      # ```
      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute [r] contact_identifier
        #
        #   @return [String, nil]
        optional :contact_identifier, String

        # @!parse
        #   # @return [String]
        #   attr_writer :contact_identifier

        # @!attribute [r] contact_identifier_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType, nil]
        optional :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType]
        #   attr_writer :contact_identifier_type

        # @!parse
        #   # @param contact_identifier [String]
        #   # @param contact_identifier_type [String]
        #   #
        #   def initialize(contact_identifier: nil, contact_identifier_type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # case contact_identifier_type
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # ledger_account => {
      #   currency: String,
      #   ledger_id: String,
      #   name: String,
      #   normal_balance: ModernTreasury::Models::TransactionDirection,
      #   currency_exponent: Integer,
      #   **_
      # }
      # ```
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
        #   @return [Integer, nil]
        optional :currency_exponent, Integer, nil?: true

        # @!attribute description
        #   The description of the ledger account.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute [r] ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a
        #     child of.
        #
        #   @return [Array<String>]
        optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :ledger_account_category_ids

        # @!attribute [r] ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be
        #     populated here, otherwise null.
        #
        #   @return [String, nil]
        optional :ledgerable_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ledgerable_id

        # @!attribute [r] ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will
        #     be populated here, otherwise null. The value is one of internal_account or
        #     external_account.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType, nil]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType]
        #   attr_writer :ledgerable_type

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!parse
        #   # Specifies a ledger account object that will be created with the external
        #   #   account. The resulting ledger account is linked to the external account for
        #   #   auto-ledgering Payment objects. See
        #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   #   for more details.
        #   #
        #   # @param currency [String]
        #   # @param ledger_id [String]
        #   # @param name [String]
        #   # @param normal_balance [String]
        #   # @param currency_exponent [Integer, nil]
        #   # @param description [String, nil]
        #   # @param ledger_account_category_ids [Array<String>]
        #   # @param ledgerable_id [String]
        #   # @param ledgerable_type [String]
        #   # @param metadata [Hash{Symbol=>String}]
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
        #     metadata: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        #
        # @example
        # ```ruby
        # case ledgerable_type
        # in :counterparty
        #   # ...
        # in :external_account
        #   # ...
        # in :internal_account
        #   # ...
        # in :virtual_account
        #   # ...
        # end
        # ```
        class LedgerableType < ModernTreasury::Enum
          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          finalize!
        end
      end

      # @example
      # ```ruby
      # party_address => {
      #   country: String,
      #   line1: String,
      #   line2: String,
      #   locality: String,
      #   postal_code: String
      # }
      # ```
      class PartyAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        optional :locality, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
        optional :region, String, nil?: true

        # @!parse
        #   # Required if receiving wire payments.
        #   #
        #   # @param country [String, nil]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param locality [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param region [String, nil]
        #   #
        #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # Either `individual` or `business`.
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

      # @example
      # ```ruby
      # routing_detail => {
      #   routing_number: String,
      #   routing_number_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType,
      #   payment_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType
      # }
      # ```
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

        # @!attribute [r] payment_type
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType, nil]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType]
        #   attr_writer :payment_type

        # @!parse
        #   # @param routing_number [String]
        #   # @param routing_number_type [String]
        #   # @param payment_type [String]
        #   #
        #   def initialize(routing_number:, routing_number_type:, payment_type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # case routing_number_type
        # in :aba
        #   # ...
        # in :au_bsb
        #   # ...
        # in :br_codigo
        #   # ...
        # in :ca_cpa
        #   # ...
        # in :chips
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end

        # @example
        # ```ruby
        # case payment_type
        # in :ach
        #   # ...
        # in :au_becs
        #   # ...
        # in :bacs
        #   # ...
        # in :book
        #   # ...
        # in :card
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end
    end
  end
end
