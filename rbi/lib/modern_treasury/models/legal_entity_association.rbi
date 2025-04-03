# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociation < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The child legal entity.
      sig { returns(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity) }
      attr_reader :child_legal_entity

      sig do
        params(
          child_legal_entity: T.any(
            ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity,
            ModernTreasury::Internal::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :child_legal_entity

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol]) }
      attr_accessor :relationship_types

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          child_legal_entity: T.any(
            ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity,
            ModernTreasury::Internal::Util::AnyHash
          ),
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          ownership_percentage: T.nilable(Integer),
          parent_legal_entity_id: String,
          relationship_types: T::Array[ModernTreasury::Models::LegalEntityAssociation::RelationshipType::OrSymbol],
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
              relationship_types: T::Array[ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol],
              title: T.nilable(String),
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class ChildLegalEntity < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # A list of addresses for the entity.
        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address]) }
        attr_accessor :addresses

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::Util::AnyHash))
          )
            .void
        end
        attr_writer :bank_settings

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        sig { returns(T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail)) }
        attr_reader :compliance_details

        sig do
          params(
            compliance_details: T.nilable(
              T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :compliance_details

        sig { returns(Time) }
        attr_accessor :created_at

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_formed

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_of_birth

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T::Array[String]) }
        attr_accessor :doing_business_as_names

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # A list of identifications for the legal entity.
        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification]) }
        attr_accessor :identifications

        # A list of industry classifications for the legal entity.
        sig { returns(T::Array[ModernTreasury::Models::LegalEntityIndustryClassification]) }
        attr_accessor :industry_classifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The type of legal entity.
        sig { returns(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol) }
        attr_accessor :legal_entity_type

        # The business's legal structure.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol)
          )
        end
        attr_accessor :legal_structure

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig { returns(String) }
        attr_accessor :object

        sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]) }
        attr_accessor :phone_numbers

        # Whether the individual is a politically exposed person.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :politically_exposed_person

        # An individual's preferred name.
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        # An individual's prefix.
        sig { returns(T.nilable(String)) }
        attr_accessor :prefix

        # The risk rating of the legal entity. One of low, medium, high.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol)
          )
        end
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details: T.nilable(
              T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :wealth_and_employment_details

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        # The child legal entity.
        sig do
          params(
            id: String,
            addresses: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address,
              ModernTreasury::Internal::Util::AnyHash
            )
            ],
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::Util::AnyHash)),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details: T.nilable(
              T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::Util::AnyHash)
            ),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification,
              ModernTreasury::Internal::Util::AnyHash
            )
            ],
            industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::Util::AnyHash)],
            last_name: T.nilable(String),
            legal_entity_type: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
            legal_structure: T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            phone_numbers: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber,
              ModernTreasury::Internal::Util::AnyHash
            )
            ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol),
            suffix: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details: T.nilable(
              T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::Util::AnyHash)
            ),
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
          compliance_details:,
          created_at:,
          date_formed:,
          date_of_birth:,
          discarded_at:,
          doing_business_as_names:,
          email:,
          first_name:,
          identifications:,
          industry_classifications:,
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
                compliance_details: T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail),
                created_at: Time,
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                discarded_at: T.nilable(Time),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification],
                industry_classifications: T::Array[ModernTreasury::Models::LegalEntityIndustryClassification],
                last_name: T.nilable(String),
                legal_entity_type: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol,
                legal_structure: T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol),
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                object: String,
                phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol),
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
          attr_accessor :id

          # The types of this address.
          sig do
            returns(
              T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol]
            )
          end
          attr_accessor :address_types

          # Country code conforms to [ISO 3166-1 alpha-2]
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

          # This field will be true if this object exists in the live environment or false
          #   if it exists in the test environment.
          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          # Locality or City.
          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          sig { returns(String) }
          attr_accessor :object

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Region or State.
          sig { returns(T.nilable(String)) }
          attr_accessor :region

          sig { returns(Time) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              address_types: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol],
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
                  address_types: T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol],
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

          module AddressType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                )
              end

            BUSINESS =
              T.let(
                :business,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Identification < ModernTreasury::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :discarded_at

          # The type of ID number.
          sig do
            returns(
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          end
          attr_accessor :id_type

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

          # This field will be true if this object exists in the live environment or false
          #   if it exists in the test environment.
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
              id_type: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  id: String,
                  created_at: Time,
                  discarded_at: T.nilable(Time),
                  id_type: ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol,
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
          module IDType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                )
              end

            AR_CUIL =
              T.let(
                :ar_cuil,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
              )
            end

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )
          JOINT =
            T.let(
              :joint,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol]
              )
          end
          def self.values
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
              )
            end

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol]
              )
          end
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({phone_number: String}) }
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
              )
            end

          LOW =
            T.let(:low, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol)
          MEDIUM =
            T.let(:medium, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol)
          HIGH =
            T.let(:high, ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociation::RelationshipType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol) }

        BENEFICIAL_OWNER =
          T.let(:beneficial_owner, ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol)
        CONTROL_PERSON =
          T.let(:control_person, ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LegalEntityAssociation::RelationshipType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
