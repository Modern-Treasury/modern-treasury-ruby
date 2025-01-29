# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociationCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            parent_legal_entity_id: String,
            relationship_types: T::Array[Symbol],
            child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
            child_legal_entity_id: String,
            ownership_percentage: T.nilable(Integer),
            title: T.nilable(String)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig { returns(T::Array[Symbol]) }
      attr_accessor :relationship_types

      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity)) }
      attr_reader :child_legal_entity

      sig do
        params(child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity).void
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
          parent_legal_entity_id: String,
          relationship_types: T::Array[Symbol],
          child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        parent_legal_entity_id:,
        relationship_types:,
        child_legal_entity: nil,
        child_legal_entity_id: nil,
        ownership_percentage: nil,
        title: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LegalEntityAssociationCreateParams::Shape) }
      def to_h; end

      class RelationshipType < ModernTreasury::Enum
        abstract!

        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ChildLegalEntity < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            addresses: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_type: Symbol,
            legal_structure: T.nilable(Symbol),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber],
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
          returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address])
        end
        attr_reader :addresses

        sig do
          params(
            addresses: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address]
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
          returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification])
        end
        attr_reader :identifications

        sig do
          params(
            identifications: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
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
          returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber])
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
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
            addresses: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_type: Symbol,
            legal_structure: T.nilable(Symbol),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber],
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

        sig { returns(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Shape) }
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
          def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          end

          sig do
            returns(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::Shape)
          end
          def to_h; end

          class AddressType < ModernTreasury::Enum
            abstract!

            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential

            sig { returns(T::Array[Symbol]) }
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
            returns(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::Shape)
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

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class LegalEntityType < ModernTreasury::Enum
          abstract!

          BUSINESS = :business
          INDIVIDUAL = :individual

          sig { returns(T::Array[Symbol]) }
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

          sig { returns(T::Array[Symbol]) }
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
            returns(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber::Shape)
          end
          def to_h; end
        end

        class RiskRating < ModernTreasury::Enum
          abstract!

          LOW = T.let(:low, T.nilable(Symbol))
          MEDIUM = T.let(:medium, T.nilable(Symbol))
          HIGH = T.let(:high, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
