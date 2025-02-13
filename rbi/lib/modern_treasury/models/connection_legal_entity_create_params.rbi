# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity)) }
      def legal_entity
      end

      sig do
        params(_: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity).returns(ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity)
      end
      def legal_entity=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      sig do
        params(
          connection_id: String,
          legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity,
          legal_entity_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(connection_id:, legal_entity: nil, legal_entity_id: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            connection_id: String,
            legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity,
            legal_entity_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LegalEntity < ModernTreasury::BaseModel
        sig do
          returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address]))
        end
        def addresses
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address]).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address])
        end
        def addresses=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        def bank_settings
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::BankSettings)).returns(T.nilable(ModernTreasury::Models::BankSettings))
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
          returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification]))
        end
        def identifications
        end

        sig do
          params(
            _: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification]
          ).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification])
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
          returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation]))
        end
        def legal_entity_associations
        end

        sig do
          params(
            _: T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation])
          ).returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation]))
        end
        def legal_entity_associations=(_)
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
          returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber]))
        end
        def phone_numbers
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber]).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber])
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
          params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)).returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
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
            addresses: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation]),
            legal_entity_type: Symbol,
            legal_structure: T.nilable(Symbol),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber],
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
          legal_entity_associations: nil,
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
          override.returns(
            {
              addresses: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Address],
              bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              first_name: T.nilable(String),
              identifications: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::Identification],
              last_name: T.nilable(String),
              legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation]),
              legal_entity_type: Symbol,
              legal_structure: T.nilable(Symbol),
              metadata: T::Hash[Symbol,
                                String],
              middle_name: T.nilable(String),
              phone_numbers: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber],
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
            ).void
          end
          def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          end

          sig do
            override.returns(
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
            returns(T.nilable(ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity))
          end
          def child_legal_entity
          end

          sig do
            params(
              _: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
            ).returns(ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity)
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
              child_legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
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
          )
          end

          sig do
            override.returns(
              {
                relationship_types: T::Array[Symbol],
                child_legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
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
              returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address]))
            end
            def addresses
            end

            sig do
              params(
                _: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address]
              ).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address])
            end
            def addresses=(_)
            end

            sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
            def bank_settings
            end

            sig do
              params(_: T.nilable(ModernTreasury::Models::BankSettings)).returns(T.nilable(ModernTreasury::Models::BankSettings))
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
              returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification]))
            end
            def identifications
            end

            sig do
              params(
                _: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification]
              ).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification])
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
              returns(T.nilable(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]))
            end
            def phone_numbers
            end

            sig do
              params(
                _: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]
              ).returns(T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber])
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
              params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)).returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails))
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
                addresses: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification],
                last_name: T.nilable(String),
                legal_entity_type: Symbol,
                legal_structure: T.nilable(Symbol),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
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
            )
            end

            sig do
              override.returns(
                {
                  addresses: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address],
                  bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                  business_name: T.nilable(String),
                  citizenship_country: T.nilable(String),
                  date_formed: T.nilable(Date),
                  date_of_birth: T.nilable(Date),
                  doing_business_as_names: T::Array[String],
                  email: T.nilable(String),
                  first_name: T.nilable(String),
                  identifications: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification],
                  last_name: T.nilable(String),
                  legal_entity_type: Symbol,
                  legal_structure: T.nilable(Symbol),
                  metadata: T::Hash[Symbol,
                                    String],
                  middle_name: T.nilable(String),
                  phone_numbers: T::Array[ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
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
                override.returns(
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
  end
end
