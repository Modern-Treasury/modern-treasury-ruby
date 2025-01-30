# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            verification_status: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting)) }
      attr_reader :accounting

      sig { params(accounting: ModernTreasury::Models::CounterpartyCreateParams::Accounting).void }
      attr_writer :accounting

      sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account]) }
      attr_reader :accounts

      sig { params(accounts: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account]).void }
      attr_writer :accounts

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(Symbol)) }
      attr_reader :ledger_type

      sig { params(ledger_type: Symbol).void }
      attr_writer :ledger_type

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)) }
      attr_reader :legal_entity

      sig { params(legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity).void }
      attr_writer :legal_entity

      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_remittance_advice

      sig { params(send_remittance_advice: T::Boolean).void }
      attr_writer :send_remittance_advice

      sig { returns(T.nilable(String)) }
      attr_reader :taxpayer_identifier

      sig { params(taxpayer_identifier: String).void }
      attr_writer :taxpayer_identifier

      sig { returns(T.nilable(Symbol)) }
      attr_reader :verification_status

      sig { params(verification_status: Symbol).void }
      attr_writer :verification_status

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
          request_options: ModernTreasury::RequestOpts
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Shape) }
      def to_h; end

      class Accounting < ModernTreasury::BaseModel
        Shape = T.type_alias { {type: Symbol} }

        sig { returns(T.nilable(Symbol)) }
        attr_reader :type

        sig { params(type: Symbol).void }
        attr_writer :type

        sig { params(type: Symbol).void }
        def initialize(type: nil); end

        sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Accounting::Shape) }
        def to_h; end

        class Type < ModernTreasury::Enum
          abstract!

          CUSTOMER = :customer
          VENDOR = :vendor

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Account < ModernTreasury::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail]) }
        attr_reader :account_details

        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail]
          ).void
        end
        attr_writer :account_details

        sig { returns(T.nilable(Symbol)) }
        attr_reader :account_type

        sig { params(account_type: Symbol).void }
        attr_writer :account_type

        sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail]) }
        attr_reader :contact_details

        sig do
          params(
            contact_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail]
          ).void
        end
        attr_writer :contact_details

        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)) }
        attr_reader :ledger_account

        sig do
          params(ledger_account: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount).void
        end
        attr_writer :ledger_account

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)) }
        attr_reader :party_address

        sig do
          params(party_address: ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress).void
        end
        attr_writer :party_address

        sig { returns(T.nilable(String)) }
        attr_reader :party_identifier

        sig { params(party_identifier: String).void }
        attr_writer :party_identifier

        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :party_type

        sig { returns(T.nilable(String)) }
        attr_reader :plaid_processor_token

        sig { params(plaid_processor_token: String).void }
        attr_writer :plaid_processor_token

        sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]) }
        attr_reader :routing_details

        sig do
          params(
            routing_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]
          ).void
        end
        attr_writer :routing_details

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
          ).void
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
        ); end

        sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::Shape) }
        def to_h; end

        class AccountDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {account_number: String, account_number_type: Symbol} }

          sig { returns(String) }
          attr_accessor :account_number

          sig { returns(T.nilable(Symbol)) }
          attr_reader :account_number_type

          sig { params(account_number_type: Symbol).void }
          attr_writer :account_number_type

          sig { params(account_number: String, account_number_type: Symbol).void }
          def initialize(account_number:, account_number_type: nil); end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::Shape) }
          def to_h; end

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
            def self.values; end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {contact_identifier: String, contact_identifier_type: Symbol} }

          sig { returns(T.nilable(String)) }
          attr_reader :contact_identifier

          sig { params(contact_identifier: String).void }
          attr_writer :contact_identifier

          sig { returns(T.nilable(Symbol)) }
          attr_reader :contact_identifier_type

          sig { params(contact_identifier_type: Symbol).void }
          attr_writer :contact_identifier_type

          sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
          def initialize(contact_identifier: nil, contact_identifier_type: nil); end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::Shape) }
          def to_h; end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          Shape = T.type_alias do
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
          end

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :ledger_id

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Symbol) }
          attr_accessor :normal_balance

          sig { returns(T.nilable(Integer)) }
          attr_accessor :currency_exponent

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T::Array[String]) }
          attr_reader :ledger_account_category_ids

          sig { params(ledger_account_category_ids: T::Array[String]).void }
          attr_writer :ledger_account_category_ids

          sig { returns(T.nilable(String)) }
          attr_reader :ledgerable_id

          sig { params(ledgerable_id: String).void }
          attr_writer :ledgerable_id

          sig { returns(T.nilable(Symbol)) }
          attr_reader :ledgerable_type

          sig { params(ledgerable_type: Symbol).void }
          attr_writer :ledgerable_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

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
            ).void
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
          ); end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::Shape) }
          def to_h; end

          class LedgerableType < ModernTreasury::Enum
            abstract!

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            }
          end

          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :region

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            ).void
          end
          def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress::Shape) }
          def to_h; end
        end

        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          Shape = T.type_alias { {routing_number: String, routing_number_type: Symbol, payment_type: Symbol} }

          sig { returns(String) }
          attr_accessor :routing_number

          sig { returns(Symbol) }
          attr_accessor :routing_number_type

          sig { returns(T.nilable(Symbol)) }
          attr_reader :payment_type

          sig { params(payment_type: Symbol).void }
          attr_writer :payment_type

          sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
          def initialize(routing_number:, routing_number_type:, payment_type: nil); end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::Shape) }
          def to_h; end

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
            def self.values; end
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
            def self.values; end
          end
        end
      end

      class LedgerType < ModernTreasury::Enum
        abstract!

        CUSTOMER = :customer
        VENDOR = :vendor

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class LegalEntity < ModernTreasury::BaseModel
        Shape = T.type_alias do
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
            legal_entity_associations: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation],
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
        end

        sig { returns(Symbol) }
        attr_accessor :legal_entity_type

        sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address]) }
        attr_reader :addresses

        sig do
          params(addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address]).void
        end
        attr_writer :addresses

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        attr_accessor :bank_settings

        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        sig { returns(T.nilable(Date)) }
        attr_accessor :date_formed

        sig { returns(T.nilable(Date)) }
        attr_accessor :date_of_birth

        sig { returns(T::Array[String]) }
        attr_reader :doing_business_as_names

        sig { params(doing_business_as_names: T::Array[String]).void }
        attr_writer :doing_business_as_names

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig do
          returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
        end
        attr_reader :identifications

        sig do
          params(
            identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification]
          ).void
        end
        attr_writer :identifications

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        sig do
          returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
        end
        attr_accessor :legal_entity_associations

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :legal_structure

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig { returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber]) }
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber]
          ).void
        end
        attr_writer :phone_numbers

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :politically_exposed_person

        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        sig { returns(T.nilable(String)) }
        attr_accessor :prefix

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :risk_rating

        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        attr_accessor :wealth_and_employment_details

        sig { returns(T.nilable(String)) }
        attr_accessor :website

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
            legal_entity_associations: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation],
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
          ).void
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
        ); end

        sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Shape) }
        def to_h; end

        class LegalEntityType < ModernTreasury::Enum
          abstract!

          BUSINESS = :business
          INDIVIDUAL = :individual

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Address < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              country: T.nilable(String),
              line1: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String),
              address_types: T::Array[Symbol],
              line2: T.nilable(String)
            }
          end

          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :region

          sig { returns(T::Array[Symbol]) }
          attr_reader :address_types

          sig { params(address_types: T::Array[Symbol]).void }
          attr_writer :address_types

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String),
              address_types: T::Array[Symbol],
              line2: T.nilable(String)
            ).void
          end
          def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::Shape) }
          def to_h; end

          class AddressType < ModernTreasury::Enum
            abstract!

            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class Identification < ModernTreasury::BaseModel
          Shape = T.type_alias { {id_number: String, id_type: Symbol, issuing_country: T.nilable(String)} }

          sig { returns(String) }
          attr_accessor :id_number

          sig { returns(Symbol) }
          attr_accessor :id_type

          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

          sig { params(id_number: String, id_type: Symbol, issuing_country: T.nilable(String)).void }
          def initialize(id_number:, id_type:, issuing_country: nil); end

          sig do
            returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::Shape)
          end
          def to_h; end

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
            def self.values; end
          end
        end

        class LegalEntityAssociation < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              relationship_types: T::Array[Symbol],
              child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            }
          end

          sig { returns(T::Array[Symbol]) }
          attr_accessor :relationship_types

          sig do
            returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity))
          end
          attr_reader :child_legal_entity

          sig do
            params(
              child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
            ).void
          end
          attr_writer :child_legal_entity

          sig { returns(T.nilable(String)) }
          attr_reader :child_legal_entity_id

          sig { params(child_legal_entity_id: String).void }
          attr_writer :child_legal_entity_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :ownership_percentage

          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              relationship_types: T::Array[Symbol],
              child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            ).void
          end
          def initialize(
            relationship_types:,
            child_legal_entity: nil,
            child_legal_entity_id: nil,
            ownership_percentage: nil,
            title: nil
          ); end

          sig do
            returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::Shape)
          end
          def to_h; end

          class RelationshipType < ModernTreasury::Enum
            abstract!

            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end

          class ChildLegalEntity < ModernTreasury::BaseModel
            Shape = T.type_alias do
              {
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification],
                last_name: T.nilable(String),
                legal_entity_type: Symbol,
                legal_structure: T.nilable(Symbol),
                metadata: T::Hash[Symbol,
                                  String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(Symbol),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              }
            end

            sig do
              returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address])
            end
            attr_reader :addresses

            sig do
              params(
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address]
              ).void
            end
            attr_writer :addresses

            sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
            attr_accessor :bank_settings

            sig { returns(T.nilable(String)) }
            attr_accessor :business_name

            sig { returns(T.nilable(String)) }
            attr_accessor :citizenship_country

            sig { returns(T.nilable(Date)) }
            attr_accessor :date_formed

            sig { returns(T.nilable(Date)) }
            attr_accessor :date_of_birth

            sig { returns(T::Array[String]) }
            attr_reader :doing_business_as_names

            sig { params(doing_business_as_names: T::Array[String]).void }
            attr_writer :doing_business_as_names

            sig { returns(T.nilable(String)) }
            attr_accessor :email

            sig { returns(T.nilable(String)) }
            attr_accessor :first_name

            sig do
              returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification])
            end
            attr_reader :identifications

            sig do
              params(
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification]
              ).void
            end
            attr_writer :identifications

            sig { returns(T.nilable(String)) }
            attr_accessor :last_name

            sig { returns(T.nilable(Symbol)) }
            attr_reader :legal_entity_type

            sig { params(legal_entity_type: Symbol).void }
            attr_writer :legal_entity_type

            sig { returns(T.nilable(Symbol)) }
            attr_accessor :legal_structure

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :middle_name

            sig do
              returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber])
            end
            attr_reader :phone_numbers

            sig do
              params(
                phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]
              ).void
            end
            attr_writer :phone_numbers

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :politically_exposed_person

            sig { returns(T.nilable(String)) }
            attr_accessor :preferred_name

            sig { returns(T.nilable(String)) }
            attr_accessor :prefix

            sig { returns(T.nilable(Symbol)) }
            attr_accessor :risk_rating

            sig { returns(T.nilable(String)) }
            attr_accessor :suffix

            sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
            attr_accessor :wealth_and_employment_details

            sig { returns(T.nilable(String)) }
            attr_accessor :website

            sig do
              params(
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification],
                last_name: T.nilable(String),
                legal_entity_type: Symbol,
                legal_structure: T.nilable(Symbol),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(Symbol),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              ).void
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
            ); end

            sig do
              returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Shape)
            end
            def to_h; end

            class Address < ModernTreasury::BaseModel
              Shape = T.type_alias do
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[Symbol],
                  line2: T.nilable(String)
                }
              end

              sig { returns(T.nilable(String)) }
              attr_accessor :country

              sig { returns(T.nilable(String)) }
              attr_accessor :line1

              sig { returns(T.nilable(String)) }
              attr_accessor :locality

              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code

              sig { returns(T.nilable(String)) }
              attr_accessor :region

              sig { returns(T::Array[Symbol]) }
              attr_reader :address_types

              sig { params(address_types: T::Array[Symbol]).void }
              attr_writer :address_types

              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              sig do
                params(
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[Symbol],
                  line2: T.nilable(String)
                ).void
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
                returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::Shape)
              end
              def to_h; end

              class AddressType < ModernTreasury::Enum
                abstract!

                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class Identification < ModernTreasury::BaseModel
              Shape = T.type_alias do
                {id_number: String, id_type: Symbol, issuing_country: T.nilable(String)}
              end

              sig { returns(String) }
              attr_accessor :id_number

              sig { returns(Symbol) }
              attr_accessor :id_type

              sig { returns(T.nilable(String)) }
              attr_accessor :issuing_country

              sig { params(id_number: String, id_type: Symbol, issuing_country: T.nilable(String)).void }
              def initialize(id_number:, id_type:, issuing_country: nil); end

              sig do
                returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::Shape)
              end
              def to_h; end

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
                def self.values; end
              end
            end

            class LegalEntityType < ModernTreasury::Enum
              abstract!

              BUSINESS = :business
              INDIVIDUAL = :individual

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
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
              def self.values; end
            end

            class PhoneNumber < ModernTreasury::BaseModel
              Shape = T.type_alias { {phone_number: String} }

              sig { returns(T.nilable(String)) }
              attr_reader :phone_number

              sig { params(phone_number: String).void }
              attr_writer :phone_number

              sig { params(phone_number: String).void }
              def initialize(phone_number: nil); end

              sig do
                returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber::Shape)
              end
              def to_h; end
            end

            class RiskRating < ModernTreasury::Enum
              abstract!

              LOW = T.let(:low, T.nilable(Symbol))
              MEDIUM = T.let(:medium, T.nilable(Symbol))
              HIGH = T.let(:high, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
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
          def self.values; end
        end

        class PhoneNumber < ModernTreasury::BaseModel
          Shape = T.type_alias { {phone_number: String} }

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig { params(phone_number: String).void }
          def initialize(phone_number: nil); end

          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber::Shape) }
          def to_h; end
        end

        class RiskRating < ModernTreasury::Enum
          abstract!

          LOW = T.let(:low, T.nilable(Symbol))
          MEDIUM = T.let(:medium, T.nilable(Symbol))
          HIGH = T.let(:high, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class VerificationStatus < ModernTreasury::Enum
        abstract!

        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
