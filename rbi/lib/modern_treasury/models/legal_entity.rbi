# typed: strong

module ModernTreasury
  module Models
    class LegalEntity < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[ModernTreasury::Models::LegalEntity::Address]) }
      attr_accessor :addresses

      sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
      attr_accessor :bank_settings

      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      sig { returns(T.nilable(String)) }
      attr_accessor :citizenship_country

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_formed

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[String]) }
      attr_accessor :doing_business_as_names

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig { returns(T::Array[ModernTreasury::Models::LegalEntity::Identification]) }
      attr_accessor :identifications

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityAssociation])) }
      attr_accessor :legal_entity_associations

      sig { returns(Symbol) }
      attr_accessor :legal_entity_type

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :legal_structure

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :middle_name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T::Array[ModernTreasury::Models::LegalEntity::PhoneNumber]) }
      attr_accessor :phone_numbers

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

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
      attr_accessor :wealth_and_employment_details

      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          id: String,
          addresses: T::Array[ModernTreasury::Models::LegalEntity::Address],
          bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          created_at: Time,
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          discarded_at: T.nilable(Time),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications: T::Array[ModernTreasury::Models::LegalEntity::Identification],
          last_name: T.nilable(String),
          legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::LegalEntityAssociation]),
          legal_entity_type: Symbol,
          legal_structure: T.nilable(Symbol),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          object: String,
          phone_numbers: T::Array[ModernTreasury::Models::LegalEntity::PhoneNumber],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating: T.nilable(Symbol),
          suffix: T.nilable(String),
          updated_at: Time,
          wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
          website: T.nilable(String)
        ).void
      end
      def initialize(
        id:,
        addresses:,
        bank_settings:,
        business_name:,
        citizenship_country:,
        created_at:,
        date_formed:,
        date_of_birth:,
        discarded_at:,
        doing_business_as_names:,
        email:,
        first_name:,
        identifications:,
        last_name:,
        legal_entity_associations:,
        legal_entity_type:,
        legal_structure:,
        live_mode:,
        metadata:,
        middle_name:,
        object:,
        phone_numbers:,
        politically_exposed_person:,
        preferred_name:,
        prefix:,
        risk_rating:,
        suffix:,
        updated_at:,
        wealth_and_employment_details:,
        website:
      ); end

      sig do
        override.returns(
          {
            id: String,
            addresses: T::Array[ModernTreasury::Models::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::LegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::LegalEntityAssociation]),
            legal_entity_type: Symbol,
            legal_structure: T.nilable(Symbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(Symbol),
            suffix: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
            website: T.nilable(String)
          }
        )
      end
      def to_hash; end

      class Address < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[Symbol]) }
        attr_accessor :address_types

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            address_types: T::Array[Symbol],
            country: T.nilable(String),
            created_at: Time,
            discarded_at: T.nilable(Time),
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          address_types:,
          country:,
          created_at:,
          discarded_at:,
          line1:,
          line2:,
          live_mode:,
          locality:,
          object:,
          postal_code:,
          region:,
          updated_at:
        ); end

        sig do
          override.returns(
            {
              id: String,
              address_types: T::Array[Symbol],
              country: T.nilable(String),
              created_at: Time,
              discarded_at: T.nilable(Time),
              line1: T.nilable(String),
              line2: T.nilable(String),
              live_mode: T::Boolean,
              locality: T.nilable(String),
              object: String,
              postal_code: T.nilable(String),
              region: T.nilable(String),
              updated_at: Time
            }
          )
        end
        def to_hash; end

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
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(Symbol) }
        attr_accessor :id_type

        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_country

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            id_type: Symbol,
            issuing_country: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          created_at:,
          discarded_at:,
          id_type:,
          issuing_country:,
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              id_type: Symbol,
              issuing_country: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            }
          )
        end
        def to_hash; end

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
        JOINT = :joint

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
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig { params(phone_number: String).void }
        def initialize(phone_number: nil); end

        sig { override.returns({phone_number: String}) }
        def to_hash; end
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
end
