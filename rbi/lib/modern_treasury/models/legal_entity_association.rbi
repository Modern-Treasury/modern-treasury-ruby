# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociation < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The child legal entity.
      sig { returns(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity) }
      def child_legal_entity
      end

      sig do
        params(_: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity)
          .returns(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity)
      end
      def child_legal_entity=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      def ownership_percentage
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def ownership_percentage=(_)
      end

      # The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      sig { returns(String) }
      def parent_legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def parent_legal_entity_id=(_)
      end

      sig { returns(T::Array[Symbol]) }
      def relationship_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def relationship_types=(_)
      end

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      def title
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def title=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          child_legal_entity: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          ownership_percentage: T.nilable(Integer),
          parent_legal_entity_id: String,
          relationship_types: T::Array[Symbol],
          title: T.nilable(String),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        child_legal_entity:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        ownership_percentage:,
        parent_legal_entity_id:,
        relationship_types:,
        title:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              child_legal_entity: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              ownership_percentage: T.nilable(Integer),
              parent_legal_entity_id: String,
              relationship_types: T::Array[Symbol],
              title: T.nilable(String),
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class ChildLegalEntity < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # A list of addresses for the entity.
        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address]) }
        def addresses
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address])
            .returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address])
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

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        def business_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def business_name=(_)
        end

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        def citizenship_country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def citizenship_country=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        def date_formed
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_formed=(_)
        end

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        def date_of_birth
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_of_birth=(_)
        end

        sig { returns(T.nilable(Time)) }
        def discarded_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def discarded_at=(_)
        end

        sig { returns(T::Array[String]) }
        def doing_business_as_names
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def doing_business_as_names=(_)
        end

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        # A list of identifications for the legal entity.
        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification]) }
        def identifications
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification])
            .returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification])
        end
        def identifications=(_)
        end

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_)
        end

        # The type of legal entity.
        sig { returns(Symbol) }
        def legal_entity_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def legal_entity_type=(_)
        end

        # The business's legal structure.
        sig { returns(T.nilable(Symbol)) }
        def legal_structure
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def legal_structure=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        def middle_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def middle_name=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]) }
        def phone_numbers
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber])
            .returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber])
        end
        def phone_numbers=(_)
        end

        # Whether the individual is a politically exposed person.
        sig { returns(T.nilable(T::Boolean)) }
        def politically_exposed_person
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def politically_exposed_person=(_)
        end

        # An individual's preferred name.
        sig { returns(T.nilable(String)) }
        def preferred_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def preferred_name=(_)
        end

        # An individual's prefix.
        sig { returns(T.nilable(String)) }
        def prefix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def prefix=(_)
        end

        # The risk rating of the legal entity. One of low, medium, high.
        sig { returns(T.nilable(Symbol)) }
        def risk_rating
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def risk_rating=(_)
        end

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        def suffix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def suffix=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
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

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        # The child legal entity.
        sig do
          params(
            id: String,
            addresses: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address],
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
            identifications: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification],
            last_name: T.nilable(String),
            legal_entity_type: Symbol,
            legal_structure: T.nilable(Symbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(Symbol),
            suffix: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                addresses: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address],
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
                identifications: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification],
                last_name: T.nilable(String),
                legal_entity_type: Symbol,
                legal_structure: T.nilable(Symbol),
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                object: String,
                phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
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
        def to_hash
        end

        class Address < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The types of this address.
          sig { returns(T::Array[Symbol]) }
          def address_types
          end

          sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
          def address_types=(_)
          end

          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(T.nilable(Time)) }
          def discarded_at
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def discarded_at=(_)
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

          # This field will be true if this object exists in the live environment or false
          #   if it exists in the test environment.
          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

          # Locality or City.
          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # Region or State.
          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
          )
          end

          sig do
            override
              .returns(
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
          def to_hash
          end

          class AddressType < ModernTreasury::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential
          end
        end

        class Identification < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(T.nilable(Time)) }
          def discarded_at
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def discarded_at=(_)
          end

          # The type of ID number.
          sig { returns(Symbol) }
          def id_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def id_type=(_)
          end

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          sig { returns(T.nilable(String)) }
          def issuing_country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def issuing_country=(_)
          end

          # This field will be true if this object exists in the live environment or false
          #   if it exists in the test environment.
          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(id:, created_at:, discarded_at:, id_type:, issuing_country:, live_mode:, object:, updated_at:)
          end

          sig do
            override
              .returns(
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
          def to_hash
          end

          # The type of ID number.
          class IDType < ModernTreasury::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

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
        end

        # The type of legal entity.
        class LegalEntityType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          BUSINESS = :business
          INDIVIDUAL = :individual
          JOINT = :joint
        end

        # The business's legal structure.
        class LegalStructure < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CORPORATION = :corporation
          LLC = :llc
          NON_PROFIT = :non_profit
          PARTNERSHIP = :partnership
          SOLE_PROPRIETORSHIP = :sole_proprietorship
          TRUST = :trust
        end

        class PhoneNumber < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: String).returns(String) }
          def phone_number=(_)
          end

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({phone_number: String}) }
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        class RiskRating < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          LOW = :low
          MEDIUM = :medium
          HIGH = :high
        end
      end

      # A list of relationship types for how the child entity relates to parent entity.
      class RelationshipType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person
      end
    end
  end
end
