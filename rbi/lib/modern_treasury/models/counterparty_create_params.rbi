# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting)) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::CounterpartyCreateParams::Accounting)
          .returns(ModernTreasury::Models::CounterpartyCreateParams::Accounting)
      end
      def accounting=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])) }
      def accounts
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])
          .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])
      end
      def accounts=(_)
      end

      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ledger_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ledger_type=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)) }
      def legal_entity
      end

      sig do
        params(_: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)
          .returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)
      end
      def legal_entity=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_remittance_advice=(_)
      end

      sig { returns(T.nilable(String)) }
      def taxpayer_identifier
      end

      sig { params(_: String).returns(String) }
      def taxpayer_identifier=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def verification_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def verification_status=(_)
      end

      sig do
        params(
          name: T.nilable(String),
          accounting: ModernTreasury::Models::CounterpartyCreateParams::Accounting,
          accounts: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account],
          email: T.nilable(String),
          ledger_type: Symbol,
          legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          verification_status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        name:,
        accounting: nil,
        accounts: nil,
        email: nil,
        ledger_type: nil,
        legal_entity: nil,
        legal_entity_id: nil,
        metadata: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        verification_status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              name: T.nilable(String),
              accounting: ModernTreasury::Models::CounterpartyCreateParams::Accounting,
              accounts: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account],
              email: T.nilable(String),
              ledger_type: Symbol,
              legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity,
              legal_entity_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              send_remittance_advice: T::Boolean,
              taxpayer_identifier: String,
              verification_status: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Accounting < ModernTreasury::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { params(type: Symbol).void }
        def initialize(type: nil)
        end

        sig { override.returns({type: Symbol}) }
        def to_hash
        end

        class Type < ModernTreasury::Enum
          abstract!

          CUSTOMER = :customer
          VENDOR = :vendor

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Account < ModernTreasury::BaseModel
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])) }
        def account_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])
        end
        def account_details=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def account_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def account_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])) }
        def contact_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])
        end
        def contact_details=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)) }
        def ledger_account
        end

        sig do
          params(_: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)
            .returns(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)
        end
        def ledger_account=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)) }
        def party_address
        end

        sig do
          params(_: ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)
            .returns(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)
        end
        def party_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_identifier
        end

        sig { params(_: String).returns(String) }
        def party_identifier=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def party_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def party_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def plaid_processor_token
        end

        sig { params(_: String).returns(String) }
        def plaid_processor_token=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])) }
        def routing_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])
        end
        def routing_details=(_)
        end

        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail],
            ledger_account: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(Symbol),
            plaid_processor_token: String,
            routing_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]
          )
            .void
        end
        def initialize(
          account_details: nil,
          account_type: nil,
          contact_details: nil,
          ledger_account: nil,
          metadata: nil,
          name: nil,
          party_address: nil,
          party_identifier: nil,
          party_name: nil,
          party_type: nil,
          plaid_processor_token: nil,
          routing_details: nil
        )
        end

        sig do
          override
            .returns(
              {
                account_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail],
                account_type: Symbol,
                contact_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail],
                ledger_account: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]
              }
            )
        end
        def to_hash
        end

        class AccountDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def account_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def account_number_type=(_)
          end

          sig { params(account_number: String, account_number_type: Symbol).void }
          def initialize(account_number:, account_number_type: nil)
          end

          sig { override.returns({account_number: String, account_number_type: Symbol}) }
          def to_hash
          end

          class AccountNumberType < ModernTreasury::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def contact_identifier
          end

          sig { params(_: String).returns(String) }
          def contact_identifier=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def contact_identifier_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def contact_identifier_type=(_)
          end

          sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
          def initialize(contact_identifier: nil, contact_identifier_type: nil)
          end

          sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
          def to_hash
          end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { returns(String) }
          def ledger_id
          end

          sig { params(_: String).returns(String) }
          def ledger_id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Symbol) }
          def normal_balance
          end

          sig { params(_: Symbol).returns(Symbol) }
          def normal_balance=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def currency_exponent
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def currency_exponent=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def ledger_account_category_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def ledger_account_category_ids=(_)
          end

          sig { returns(T.nilable(String)) }
          def ledgerable_id
          end

          sig { params(_: String).returns(String) }
          def ledgerable_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def ledgerable_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def ledgerable_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig do
            params(
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: Symbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String]
            )
              .void
          end
          def initialize(
            currency:,
            ledger_id:,
            name:,
            normal_balance:,
            currency_exponent: nil,
            description: nil,
            ledger_account_category_ids: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil
          )
          end

          sig do
            override
              .returns(
                {
                  currency: String,
                  ledger_id: String,
                  name: String,
                  normal_balance: Symbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: Symbol,
                  metadata: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash
          end

          class LedgerableType < ModernTreasury::Enum
            abstract!

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            )
              .void
          end
          def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(Symbol) }
          def routing_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def routing_number_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def payment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_type=(_)
          end

          sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
          def initialize(routing_number:, routing_number_type:, payment_type: nil)
          end

          sig do
            override.returns({routing_number: String, routing_number_type: Symbol, payment_type: Symbol})
          end
          def to_hash
          end

          class RoutingNumberType < ModernTreasury::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class PaymentType < ModernTreasury::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class LedgerType < ModernTreasury::Enum
        abstract!

        CUSTOMER = :customer
        VENDOR = :vendor

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class LegalEntity < ModernTreasury::BaseModel
        sig { returns(Symbol) }
        def legal_entity_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def legal_entity_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])) }
        def addresses
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])
        end
        def addresses=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        def bank_settings
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::BankSettings))
            .returns(T.nilable(ModernTreasury::Models::BankSettings))
        end
        def bank_settings=(_)
        end

        sig { returns(T.nilable(String)) }
        def business_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def business_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def citizenship_country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def citizenship_country=(_)
        end

        sig { returns(T.nilable(Date)) }
        def date_formed
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_formed=(_)
        end

        sig { returns(T.nilable(Date)) }
        def date_of_birth
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_of_birth=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def doing_business_as_names
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def doing_business_as_names=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
          )
        end
        def identifications
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
        end
        def identifications=(_)
        end

        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
          )
        end
        def legal_entity_associations
        end

        sig do
          params(
            _: T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
          )
            .returns(
              T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
            )
        end
        def legal_entity_associations=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def legal_structure
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def legal_structure=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def middle_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def middle_name=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])) }
        def phone_numbers
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])
        end
        def phone_numbers=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def politically_exposed_person
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def politically_exposed_person=(_)
        end

        sig { returns(T.nilable(String)) }
        def preferred_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def preferred_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def prefix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def prefix=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def risk_rating
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def risk_rating=(_)
        end

        sig { returns(T.nilable(String)) }
        def suffix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def suffix=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        def wealth_and_employment_details
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
            .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
        end
        def wealth_and_employment_details=(_)
        end

        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        sig do
          params(
            legal_entity_type: Symbol,
            addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation]),
            legal_structure: T.nilable(Symbol),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(Symbol),
            suffix: T.nilable(String),
            wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
            website: T.nilable(String)
          )
            .void
        end
        def initialize(
          legal_entity_type:,
          addresses: nil,
          bank_settings: nil,
          business_name: nil,
          citizenship_country: nil,
          date_formed: nil,
          date_of_birth: nil,
          doing_business_as_names: nil,
          email: nil,
          first_name: nil,
          identifications: nil,
          last_name: nil,
          legal_entity_associations: nil,
          legal_structure: nil,
          metadata: nil,
          middle_name: nil,
          phone_numbers: nil,
          politically_exposed_person: nil,
          preferred_name: nil,
          prefix: nil,
          risk_rating: nil,
          suffix: nil,
          wealth_and_employment_details: nil,
          website: nil
        )
        end

        sig do
          override
            .returns(
              {
                legal_entity_type: Symbol,
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification],
                last_name: T.nilable(String),
                legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation]),
                legal_structure: T.nilable(Symbol),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(Symbol),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class LegalEntityType < ModernTreasury::Enum
          abstract!

          BUSINESS = :business
          INDIVIDUAL = :individual

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Address < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          sig { returns(T.nilable(T::Array[Symbol])) }
          def address_types
          end

          sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
          def address_types=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String),
              address_types: T::Array[Symbol],
              line2: T.nilable(String)
            )
              .void
          end
          def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[Symbol],
                  line2: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class AddressType < ModernTreasury::Enum
            abstract!

            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Identification < ModernTreasury::BaseModel
          sig { returns(String) }
          def id_number
          end

          sig { params(_: String).returns(String) }
          def id_number=(_)
          end

          sig { returns(Symbol) }
          def id_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def id_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def issuing_country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def issuing_country=(_)
          end

          sig { params(id_number: String, id_type: Symbol, issuing_country: T.nilable(String)).void }
          def initialize(id_number:, id_type:, issuing_country: nil)
          end

          sig { override.returns({id_number: String, id_type: Symbol, issuing_country: T.nilable(String)}) }
          def to_hash
          end

          class IDType < ModernTreasury::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class LegalEntityAssociation < ModernTreasury::BaseModel
          sig { returns(T::Array[Symbol]) }
          def relationship_types
          end

          sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
          def relationship_types=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
              )
            )
          end
          def child_legal_entity
          end

          sig do
            params(
              _: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
            )
              .returns(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
              )
          end
          def child_legal_entity=(_)
          end

          sig { returns(T.nilable(String)) }
          def child_legal_entity_id
          end

          sig { params(_: String).returns(String) }
          def child_legal_entity_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def ownership_percentage
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ownership_percentage=(_)
          end

          sig { returns(T.nilable(String)) }
          def title
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def title=(_)
          end

          sig do
            params(
              relationship_types: T::Array[Symbol],
              child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            )
              .void
          end
          def initialize(
            relationship_types:,
            child_legal_entity: nil,
            child_legal_entity_id: nil,
            ownership_percentage: nil,
            title: nil
          )
          end

          sig do
            override
              .returns(
                {
                  relationship_types: T::Array[Symbol],
                  child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                  child_legal_entity_id: String,
                  ownership_percentage: T.nilable(Integer),
                  title: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class RelationshipType < ModernTreasury::Enum
            abstract!

            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class ChildLegalEntity < ModernTreasury::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                  ]
                )
              )
            end
            def addresses
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                  ]
                )
            end
            def addresses=(_)
            end

            sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
            def bank_settings
            end

            sig do
              params(_: T.nilable(ModernTreasury::Models::BankSettings))
                .returns(T.nilable(ModernTreasury::Models::BankSettings))
            end
            def bank_settings=(_)
            end

            sig { returns(T.nilable(String)) }
            def business_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def business_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def citizenship_country
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def citizenship_country=(_)
            end

            sig { returns(T.nilable(Date)) }
            def date_formed
            end

            sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
            def date_formed=(_)
            end

            sig { returns(T.nilable(Date)) }
            def date_of_birth
            end

            sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
            def date_of_birth=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def doing_business_as_names
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def doing_business_as_names=(_)
            end

            sig { returns(T.nilable(String)) }
            def email
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_)
            end

            sig { returns(T.nilable(String)) }
            def first_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def first_name=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                  ]
                )
              )
            end
            def identifications
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                  ]
                )
            end
            def identifications=(_)
            end

            sig { returns(T.nilable(String)) }
            def last_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def last_name=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def legal_entity_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def legal_entity_type=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def legal_structure
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def legal_structure=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def middle_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def middle_name=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
              )
            end
            def phone_numbers
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
            end
            def phone_numbers=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def politically_exposed_person
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def politically_exposed_person=(_)
            end

            sig { returns(T.nilable(String)) }
            def preferred_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def prefix
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def prefix=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def risk_rating
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def risk_rating=(_)
            end

            sig { returns(T.nilable(String)) }
            def suffix
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def suffix=(_)
            end

            sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
            def wealth_and_employment_details
            end

            sig do
              params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
                .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
            end
            def wealth_and_employment_details=(_)
            end

            sig { returns(T.nilable(String)) }
            def website
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def website=(_)
            end

            sig do
              params(
                addresses: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                ],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                ],
                last_name: T.nilable(String),
                legal_entity_type: Symbol,
                legal_structure: T.nilable(Symbol),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                ],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(Symbol),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              )
                .void
            end
            def initialize(
              addresses: nil,
              bank_settings: nil,
              business_name: nil,
              citizenship_country: nil,
              date_formed: nil,
              date_of_birth: nil,
              doing_business_as_names: nil,
              email: nil,
              first_name: nil,
              identifications: nil,
              last_name: nil,
              legal_entity_type: nil,
              legal_structure: nil,
              metadata: nil,
              middle_name: nil,
              phone_numbers: nil,
              politically_exposed_person: nil,
              preferred_name: nil,
              prefix: nil,
              risk_rating: nil,
              suffix: nil,
              wealth_and_employment_details: nil,
              website: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    addresses: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                    ],
                    bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                    business_name: T.nilable(String),
                    citizenship_country: T.nilable(String),
                    date_formed: T.nilable(Date),
                    date_of_birth: T.nilable(Date),
                    doing_business_as_names: T::Array[String],
                    email: T.nilable(String),
                    first_name: T.nilable(String),
                    identifications: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                    ],
                    last_name: T.nilable(String),
                    legal_entity_type: Symbol,
                    legal_structure: T.nilable(Symbol),
                    metadata: T::Hash[Symbol, String],
                    middle_name: T.nilable(String),
                    phone_numbers: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                    ],
                    politically_exposed_person: T.nilable(T::Boolean),
                    preferred_name: T.nilable(String),
                    prefix: T.nilable(String),
                    risk_rating: T.nilable(Symbol),
                    suffix: T.nilable(String),
                    wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                    website: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Address < ModernTreasury::BaseModel
              sig { returns(T.nilable(String)) }
              def country
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def country=(_)
              end

              sig { returns(T.nilable(String)) }
              def line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def locality
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def locality=(_)
              end

              sig { returns(T.nilable(String)) }
              def postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def postal_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def region
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def region=(_)
              end

              sig { returns(T.nilable(T::Array[Symbol])) }
              def address_types
              end

              sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
              def address_types=(_)
              end

              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

              sig do
                params(
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[Symbol],
                  line2: T.nilable(String)
                )
                  .void
              end
              def initialize(
                country:,
                line1:,
                locality:,
                postal_code:,
                region:,
                address_types: nil,
                line2: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      country: T.nilable(String),
                      line1: T.nilable(String),
                      locality: T.nilable(String),
                      postal_code: T.nilable(String),
                      region: T.nilable(String),
                      address_types: T::Array[Symbol],
                      line2: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              class AddressType < ModernTreasury::Enum
                abstract!

                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Identification < ModernTreasury::BaseModel
              sig { returns(String) }
              def id_number
              end

              sig { params(_: String).returns(String) }
              def id_number=(_)
              end

              sig { returns(Symbol) }
              def id_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def id_type=(_)
              end

              sig { returns(T.nilable(String)) }
              def issuing_country
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def issuing_country=(_)
              end

              sig { params(id_number: String, id_type: Symbol, issuing_country: T.nilable(String)).void }
              def initialize(id_number:, id_type:, issuing_country: nil)
              end

              sig do
                override.returns({id_number: String, id_type: Symbol, issuing_country: T.nilable(String)})
              end
              def to_hash
              end

              class IDType < ModernTreasury::Enum
                abstract!

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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class LegalEntityType < ModernTreasury::Enum
              abstract!

              BUSINESS = :business
              INDIVIDUAL = :individual

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class LegalStructure < ModernTreasury::Enum
              abstract!

              CORPORATION = T.let(:corporation, T.nilable(Symbol))
              LLC = T.let(:llc, T.nilable(Symbol))
              NON_PROFIT = T.let(:non_profit, T.nilable(Symbol))
              PARTNERSHIP = T.let(:partnership, T.nilable(Symbol))
              SOLE_PROPRIETORSHIP = T.let(:sole_proprietorship, T.nilable(Symbol))
              TRUST = T.let(:trust, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class PhoneNumber < ModernTreasury::BaseModel
              sig { returns(T.nilable(String)) }
              def phone_number
              end

              sig { params(_: String).returns(String) }
              def phone_number=(_)
              end

              sig { params(phone_number: String).void }
              def initialize(phone_number: nil)
              end

              sig { override.returns({phone_number: String}) }
              def to_hash
              end
            end

            class RiskRating < ModernTreasury::Enum
              abstract!

              LOW = T.let(:low, T.nilable(Symbol))
              MEDIUM = T.let(:medium, T.nilable(Symbol))
              HIGH = T.let(:high, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end

        class LegalStructure < ModernTreasury::Enum
          abstract!

          CORPORATION = T.let(:corporation, T.nilable(Symbol))
          LLC = T.let(:llc, T.nilable(Symbol))
          NON_PROFIT = T.let(:non_profit, T.nilable(Symbol))
          PARTNERSHIP = T.let(:partnership, T.nilable(Symbol))
          SOLE_PROPRIETORSHIP = T.let(:sole_proprietorship, T.nilable(Symbol))
          TRUST = T.let(:trust, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: String).returns(String) }
          def phone_number=(_)
          end

          sig { params(phone_number: String).void }
          def initialize(phone_number: nil)
          end

          sig { override.returns({phone_number: String}) }
          def to_hash
          end
        end

        class RiskRating < ModernTreasury::Enum
          abstract!

          LOW = T.let(:low, T.nilable(Symbol))
          MEDIUM = T.let(:medium, T.nilable(Symbol))
          HIGH = T.let(:high, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class VerificationStatus < ModernTreasury::Enum
        abstract!

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
