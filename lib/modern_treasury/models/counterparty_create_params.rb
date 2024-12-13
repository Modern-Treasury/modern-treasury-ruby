# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::BaseModel
      # @!attribute name
      #   A human friendly name for this counterparty.
      #   @return [String]
      required :name, String

      # @!attribute accounting
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      optional :accounting, -> { ModernTreasury::Models::CounterpartyCreateParams::Accounting }

      # @!attribute accounts
      #   The accounts for this counterparty.
      #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>]
      optional :accounts,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::CounterpartyCreateParams::Account })

      # @!attribute email
      #   The counterparty's email.
      #   @return [String]
      optional :email, String

      # @!attribute ledger_type
      #   An optional type to auto-sync the counterparty to your ledger. Either `customer` or `vendor`.
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType]
      optional :ledger_type, enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LedgerType }

      # @!attribute legal_entity
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      optional :legal_entity, -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity }

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent to the bank.
      #   @return [Boolean]
      optional :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute taxpayer_identifier
      #   Either a valid SSN or EIN.
      #   @return [String]
      optional :taxpayer_identifier, String

      # @!attribute verification_status
      #   The verification status of the counterparty.
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus]
      optional :verification_status,
               enum: -> { ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus }

      class Accounting < ModernTreasury::BaseModel
        # @!attribute type
        #   An optional type to auto-sync the counterparty to your ledger. Either `customer` or `vendor`.
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type]
        optional :type, enum: -> { ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type }

        # An optional type to auto-sync the counterparty to your ledger. Either `customer` or `vendor`.
        class Type < ModernTreasury::Enum
          CUSTOMER = :customer
          VENDOR = :vendor
        end

        # @!parse
        #   # Create a new instance of Accounting from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :type An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   #     or `vendor`.
        #   def initialize(data = {}) = super
      end

      class Account < ModernTreasury::BaseModel
        # @!attribute account_details
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        optional :account_details,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail
                   }
                 )

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!attribute contact_details
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>]
        optional :contact_details,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail
                   }
                 )

        # @!attribute ledger_account
        #   Specifies a ledger account object that will be created with the external account. The resulting ledger account is linked to the external account for auto-ledgering Payment objects. See https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects for more details.
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount]
        optional :ledger_account,
                 -> {
                   ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount
                 }

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
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress]
        optional :party_address,
                 -> {
                   ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress
                 }

        # @!attribute party_identifier
        #   @return [String]
        optional :party_identifier, String

        # @!attribute party_name
        #   If this value isn't provided, it will be inherited from the counterparty's name.
        #   @return [String]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType]
        optional :party_type,
                 enum: -> {
                   ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType
                 }

        # @!attribute plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account, you can pass the processor token in this field.
        #   @return [String]
        optional :plaid_processor_token, String

        # @!attribute routing_details
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]
        optional :routing_details,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail
                   }
                 )

        class AccountDetail < ModernTreasury::BaseModel
          # @!attribute account_number
          #   @return [String]
          required :account_number, String

          # @!attribute account_number_type
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType]
          optional :account_number_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType
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
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType]
          optional :contact_identifier_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType
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
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType
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
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType
                   }

          # @!attribute payment_type
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType]
          optional :payment_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType
                   }

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

        # @!parse
        #   # Create a new instance of Account from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>, nil] :account_details
        #   #   @option data [String, nil] :account_type Can be `checking`, `savings` or `other`.
        #   #   @option data [Array<Object>, nil] :contact_details
        #   #   @option data [Object, nil] :ledger_account Specifies a ledger account object that will be created with the external
        #   #     account. The resulting ledger account is linked to the external account for
        #   #     auto-ledgering Payment objects. See
        #   #     https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   #     for more details.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String, nil] :name A nickname for the external account. This is only for internal usage and won't
        #   #     affect any payments
        #   #   @option data [Object, nil] :party_address Required if receiving wire payments.
        #   #   @option data [String, nil] :party_identifier
        #   #   @option data [String, nil] :party_name If this value isn't provided, it will be inherited from the counterparty's name.
        #   #   @option data [String, nil] :party_type Either `individual` or `business`.
        #   #   @option data [String, nil] :plaid_processor_token If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   #     you can pass the processor token in this field.
        #   #   @option data [Array<Object>, nil] :routing_details
        #   def initialize(data = {}) = super
      end

      # An optional type to auto-sync the counterparty to your ledger. Either `customer` or `vendor`.
      class LedgerType < ModernTreasury::Enum
        CUSTOMER = :customer
        VENDOR = :vendor
      end

      class LegalEntity < ModernTreasury::BaseModel
        # @!attribute legal_entity_type
        #   The type of legal entity.
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType]
        required :legal_entity_type,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType }

        # @!attribute addresses
        #   A list of addresses for the entity.
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>]
        optional :addresses,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address
                   }
                 )

        # @!attribute bank_settings
        #   @return [ModernTreasury::Models::BankSettings]
        optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

        # @!attribute business_name
        #   The business's legal business name.
        #   @return [String]
        optional :business_name, String

        # @!attribute citizenship_country
        #   The country of citizenship for an individual.
        #   @return [String]
        optional :citizenship_country, String

        # @!attribute date_formed
        #   A business's formation date (YYYY-MM-DD).
        #   @return [Date]
        optional :date_formed, Date

        # @!attribute date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #   @return [Date]
        optional :date_of_birth, Date

        # @!attribute doing_business_as_names
        #   @return [Array<String>]
        optional :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

        # @!attribute email
        #   The entity's primary email.
        #   @return [String]
        optional :email, String

        # @!attribute first_name
        #   An individual's first name.
        #   @return [String]
        optional :first_name, String

        # @!attribute identifications
        #   A list of identifications for the legal entity.
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>]
        optional :identifications,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification
                   }
                 )

        # @!attribute last_name
        #   An individual's last name.
        #   @return [String]
        optional :last_name, String

        # @!attribute legal_entity_associations
        #   The legal entity associations and its child legal entities.
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation>]
        optional :legal_entity_associations,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation
                   }
                 )

        # @!attribute legal_structure
        #   The business's legal structure.
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure]
        optional :legal_structure,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute middle_name
        #   An individual's middle name.
        #   @return [String]
        optional :middle_name, String

        # @!attribute phone_numbers
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>]
        optional :phone_numbers,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber
                   }
                 )

        # @!attribute politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #   @return [Boolean]
        optional :politically_exposed_person, ModernTreasury::BooleanModel

        # @!attribute preferred_name
        #   An individual's preferred name.
        #   @return [String]
        optional :preferred_name, String

        # @!attribute prefix
        #   An individual's prefix.
        #   @return [String]
        optional :prefix, String

        # @!attribute risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating]
        optional :risk_rating,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating }

        # @!attribute suffix
        #   An individual's suffix.
        #   @return [String]
        optional :suffix, String

        # @!attribute wealth_and_employment_details
        #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
        optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

        # @!attribute website
        #   The entity's primary website URL.
        #   @return [String]
        optional :website, String

        # The type of legal entity.
        class LegalEntityType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual
        end

        class Address < ModernTreasury::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #   @return [String]
          required :country, String

          # @!attribute line1
          #   @return [String]
          required :line1, String

          # @!attribute locality
          #   Locality or City.
          #   @return [String]
          required :locality, String

          # @!attribute postal_code
          #   The postal code of the address.
          #   @return [String]
          required :postal_code, String

          # @!attribute region
          #   Region or State.
          #   @return [String]
          required :region, String

          # @!attribute address_types
          #   The types of this address.
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>]
          optional :address_types,
                   ModernTreasury::ArrayOf.new(
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType
                     }
                   )

          # @!attribute line2
          #   @return [String]
          optional :line2, String

          class AddressType < ModernTreasury::Enum
            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential
          end

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
          #   #   @option data [String] :line1
          #   #   @option data [String] :locality Locality or City.
          #   #   @option data [String] :postal_code The postal code of the address.
          #   #   @option data [String] :region Region or State.
          #   #   @option data [Array<String>, nil] :address_types The types of this address.
          #   #   @option data [String, nil] :line2
          #   def initialize(data = {}) = super
        end

        class Identification < ModernTreasury::BaseModel
          # @!attribute id_number
          #   The ID number of identification document.
          #   @return [String]
          required :id_number, String

          # @!attribute id_type
          #   The type of ID number.
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType
                   }

          # @!attribute issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
          #   @return [String]
          optional :issuing_country, String

          # The type of ID number.
          class IDType < ModernTreasury::Enum
            AR_CUIL = :ar_cuil
            AR_CUIT = :ar_cuit
            BR_CNPJ = :br_cnpj
            BR_CPF = :br_cpf
            CL_RUN = :cl_run
            CL_RUT = :cl_rut
            CO_CEDULAS = :co_cedulas
            CO_NIT = :co_nit
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
          end

          # @!parse
          #   # Create a new instance of Identification from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id_number The ID number of identification document.
          #   #   @option data [String] :id_type The type of ID number.
          #   #   @option data [String, nil] :issuing_country The ISO 3166-1 alpha-2 country code of the country that issued the
          #   #     identification
          #   def initialize(data = {}) = super
        end

        class LegalEntityAssociation < ModernTreasury::BaseModel
          # @!attribute relationship_types
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          required :relationship_types,
                   ModernTreasury::ArrayOf.new(
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType
                     }
                   )

          # @!attribute child_legal_entity
          #   The child legal entity.
          #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity]
          optional :child_legal_entity,
                   -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity }

          # @!attribute child_legal_entity_id
          #   The ID of the child legal entity.
          #   @return [String]
          optional :child_legal_entity_id, String

          # @!attribute ownership_percentage
          #   The child entity's ownership percentage iff they are a beneficial owner.
          #   @return [Integer]
          optional :ownership_percentage, Integer

          # @!attribute title
          #   The job title of the child entity at the parent entity.
          #   @return [String]
          optional :title, String

          # A list of relationship types for how the child entity relates to parent entity.
          class RelationshipType < ModernTreasury::Enum
            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person
          end

          class ChildLegalEntity < ModernTreasury::BaseModel
            # @!attribute addresses
            #   A list of addresses for the entity.
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>]
            optional :addresses,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                       }
                     )

            # @!attribute bank_settings
            #   @return [ModernTreasury::Models::BankSettings]
            optional :bank_settings, -> { ModernTreasury::Models::BankSettings }

            # @!attribute business_name
            #   The business's legal business name.
            #   @return [String]
            optional :business_name, String

            # @!attribute citizenship_country
            #   The country of citizenship for an individual.
            #   @return [String]
            optional :citizenship_country, String

            # @!attribute date_formed
            #   A business's formation date (YYYY-MM-DD).
            #   @return [Date]
            optional :date_formed, Date

            # @!attribute date_of_birth
            #   An individual's date of birth (YYYY-MM-DD).
            #   @return [Date]
            optional :date_of_birth, Date

            # @!attribute doing_business_as_names
            #   @return [Array<String>]
            optional :doing_business_as_names, ModernTreasury::ArrayOf.new(String)

            # @!attribute email
            #   The entity's primary email.
            #   @return [String]
            optional :email, String

            # @!attribute first_name
            #   An individual's first name.
            #   @return [String]
            optional :first_name, String

            # @!attribute identifications
            #   A list of identifications for the legal entity.
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>]
            optional :identifications,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                       }
                     )

            # @!attribute last_name
            #   An individual's last name.
            #   @return [String]
            optional :last_name, String

            # @!attribute legal_entity_type
            #   The type of legal entity.
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
            optional :legal_entity_type,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                     }

            # @!attribute legal_structure
            #   The business's legal structure.
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure]
            optional :legal_structure,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                     }

            # @!attribute metadata
            #   Additional data represented as key-value pairs. Both the key and value must be strings.
            #   @return [Hash]
            optional :metadata, Hash

            # @!attribute middle_name
            #   An individual's middle name.
            #   @return [String]
            optional :middle_name, String

            # @!attribute phone_numbers
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            optional :phone_numbers,
                     ModernTreasury::ArrayOf.new(
                       -> {
                         ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                       }
                     )

            # @!attribute politically_exposed_person
            #   Whether the individual is a politically exposed person.
            #   @return [Boolean]
            optional :politically_exposed_person, ModernTreasury::BooleanModel

            # @!attribute preferred_name
            #   An individual's preferred name.
            #   @return [String]
            optional :preferred_name, String

            # @!attribute prefix
            #   An individual's prefix.
            #   @return [String]
            optional :prefix, String

            # @!attribute risk_rating
            #   The risk rating of the legal entity. One of low, medium, high.
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating]
            optional :risk_rating,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating
                     }

            # @!attribute suffix
            #   An individual's suffix.
            #   @return [String]
            optional :suffix, String

            # @!attribute wealth_and_employment_details
            #   @return [ModernTreasury::Models::WealthAndEmploymentDetails]
            optional :wealth_and_employment_details, -> { ModernTreasury::Models::WealthAndEmploymentDetails }

            # @!attribute website
            #   The entity's primary website URL.
            #   @return [String]
            optional :website, String

            class Address < ModernTreasury::BaseModel
              # @!attribute country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #   @return [String]
              required :country, String

              # @!attribute line1
              #   @return [String]
              required :line1, String

              # @!attribute locality
              #   Locality or City.
              #   @return [String]
              required :locality, String

              # @!attribute postal_code
              #   The postal code of the address.
              #   @return [String]
              required :postal_code, String

              # @!attribute region
              #   Region or State.
              #   @return [String]
              required :region, String

              # @!attribute address_types
              #   The types of this address.
              #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
              optional :address_types,
                       ModernTreasury::ArrayOf.new(
                         enum: -> {
                           ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                         }
                       )

              # @!attribute line2
              #   @return [String]
              optional :line2, String

              class AddressType < ModernTreasury::Enum
                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential
              end

              # @!parse
              #   # Create a new instance of Address from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
              #   #   @option data [String] :line1
              #   #   @option data [String] :locality Locality or City.
              #   #   @option data [String] :postal_code The postal code of the address.
              #   #   @option data [String] :region Region or State.
              #   #   @option data [Array<String>, nil] :address_types The types of this address.
              #   #   @option data [String, nil] :line2
              #   def initialize(data = {}) = super
            end

            class Identification < ModernTreasury::BaseModel
              # @!attribute id_number
              #   The ID number of identification document.
              #   @return [String]
              required :id_number, String

              # @!attribute id_type
              #   The type of ID number.
              #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
              required :id_type,
                       enum: -> {
                         ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                       }

              # @!attribute issuing_country
              #   The ISO 3166-1 alpha-2 country code of the country that issued the identification
              #   @return [String]
              optional :issuing_country, String

              # The type of ID number.
              class IDType < ModernTreasury::Enum
                AR_CUIL = :ar_cuil
                AR_CUIT = :ar_cuit
                BR_CNPJ = :br_cnpj
                BR_CPF = :br_cpf
                CL_RUN = :cl_run
                CL_RUT = :cl_rut
                CO_CEDULAS = :co_cedulas
                CO_NIT = :co_nit
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
              end

              # @!parse
              #   # Create a new instance of Identification from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :id_number The ID number of identification document.
              #   #   @option data [String] :id_type The type of ID number.
              #   #   @option data [String, nil] :issuing_country The ISO 3166-1 alpha-2 country code of the country that issued the
              #   #     identification
              #   def initialize(data = {}) = super
            end

            # The type of legal entity.
            class LegalEntityType < ModernTreasury::Enum
              BUSINESS = :business
              INDIVIDUAL = :individual
            end

            # The business's legal structure.
            class LegalStructure < ModernTreasury::Enum
              CORPORATION = :corporation
              LLC = :llc
              NON_PROFIT = :non_profit
              PARTNERSHIP = :partnership
              SOLE_PROPRIETORSHIP = :sole_proprietorship
              TRUST = :trust
            end

            class PhoneNumber < ModernTreasury::BaseModel
              # @!attribute phone_number
              #   @return [String]
              optional :phone_number, String

              # @!parse
              #   # Create a new instance of PhoneNumber from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String, nil] :phone_number
              #   def initialize(data = {}) = super
            end

            # The risk rating of the legal entity. One of low, medium, high.
            class RiskRating < ModernTreasury::Enum
              LOW = :low
              MEDIUM = :medium
              HIGH = :high
            end

            # @!parse
            #   # Create a new instance of ChildLegalEntity from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Array<Object>, nil] :addresses A list of addresses for the entity.
            #   #   @option data [Object, nil] :bank_settings
            #   #   @option data [String, nil] :business_name The business's legal business name.
            #   #   @option data [String, nil] :citizenship_country The country of citizenship for an individual.
            #   #   @option data [String, nil] :date_formed A business's formation date (YYYY-MM-DD).
            #   #   @option data [String, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
            #   #   @option data [Array<String>, nil] :doing_business_as_names
            #   #   @option data [String, nil] :email The entity's primary email.
            #   #   @option data [String, nil] :first_name An individual's first name.
            #   #   @option data [Array<Object>, nil] :identifications A list of identifications for the legal entity.
            #   #   @option data [String, nil] :last_name An individual's last name.
            #   #   @option data [String, nil] :legal_entity_type The type of legal entity.
            #   #   @option data [String, nil] :legal_structure The business's legal structure.
            #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
            #   #     strings.
            #   #   @option data [String, nil] :middle_name An individual's middle name.
            #   #   @option data [Array<Object>, nil] :phone_numbers
            #   #   @option data [Hash, nil] :politically_exposed_person Whether the individual is a politically exposed person.
            #   #   @option data [String, nil] :preferred_name An individual's preferred name.
            #   #   @option data [String, nil] :prefix An individual's prefix.
            #   #   @option data [String, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
            #   #   @option data [String, nil] :suffix An individual's suffix.
            #   #   @option data [Object, nil] :wealth_and_employment_details
            #   #   @option data [String, nil] :website The entity's primary website URL.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of LegalEntityAssociation from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<String>] :relationship_types
          #   #   @option data [Object, nil] :child_legal_entity The child legal entity.
          #   #   @option data [String, nil] :child_legal_entity_id The ID of the child legal entity.
          #   #   @option data [Integer, nil] :ownership_percentage The child entity's ownership percentage iff they are a beneficial owner.
          #   #   @option data [String, nil] :title The job title of the child entity at the parent entity.
          #   def initialize(data = {}) = super
        end

        # The business's legal structure.
        class LegalStructure < ModernTreasury::Enum
          CORPORATION = :corporation
          LLC = :llc
          NON_PROFIT = :non_profit
          PARTNERSHIP = :partnership
          SOLE_PROPRIETORSHIP = :sole_proprietorship
          TRUST = :trust
        end

        class PhoneNumber < ModernTreasury::BaseModel
          # @!attribute phone_number
          #   @return [String]
          optional :phone_number, String

          # @!parse
          #   # Create a new instance of PhoneNumber from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :phone_number
          #   def initialize(data = {}) = super
        end

        # The risk rating of the legal entity. One of low, medium, high.
        class RiskRating < ModernTreasury::Enum
          LOW = :low
          MEDIUM = :medium
          HIGH = :high
        end

        # @!parse
        #   # Create a new instance of LegalEntity from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :legal_entity_type The type of legal entity.
        #   #   @option data [Array<Object>, nil] :addresses A list of addresses for the entity.
        #   #   @option data [Object, nil] :bank_settings
        #   #   @option data [String, nil] :business_name The business's legal business name.
        #   #   @option data [String, nil] :citizenship_country The country of citizenship for an individual.
        #   #   @option data [String, nil] :date_formed A business's formation date (YYYY-MM-DD).
        #   #   @option data [String, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
        #   #   @option data [Array<String>, nil] :doing_business_as_names
        #   #   @option data [String, nil] :email The entity's primary email.
        #   #   @option data [String, nil] :first_name An individual's first name.
        #   #   @option data [Array<Object>, nil] :identifications A list of identifications for the legal entity.
        #   #   @option data [String, nil] :last_name An individual's last name.
        #   #   @option data [Array<Object>, nil] :legal_entity_associations The legal entity associations and its child legal entities.
        #   #   @option data [String, nil] :legal_structure The business's legal structure.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String, nil] :middle_name An individual's middle name.
        #   #   @option data [Array<Object>, nil] :phone_numbers
        #   #   @option data [Hash, nil] :politically_exposed_person Whether the individual is a politically exposed person.
        #   #   @option data [String, nil] :preferred_name An individual's preferred name.
        #   #   @option data [String, nil] :prefix An individual's prefix.
        #   #   @option data [String, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
        #   #   @option data [String, nil] :suffix An individual's suffix.
        #   #   @option data [Object, nil] :wealth_and_employment_details
        #   #   @option data [String, nil] :website The entity's primary website URL.
        #   def initialize(data = {}) = super
      end

      # The verification status of the counterparty.
      class VerificationStatus < ModernTreasury::Enum
        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified
      end
    end
  end
end
