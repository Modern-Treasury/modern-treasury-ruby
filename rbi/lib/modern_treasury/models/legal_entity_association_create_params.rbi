# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociationCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig { returns(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol]) }
      attr_accessor :relationship_types

      # The child legal entity.
      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity)) }
      attr_reader :child_legal_entity

      sig do
        params(
          child_legal_entity: T.any(
            ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
            ModernTreasury::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :child_legal_entity

      # The ID of the child legal entity.
      sig { returns(T.nilable(String)) }
      attr_reader :child_legal_entity_id

      sig { params(child_legal_entity_id: String).void }
      attr_writer :child_legal_entity_id

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          parent_legal_entity_id: String,
          relationship_types: T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol],
          child_legal_entity: T.any(
            ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
            ModernTreasury::Util::AnyHash
          ),
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
            ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol
          )

        sig do
          override
            .returns(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType::TaggedSymbol]
            )
        end
        def self.values
        end
      end

      class ChildLegalEntity < ModernTreasury::BaseModel
        # A list of addresses for the entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address])
          )
        end
        attr_reader :addresses

        sig do
          params(
            addresses: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address,
              ModernTreasury::Util::AnyHash
            )
            ]
          )
            .void
        end
        attr_writer :addresses

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash))
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

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_formed

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_of_birth

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :doing_business_as_names

        sig { params(doing_business_as_names: T::Array[String]).void }
        attr_writer :doing_business_as_names

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # A list of identifications for the legal entity.
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
            )
          )
        end
        attr_reader :identifications

        sig do
          params(
            identifications: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification,
              ModernTreasury::Util::AnyHash
            )
            ]
          )
            .void
        end
        attr_writer :identifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The type of legal entity.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
            )
          )
        end
        attr_reader :legal_entity_type

        sig do
          params(
            legal_entity_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol
          )
            .void
        end
        attr_writer :legal_entity_type

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            )
          )
        end
        attr_accessor :legal_structure

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber,
              ModernTreasury::Util::AnyHash
            )
            ]
          )
            .void
        end
        attr_writer :phone_numbers

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
            T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            )
          )
        end
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
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
            addresses: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address,
              ModernTreasury::Util::AnyHash
            )
            ],
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification,
              ModernTreasury::Util::AnyHash
            )
            ],
            last_name: T.nilable(String),
            legal_entity_type: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::OrSymbol,
            legal_structure: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::OrSymbol
            ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[
            T.any(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber,
              ModernTreasury::Util::AnyHash
            )
            ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::OrSymbol
            ),
            suffix: T.nilable(String),
            wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash)),
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
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # Locality or City.
          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Region or State.
          sig { returns(T.nilable(String)) }
          attr_accessor :region

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
          attr_reader :address_types

          sig do
            params(
              address_types: T::Array[
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::OrSymbol
              ]
            )
              .void
          end
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
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        class Identification < ModernTreasury::BaseModel
          # The ID number of identification document.
          sig { returns(String) }
          attr_accessor :id_number

          # The type of ID number.
          sig do
            returns(
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::OrSymbol
            )
          end
          attr_accessor :id_type

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

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
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  ]
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
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType::TaggedSymbol
                ]
              )
          end
          def self.values
          end
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
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure::TaggedSymbol]
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
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end
    end
  end
end
