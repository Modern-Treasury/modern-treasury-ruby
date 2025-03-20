# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociationCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      sig { returns(String) }
      def parent_legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def parent_legal_entity_id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol]) }
      def relationship_types
      end

      sig do
        params(
          _: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol]
        )
          .returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol])
      end
      def relationship_types=(_)
      end

      # The child legal entity.
      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity)) }
      def child_legal_entity
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def child_legal_entity=(_)
      end

      # The ID of the child legal entity.
      sig { returns(T.nilable(String)) }
      def child_legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def child_legal_entity_id=(_)
      end

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      def ownership_percentage
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def ownership_percentage=(_)
      end

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      def title
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def title=(_)
      end

      sig do
        params(
          parent_legal_entity_id: String,
          relationship_types: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol],
          child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        parent_legal_entity_id:,
        relationship_types:,
        child_legal_entity: nil,
        child_legal_entity_id: nil,
        ownership_percentage: nil,
        title: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              parent_legal_entity_id: String,
              relationship_types: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol],
              child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol) }

        BENEFICIAL_OWNER =
          T.let(
            :beneficial_owner,
            ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
          )
      end

      class ChildLegalEntity < ModernTreasury::BaseModel
        # A list of addresses for the entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address])
          )
        end
        def addresses
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address])
            .returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address])
        end
        def addresses=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        def bank_settings
        end

        sig do
          params(_: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
            .returns(T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
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

        sig { returns(T.nilable(T::Array[String])) }
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
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
            )
          )
        end
        def identifications
        end

        sig do
          params(
            _: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
          )
            .returns(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
            )
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
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
            )
          )
        end
        def legal_entity_type
        end

        sig do
          params(
            _: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
          )
            .returns(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
            )
        end
        def legal_entity_type=(_)
        end

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          )
        end
        def legal_structure
        end

        sig do
          params(
            _: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          )
            .returns(
              T.nilable(
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
              )
            )
        end
        def legal_structure=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
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

        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
            )
          )
        end
        def phone_numbers
        end

        sig do
          params(
            _: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
          )
            .returns(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
            )
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
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
          )
        end
        def risk_rating
        end

        sig do
          params(
            _: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
          )
            .returns(
              T.nilable(
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
              )
            )
        end
        def risk_rating=(_)
        end

        # An individual's suffix.
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
          params(
            _: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
            )
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
            legal_entity_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol,
            legal_structure: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            ),
            suffix: T.nilable(String),
            wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                legal_entity_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol,
                legal_structure: T.nilable(
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
                ),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
                ),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Address < ModernTreasury::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
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

          # Locality or City.
          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
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

          # The types of this address.
          sig do
            returns(
              T.nilable(
                T::Array[
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
                ]
              )
            )
          end
          def address_types
          end

          sig do
            params(
              _: T::Array[
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              ]
            )
              .returns(
                T::Array[
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
                ]
              )
          end
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
              address_types: T::Array[
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              ],
              line2: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
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
                  address_types: T::Array[
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
                  ],
                  line2: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          module AddressType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
                )
              end

            BUSINESS =
              T.let(
                :business,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              )
          end
        end

        class Identification < ModernTreasury::BaseModel
          # The ID number of identification document.
          sig { returns(String) }
          def id_number
          end

          sig { params(_: String).returns(String) }
          def id_number=(_)
          end

          # The type of ID number.
          sig do
            returns(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
            )
          end
          def id_type
          end

          sig do
            params(
              _: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
          end
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

          sig do
            params(
              id_number: String,
              id_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(id_number:, id_type:, issuing_country: nil)
          end

          sig do
            override
              .returns(
                {
                  id_number: String,
                  id_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol,
                  issuing_country: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The type of ID number.
          module IDType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
                )
              end

            AR_CUIL =
              T.let(
                :ar_cuil,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
              )
          end
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::TaggedSymbol
              )
            end

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
            )
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
              )
            end

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
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
        module RiskRating
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::TaggedSymbol
              )
            end

          LOW =
            T.let(
              :low,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
        end
      end
    end
  end
end
