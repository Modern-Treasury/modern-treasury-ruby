# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#create
    class CounterpartyCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute name
      #   A human friendly name for this counterparty.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute accounting
      #
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::Accounting, nil]
      optional :accounting, -> { ModernTreasury::CounterpartyCreateParams::Accounting }

      # @!attribute accounts
      #   The accounts for this counterparty.
      #
      #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>, nil]
      optional :accounts,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account]
               }

      # @!attribute email
      #   The counterparty's email.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute ledger_type
      #   @deprecated
      #
      #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      #
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType, nil]
      optional :ledger_type, enum: -> { ModernTreasury::CounterpartyCreateParams::LedgerType }

      # @!attribute legal_entity
      #
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, nil]
      optional :legal_entity, -> { ModernTreasury::CounterpartyCreateParams::LegalEntity }

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      #
      #   @return [Boolean, nil]
      optional :send_remittance_advice, ModernTreasury::Internal::Type::Boolean

      # @!attribute taxpayer_identifier
      #   Either a valid SSN or EIN.
      #
      #   @return [String, nil]
      optional :taxpayer_identifier, String

      # @!attribute verification_status
      #   The verification status of the counterparty.
      #
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus, nil]
      optional :verification_status, enum: -> { ModernTreasury::CounterpartyCreateParams::VerificationStatus }

      # @!method initialize(name:, accounting: nil, accounts: nil, email: nil, ledger_type: nil, legal_entity: nil, legal_entity_id: nil, metadata: nil, send_remittance_advice: nil, taxpayer_identifier: nil, verification_status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::CounterpartyCreateParams} for more details.
      #
      #   @param name [String, nil] A human friendly name for this counterparty.
      #
      #   @param accounting [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      #
      #   @param accounts [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>] The accounts for this counterparty.
      #
      #   @param email [String, nil] The counterparty's email.
      #
      #   @param ledger_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType] An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #
      #   @param legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      #
      #   @param legal_entity_id [String, nil] The id of the legal entity.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param send_remittance_advice [Boolean] Send an email to the counterparty whenever an associated payment order is sent t
      #
      #   @param taxpayer_identifier [String] Either a valid SSN or EIN.
      #
      #   @param verification_status [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus] The verification status of the counterparty.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class Accounting < ModernTreasury::Internal::Type::BaseModel
        # @!attribute type
        #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type, nil]
        optional :type, enum: -> { ModernTreasury::CounterpartyCreateParams::Accounting::Type }

        # @!method initialize(type: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::CounterpartyCreateParams::Accounting} for more details.
        #
        #   @param type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type] An optional type to auto-sync the counterparty to your ledger. Either `customer`

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::Accounting#type
        module Type
          extend ModernTreasury::Internal::Type::Enum

          CUSTOMER = :customer
          VENDOR = :vendor

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Account < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>, nil]
        optional :account_details,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account::AccountDetail]
                 }

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::ExternalAccountType }

        # @!attribute contact_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>, nil]
        optional :contact_details,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account::ContactDetail]
                 }

        # @!attribute ledger_account
        #   Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        #
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount, nil]
        optional :ledger_account, -> { ModernTreasury::CounterpartyCreateParams::Account::LedgerAccount }

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

        # @!attribute party_address
        #   Required if receiving wire payments.
        #
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress, nil]
        optional :party_address, -> { ModernTreasury::CounterpartyCreateParams::Account::PartyAddress }

        # @!attribute party_identifier
        #
        #   @return [String, nil]
        optional :party_identifier, String

        # @!attribute party_name
        #   If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil]
        optional :party_type,
                 enum: -> { ModernTreasury::CounterpartyCreateParams::Account::PartyType },
                 nil?: true

        # @!attribute plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        #
        #   @return [String, nil]
        optional :plaid_processor_token, String

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>, nil]
        optional :routing_details,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail]
                 }

        # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::CounterpartyCreateParams::Account} for more details.
        #
        #   @param account_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        #
        #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
        #
        #   @param contact_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>]
        #
        #   @param ledger_account [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount] Specifies a ledger account object that will be created with the external account
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
        #
        #   @param party_address [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress] Required if receiving wire payments.
        #
        #   @param party_identifier [String]
        #
        #   @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @param party_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil] Either `individual` or `business`.
        #
        #   @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #
        #   @param routing_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType, nil]
          optional :account_number_type,
                   enum: -> {
                     ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType
                   }

          # @!method initialize(account_number:, account_number_type: nil)
          #   @param account_number [String]
          #   @param account_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType]

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail#account_number_type
          module AccountNumberType
            extend ModernTreasury::Internal::Type::Enum

            AU_NUMBER = :au_number
            BASE_ADDRESS = :base_address
            CLABE = :clabe
            ETHEREUM_ADDRESS = :ethereum_address
            HK_NUMBER = :hk_number
            IBAN = :iban
            ID_NUMBER = :id_number
            NZ_NUMBER = :nz_number
            OTHER = :other
            PAN = :pan
            POLYGON_ADDRESS = :polygon_address
            SG_NUMBER = :sg_number
            SOLANA_ADDRESS = :solana_address
            WALLET_ADDRESS = :wallet_address

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ContactDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute contact_identifier
          #
          #   @return [String, nil]
          optional :contact_identifier, String

          # @!attribute contact_identifier_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType, nil]
          optional :contact_identifier_type,
                   enum: -> {
                     ModernTreasury::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType
                   }

          # @!method initialize(contact_identifier: nil, contact_identifier_type: nil)
          #   @param contact_identifier [String]
          #   @param contact_identifier_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType]

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail#contact_identifier_type
          module ContactIdentifierType
            extend ModernTreasury::Internal::Type::Enum

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see ModernTreasury::Models::CounterpartyCreateParams::Account#ledger_account
        class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
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
          required :normal_balance, enum: -> { ModernTreasury::TransactionDirection }

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

          # @!attribute ledger_account_category_ids
          #   The array of ledger account category ids that this ledger account should be a
          #   child of.
          #
          #   @return [Array<String>, nil]
          optional :ledger_account_category_ids, ModernTreasury::Internal::Type::ArrayOf[String]

          # @!attribute ledgerable_id
          #   If the ledger account links to another object in Modern Treasury, the id will be
          #   populated here, otherwise null.
          #
          #   @return [String, nil]
          optional :ledgerable_id, String

          # @!attribute ledgerable_type
          #   If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType, nil]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType
                   }

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

          # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount} for
          #   more details.
          #
          #   Specifies a ledger account object that will be created with the external
          #   account. The resulting ledger account is linked to the external account for
          #   auto-ledgering Payment objects. See
          #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          #   for more details.
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param ledger_id [String] The id of the ledger that this account belongs to.
          #
          #   @param name [String] The name of the ledger account.
          #
          #   @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection] The normal balance of the ledger account.
          #
          #   @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
          #
          #   @param description [String, nil] The description of the ledger account.
          #
          #   @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a ch
          #
          #   @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
          #
          #   @param ledgerable_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType] If the ledger account links to another object in Modern Treasury, the type will
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s

          # If the ledger account links to another object in Modern Treasury, the type will
          # be populated here, otherwise null. The value is one of internal_account or
          # external_account.
          #
          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount#ledgerable_type
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see ModernTreasury::Models::CounterpartyCreateParams::Account#party_address
        class PartyAddress < ModernTreasury::Internal::Type::BaseModel
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

          # @!method initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          #   Required if receiving wire payments.
          #
          #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @param line1 [String, nil]
          #
          #   @param line2 [String, nil]
          #
          #   @param locality [String, nil] Locality or City.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param region [String, nil] Region or State.
        end

        # Either `individual` or `business`.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::Account#party_type
        module PartyType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute routing_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> {
                     ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType
                   }

          # @!attribute payment_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType, nil]
          optional :payment_type,
                   enum: -> { ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType }

          # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
          #   @param routing_number [String]
          #   @param routing_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          #   @param payment_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType]

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail#routing_number_type
          module RoutingNumberType
            extend ModernTreasury::Internal::Type::Enum

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
            SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
            SWIFT = :swift
            ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail#payment_type
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
      end

      # @deprecated
      #
      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      module LedgerType
        extend ModernTreasury::Internal::Type::Enum

        CUSTOMER = :customer
        VENDOR = :vendor

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class LegalEntity < ModernTreasury::Internal::Type::BaseModel
        # @!attribute legal_entity_type
        #   The type of legal entity.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType]
        required :legal_entity_type,
                 enum: -> { ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityType }

        # @!attribute addresses
        #   A list of addresses for the entity.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>, nil]
        optional :addresses,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::LegalEntity::Address]
                 }

        # @!attribute bank_settings
        #
        #   @return [ModernTreasury::Models::BankSettings, nil]
        optional :bank_settings, -> { ModernTreasury::BankSettings }, nil?: true

        # @!attribute business_name
        #   The business's legal business name.
        #
        #   @return [String, nil]
        optional :business_name, String, nil?: true

        # @!attribute citizenship_country
        #   The country of citizenship for an individual.
        #
        #   @return [String, nil]
        optional :citizenship_country, String, nil?: true

        # @!attribute compliance_details
        #
        #   @return [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
        optional :compliance_details, -> { ModernTreasury::LegalEntityComplianceDetail }, nil?: true

        # @!attribute date_formed
        #   A business's formation date (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_formed, Date, nil?: true

        # @!attribute date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_of_birth, Date, nil?: true

        # @!attribute doing_business_as_names
        #
        #   @return [Array<String>, nil]
        optional :doing_business_as_names, ModernTreasury::Internal::Type::ArrayOf[String]

        # @!attribute email
        #   The entity's primary email.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute first_name
        #   An individual's first name.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute identifications
        #   A list of identifications for the legal entity.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>, nil]
        optional :identifications,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::LegalEntity::Identification]
                 }

        # @!attribute industry_classifications
        #   A list of industry classifications for the legal entity.
        #
        #   @return [Array<ModernTreasury::Models::LegalEntityIndustryClassification>, nil]
        optional :industry_classifications,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]
                 }

        # @!attribute last_name
        #   An individual's last name.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute legal_entity_associations
        #   The legal entity associations and its child legal entities.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation>, nil]
        optional :legal_entity_associations,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation]
                 },
                 nil?: true

        # @!attribute legal_structure
        #   The business's legal structure.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure, nil]
        optional :legal_structure,
                 enum: -> { ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalStructure },
                 nil?: true

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute middle_name
        #   An individual's middle name.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute phone_numbers
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>, nil]
        optional :phone_numbers,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::LegalEntity::PhoneNumber]
                 }

        # @!attribute politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #
        #   @return [Boolean, nil]
        optional :politically_exposed_person, ModernTreasury::Internal::Type::Boolean, nil?: true

        # @!attribute preferred_name
        #   An individual's preferred name.
        #
        #   @return [String, nil]
        optional :preferred_name, String, nil?: true

        # @!attribute prefix
        #   An individual's prefix.
        #
        #   @return [String, nil]
        optional :prefix, String, nil?: true

        # @!attribute risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating, nil]
        optional :risk_rating,
                 enum: -> { ModernTreasury::CounterpartyCreateParams::LegalEntity::RiskRating },
                 nil?: true

        # @!attribute suffix
        #   An individual's suffix.
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!attribute wealth_and_employment_details
        #
        #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
        optional :wealth_and_employment_details, -> { ModernTreasury::WealthAndEmploymentDetails }, nil?: true

        # @!attribute website
        #   The entity's primary website URL.
        #
        #   @return [String, nil]
        optional :website, String, nil?: true

        # @!method initialize(legal_entity_type:, addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_entity_associations: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::CounterpartyCreateParams::LegalEntity} for more
        #   details.
        #
        #   @param legal_entity_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType] The type of legal entity.
        #
        #   @param addresses [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>] A list of addresses for the entity.
        #
        #   @param bank_settings [ModernTreasury::Models::BankSettings, nil]
        #
        #   @param business_name [String, nil] The business's legal business name.
        #
        #   @param citizenship_country [String, nil] The country of citizenship for an individual.
        #
        #   @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
        #
        #   @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
        #
        #   @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
        #
        #   @param doing_business_as_names [Array<String>]
        #
        #   @param email [String, nil] The entity's primary email.
        #
        #   @param first_name [String, nil] An individual's first name.
        #
        #   @param identifications [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>] A list of identifications for the legal entity.
        #
        #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
        #
        #   @param last_name [String, nil] An individual's last name.
        #
        #   @param legal_entity_associations [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation>, nil] The legal entity associations and its child legal entities.
        #
        #   @param legal_structure [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure, nil] The business's legal structure.
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param middle_name [String, nil] An individual's middle name.
        #
        #   @param phone_numbers [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>]
        #
        #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
        #
        #   @param preferred_name [String, nil] An individual's preferred name.
        #
        #   @param prefix [String, nil] An individual's prefix.
        #
        #   @param risk_rating [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
        #
        #   @param suffix [String, nil] An individual's suffix.
        #
        #   @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
        #
        #   @param website [String, nil] The entity's primary website URL.

        # The type of legal entity.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity#legal_entity_type
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Address < ModernTreasury::Internal::Type::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute locality
          #   Locality or City.
          #
          #   @return [String, nil]
          required :locality, String, nil?: true

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

          # @!attribute address_types
          #   The types of this address.
          #
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>, nil]
          optional :address_types,
                   -> {
                     ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::CounterpartyCreateParams::LegalEntity::Address::AddressType]
                   }

          # @!attribute line2
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!method initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @param line1 [String, nil]
          #
          #   @param locality [String, nil] Locality or City.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param region [String, nil] Region or State.
          #
          #   @param address_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>] The types of this address.
          #
          #   @param line2 [String, nil]

          module AddressType
            extend ModernTreasury::Internal::Type::Enum

            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Identification < ModernTreasury::Internal::Type::BaseModel
          # @!attribute id_number
          #   The ID number of identification document.
          #
          #   @return [String]
          required :id_number, String

          # @!attribute id_type
          #   The type of ID number.
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> { ModernTreasury::CounterpartyCreateParams::LegalEntity::Identification::IDType }

          # @!attribute expiration_date
          #   The date when the Identification is no longer considered valid by the issuing
          #   authority.
          #
          #   @return [Date, nil]
          optional :expiration_date, Date, nil?: true

          # @!attribute issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          #
          #   @return [String, nil]
          optional :issuing_country, String, nil?: true

          # @!attribute issuing_region
          #   The region in which the identifcation was issued.
          #
          #   @return [String, nil]
          optional :issuing_region, String, nil?: true

          # @!method initialize(id_number:, id_type:, expiration_date: nil, issuing_country: nil, issuing_region: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification}
          #   for more details.
          #
          #   @param id_number [String] The ID number of identification document.
          #
          #   @param id_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType] The type of ID number.
          #
          #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
          #
          #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
          #
          #   @param issuing_region [String, nil] The region in which the identifcation was issued.

          # The type of ID number.
          #
          # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification#id_type
          module IDType
            extend ModernTreasury::Internal::Type::Enum

            AR_CUIL = :ar_cuil
            AR_CUIT = :ar_cuit
            BR_CNPJ = :br_cnpj
            BR_CPF = :br_cpf
            CL_RUN = :cl_run
            CL_RUT = :cl_rut
            CO_CEDULAS = :co_cedulas
            CO_NIT = :co_nit
            DRIVERS_LICENSE = :drivers_license
            HN_ID = :hn_id
            HN_RTN = :hn_rtn
            IN_LEI = :in_lei
            KR_BRN = :kr_brn
            KR_CRN = :kr_crn
            KR_RRN = :kr_rrn
            PASSPORT = :passport
            SA_TIN = :sa_tin
            SA_VAT = :sa_vat
            US_EIN = :us_ein
            US_ITIN = :us_itin
            US_SSN = :us_ssn
            VN_TIN = :vn_tin

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
          # @!attribute relationship_types
          #
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          required :relationship_types,
                   -> {
                     ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType]
                   }

          # @!attribute child_legal_entity
          #   The child legal entity.
          #
          #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity, nil]
          optional :child_legal_entity,
                   -> {
                     ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
                   }

          # @!attribute child_legal_entity_id
          #   The ID of the child legal entity.
          #
          #   @return [String, nil]
          optional :child_legal_entity_id, String

          # @!attribute ownership_percentage
          #   The child entity's ownership percentage iff they are a beneficial owner.
          #
          #   @return [Integer, nil]
          optional :ownership_percentage, Integer, nil?: true

          # @!attribute title
          #   The job title of the child entity at the parent entity.
          #
          #   @return [String, nil]
          optional :title, String, nil?: true

          # @!method initialize(relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil)
          #   @param relationship_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          #
          #   @param child_legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity] The child legal entity.
          #
          #   @param child_legal_entity_id [String] The ID of the child legal entity.
          #
          #   @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
          #
          #   @param title [String, nil] The job title of the child entity at the parent entity.

          # A list of relationship types for how the child entity relates to parent entity.
          module RelationshipType
            extend ModernTreasury::Internal::Type::Enum

            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation#child_legal_entity
          class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
            # @!attribute addresses
            #   A list of addresses for the entity.
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>, nil]
            optional :addresses,
                     -> {
                       ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address]
                     }

            # @!attribute bank_settings
            #
            #   @return [ModernTreasury::Models::BankSettings, nil]
            optional :bank_settings, -> { ModernTreasury::BankSettings }, nil?: true

            # @!attribute business_name
            #   The business's legal business name.
            #
            #   @return [String, nil]
            optional :business_name, String, nil?: true

            # @!attribute citizenship_country
            #   The country of citizenship for an individual.
            #
            #   @return [String, nil]
            optional :citizenship_country, String, nil?: true

            # @!attribute compliance_details
            #
            #   @return [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
            optional :compliance_details, -> { ModernTreasury::LegalEntityComplianceDetail }, nil?: true

            # @!attribute date_formed
            #   A business's formation date (YYYY-MM-DD).
            #
            #   @return [Date, nil]
            optional :date_formed, Date, nil?: true

            # @!attribute date_of_birth
            #   An individual's date of birth (YYYY-MM-DD).
            #
            #   @return [Date, nil]
            optional :date_of_birth, Date, nil?: true

            # @!attribute doing_business_as_names
            #
            #   @return [Array<String>, nil]
            optional :doing_business_as_names, ModernTreasury::Internal::Type::ArrayOf[String]

            # @!attribute email
            #   The entity's primary email.
            #
            #   @return [String, nil]
            optional :email, String, nil?: true

            # @!attribute first_name
            #   An individual's first name.
            #
            #   @return [String, nil]
            optional :first_name, String, nil?: true

            # @!attribute identifications
            #   A list of identifications for the legal entity.
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>, nil]
            optional :identifications,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                       ]
                     end

            # @!attribute industry_classifications
            #   A list of industry classifications for the legal entity.
            #
            #   @return [Array<ModernTreasury::Models::LegalEntityIndustryClassification>, nil]
            optional :industry_classifications,
                     -> {
                       ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]
                     }

            # @!attribute last_name
            #   An individual's last name.
            #
            #   @return [String, nil]
            optional :last_name, String, nil?: true

            # @!attribute legal_entity_type
            #   The type of legal entity.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType, nil]
            optional :legal_entity_type,
                     enum: -> {
                       ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                     }

            # @!attribute legal_structure
            #   The business's legal structure.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure, nil]
            optional :legal_structure,
                     enum: -> {
                       ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                     },
                     nil?: true

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

            # @!attribute middle_name
            #   An individual's middle name.
            #
            #   @return [String, nil]
            optional :middle_name, String, nil?: true

            # @!attribute phone_numbers
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>, nil]
            optional :phone_numbers,
                     -> do
                       ModernTreasury::Internal::Type::ArrayOf[
                         ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                       ]
                     end

            # @!attribute politically_exposed_person
            #   Whether the individual is a politically exposed person.
            #
            #   @return [Boolean, nil]
            optional :politically_exposed_person, ModernTreasury::Internal::Type::Boolean, nil?: true

            # @!attribute preferred_name
            #   An individual's preferred name.
            #
            #   @return [String, nil]
            optional :preferred_name, String, nil?: true

            # @!attribute prefix
            #   An individual's prefix.
            #
            #   @return [String, nil]
            optional :prefix, String, nil?: true

            # @!attribute risk_rating
            #   The risk rating of the legal entity. One of low, medium, high.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating, nil]
            optional :risk_rating,
                     enum: -> {
                       ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating
                     },
                     nil?: true

            # @!attribute suffix
            #   An individual's suffix.
            #
            #   @return [String, nil]
            optional :suffix, String, nil?: true

            # @!attribute wealth_and_employment_details
            #
            #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
            optional :wealth_and_employment_details,
                     -> {
                       ModernTreasury::WealthAndEmploymentDetails
                     },
                     nil?: true

            # @!attribute website
            #   The entity's primary website URL.
            #
            #   @return [String, nil]
            optional :website, String, nil?: true

            # @!method initialize(addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_entity_type: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil)
            #   Some parameter documentations has been truncated, see
            #   {ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity}
            #   for more details.
            #
            #   The child legal entity.
            #
            #   @param addresses [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>] A list of addresses for the entity.
            #
            #   @param bank_settings [ModernTreasury::Models::BankSettings, nil]
            #
            #   @param business_name [String, nil] The business's legal business name.
            #
            #   @param citizenship_country [String, nil] The country of citizenship for an individual.
            #
            #   @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
            #
            #   @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
            #
            #   @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
            #
            #   @param doing_business_as_names [Array<String>]
            #
            #   @param email [String, nil] The entity's primary email.
            #
            #   @param first_name [String, nil] An individual's first name.
            #
            #   @param identifications [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>] A list of identifications for the legal entity.
            #
            #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
            #
            #   @param last_name [String, nil] An individual's last name.
            #
            #   @param legal_entity_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType] The type of legal entity.
            #
            #   @param legal_structure [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure, nil] The business's legal structure.
            #
            #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
            #
            #   @param middle_name [String, nil] An individual's middle name.
            #
            #   @param phone_numbers [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            #
            #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
            #
            #   @param preferred_name [String, nil] An individual's preferred name.
            #
            #   @param prefix [String, nil] An individual's prefix.
            #
            #   @param risk_rating [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
            #
            #   @param suffix [String, nil] An individual's suffix.
            #
            #   @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
            #
            #   @param website [String, nil] The entity's primary website URL.

            class Address < ModernTreasury::Internal::Type::BaseModel
              # @!attribute country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #
              #   @return [String, nil]
              required :country, String, nil?: true

              # @!attribute line1
              #
              #   @return [String, nil]
              required :line1, String, nil?: true

              # @!attribute locality
              #   Locality or City.
              #
              #   @return [String, nil]
              required :locality, String, nil?: true

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

              # @!attribute address_types
              #   The types of this address.
              #
              #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>, nil]
              optional :address_types,
                       -> do
                         ModernTreasury::Internal::Type::ArrayOf[
                           enum: ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                         ]
                       end

              # @!attribute line2
              #
              #   @return [String, nil]
              optional :line2, String, nil?: true

              # @!method initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
              #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
              #
              #   @param line1 [String, nil]
              #
              #   @param locality [String, nil] Locality or City.
              #
              #   @param postal_code [String, nil] The postal code of the address.
              #
              #   @param region [String, nil] Region or State.
              #
              #   @param address_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>] The types of this address.
              #
              #   @param line2 [String, nil]

              module AddressType
                extend ModernTreasury::Internal::Type::Enum

                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Identification < ModernTreasury::Internal::Type::BaseModel
              # @!attribute id_number
              #   The ID number of identification document.
              #
              #   @return [String]
              required :id_number, String

              # @!attribute id_type
              #   The type of ID number.
              #
              #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
              required :id_type,
                       enum: -> {
                         ModernTreasury::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                       }

              # @!attribute expiration_date
              #   The date when the Identification is no longer considered valid by the issuing
              #   authority.
              #
              #   @return [Date, nil]
              optional :expiration_date, Date, nil?: true

              # @!attribute issuing_country
              #   The ISO 3166-1 alpha-2 country code of the country that issued the
              #   identification
              #
              #   @return [String, nil]
              optional :issuing_country, String, nil?: true

              # @!attribute issuing_region
              #   The region in which the identifcation was issued.
              #
              #   @return [String, nil]
              optional :issuing_region, String, nil?: true

              # @!method initialize(id_number:, id_type:, expiration_date: nil, issuing_country: nil, issuing_region: nil)
              #   Some parameter documentations has been truncated, see
              #   {ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification}
              #   for more details.
              #
              #   @param id_number [String] The ID number of identification document.
              #
              #   @param id_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType] The type of ID number.
              #
              #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
              #
              #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
              #
              #   @param issuing_region [String, nil] The region in which the identifcation was issued.

              # The type of ID number.
              #
              # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification#id_type
              module IDType
                extend ModernTreasury::Internal::Type::Enum

                AR_CUIL = :ar_cuil
                AR_CUIT = :ar_cuit
                BR_CNPJ = :br_cnpj
                BR_CPF = :br_cpf
                CL_RUN = :cl_run
                CL_RUT = :cl_rut
                CO_CEDULAS = :co_cedulas
                CO_NIT = :co_nit
                DRIVERS_LICENSE = :drivers_license
                HN_ID = :hn_id
                HN_RTN = :hn_rtn
                IN_LEI = :in_lei
                KR_BRN = :kr_brn
                KR_CRN = :kr_crn
                KR_RRN = :kr_rrn
                PASSPORT = :passport
                SA_TIN = :sa_tin
                SA_VAT = :sa_vat
                US_EIN = :us_ein
                US_ITIN = :us_itin
                US_SSN = :us_ssn
                VN_TIN = :vn_tin

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The type of legal entity.
            #
            # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity#legal_entity_type
            module LegalEntityType
              extend ModernTreasury::Internal::Type::Enum

              BUSINESS = :business
              INDIVIDUAL = :individual

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The business's legal structure.
            #
            # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity#legal_structure
            module LegalStructure
              extend ModernTreasury::Internal::Type::Enum

              CORPORATION = :corporation
              LLC = :llc
              NON_PROFIT = :non_profit
              PARTNERSHIP = :partnership
              SOLE_PROPRIETORSHIP = :sole_proprietorship
              TRUST = :trust

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
              # @!attribute phone_number
              #
              #   @return [String, nil]
              optional :phone_number, String

              # @!method initialize(phone_number: nil)
              #   A list of phone numbers in E.164 format.
              #
              #   @param phone_number [String]
            end

            # The risk rating of the legal entity. One of low, medium, high.
            #
            # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity#risk_rating
            module RiskRating
              extend ModernTreasury::Internal::Type::Enum

              LOW = :low
              MEDIUM = :medium
              HIGH = :high

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The business's legal structure.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity#legal_structure
        module LegalStructure
          extend ModernTreasury::Internal::Type::Enum

          CORPORATION = :corporation
          LLC = :llc
          NON_PROFIT = :non_profit
          PARTNERSHIP = :partnership
          SOLE_PROPRIETORSHIP = :sole_proprietorship
          TRUST = :trust

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          # @!attribute phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(phone_number: nil)
          #   A list of phone numbers in E.164 format.
          #
          #   @param phone_number [String]
        end

        # The risk rating of the legal entity. One of low, medium, high.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::LegalEntity#risk_rating
        module RiskRating
          extend ModernTreasury::Internal::Type::Enum

          LOW = :low
          MEDIUM = :medium
          HIGH = :high

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
