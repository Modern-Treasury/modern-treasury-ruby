# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The child legal entity.
      sig { returns(ModernTreasury::LegalEntityAssociation::ChildLegalEntity) }
      attr_reader :child_legal_entity

      sig do
        params(
          child_legal_entity:
            ModernTreasury::LegalEntityAssociation::ChildLegalEntity::OrHash
        ).void
      end
      attr_writer :child_legal_entity

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The child entity's ownership percentage iff they are a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ownership_percentage

      # The ID of the parent legal entity. This must be a business or joint legal
      # entity.
      sig { returns(String) }
      attr_accessor :parent_legal_entity_id

      sig do
        returns(
          T::Array[
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          ]
        )
      end
      attr_accessor :relationship_types

      # The job title of the child entity at the parent entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          child_legal_entity:
            ModernTreasury::LegalEntityAssociation::ChildLegalEntity::OrHash,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          ownership_percentage: T.nilable(Integer),
          parent_legal_entity_id: String,
          relationship_types:
            T::Array[
              ModernTreasury::LegalEntityAssociation::RelationshipType::OrSymbol
            ],
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The child legal entity.
        child_legal_entity:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The child entity's ownership percentage iff they are a beneficial owner.
        ownership_percentage:,
        # The ID of the parent legal entity. This must be a business or joint legal
        # entity.
        parent_legal_entity_id:,
        relationship_types:,
        # The job title of the child entity at the parent entity.
        title:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            child_legal_entity:
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            ownership_percentage: T.nilable(Integer),
            parent_legal_entity_id: String,
            relationship_types:
              T::Array[
                ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
              ],
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        # A list of addresses for the entity.
        sig do
          returns(
            T::Array[
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address
            ]
          )
        end
        attr_accessor :addresses

        sig { returns(T.nilable(ModernTreasury::BankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings: T.nilable(ModernTreasury::BankSettings::OrHash)
          ).void
        end
        attr_writer :bank_settings

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        sig { returns(T.nilable(ModernTreasury::LegalEntityComplianceDetail)) }
        attr_reader :compliance_details

        sig do
          params(
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash)
          ).void
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
        sig do
          returns(
            T::Array[
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification
            ]
          )
        end
        attr_accessor :identifications

        # A list of industry classifications for the legal entity.
        sig do
          returns(T::Array[ModernTreasury::LegalEntityIndustryClassification])
        end
        attr_accessor :industry_classifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The type of legal entity.
        sig do
          returns(
            ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
          )
        end
        attr_accessor :legal_entity_type

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          )
        end
        attr_accessor :legal_structure

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig { returns(String) }
        attr_accessor :object

        sig do
          returns(
            T::Array[
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
            ]
          )
        end
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
            T.nilable(
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
            )
          )
        end
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(ModernTreasury::WealthAndEmploymentDetails)) }
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details:
              T.nilable(ModernTreasury::WealthAndEmploymentDetails::OrHash)
          ).void
        end
        attr_writer :wealth_and_employment_details

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        # The child legal entity.
        sig do
          params(
            id: String,
            addresses:
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::OrHash
              ],
            bank_settings: T.nilable(ModernTreasury::BankSettings::OrHash),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications:
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::OrHash
              ],
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ],
            last_name: T.nilable(String),
            legal_entity_type:
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
              ),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            phone_numbers:
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::PhoneNumber::OrHash
              ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating:
              T.nilable(
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
              ),
            suffix: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details:
              T.nilable(ModernTreasury::WealthAndEmploymentDetails::OrHash),
            website: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # A list of addresses for the entity.
          addresses:,
          bank_settings:,
          # The business's legal business name.
          business_name:,
          # The country of citizenship for an individual.
          citizenship_country:,
          compliance_details:,
          created_at:,
          # A business's formation date (YYYY-MM-DD).
          date_formed:,
          # An individual's date of birth (YYYY-MM-DD).
          date_of_birth:,
          discarded_at:,
          doing_business_as_names:,
          # The entity's primary email.
          email:,
          # An individual's first name.
          first_name:,
          # A list of identifications for the legal entity.
          identifications:,
          # A list of industry classifications for the legal entity.
          industry_classifications:,
          # An individual's last name.
          last_name:,
          # The type of legal entity.
          legal_entity_type:,
          # The business's legal structure.
          legal_structure:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata:,
          # An individual's middle name.
          middle_name:,
          object:,
          phone_numbers:,
          # Whether the individual is a politically exposed person.
          politically_exposed_person:,
          # An individual's preferred name.
          preferred_name:,
          # An individual's prefix.
          prefix:,
          # The risk rating of the legal entity. One of low, medium, high.
          risk_rating:,
          # An individual's suffix.
          suffix:,
          updated_at:,
          wealth_and_employment_details:,
          # The entity's primary website URL.
          website:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              addresses:
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address
                ],
              bank_settings: T.nilable(ModernTreasury::BankSettings),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              compliance_details:
                T.nilable(ModernTreasury::LegalEntityComplianceDetail),
              created_at: Time,
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              discarded_at: T.nilable(Time),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              first_name: T.nilable(String),
              identifications:
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification
                ],
              industry_classifications:
                T::Array[ModernTreasury::LegalEntityIndustryClassification],
              last_name: T.nilable(String),
              legal_entity_type:
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol,
              legal_structure:
                T.nilable(
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                ),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              middle_name: T.nilable(String),
              object: String,
              phone_numbers:
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                ],
              politically_exposed_person: T.nilable(T::Boolean),
              preferred_name: T.nilable(String),
              prefix: T.nilable(String),
              risk_rating:
                T.nilable(
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                ),
              suffix: T.nilable(String),
              updated_at: Time,
              wealth_and_employment_details:
                T.nilable(ModernTreasury::WealthAndEmploymentDetails),
              website: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Address < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(T.self_type, ModernTreasury::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          # The types of this address.
          sig do
            returns(
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              ]
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
          # if it exists in the test environment.
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
              address_types:
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                ],
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
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The types of this address.
            address_types:,
            # Country code conforms to [ISO 3166-1 alpha-2]
            country:,
            created_at:,
            discarded_at:,
            line1:,
            line2:,
            # This field will be true if this object exists in the live environment or false
            # if it exists in the test environment.
            live_mode:,
            # Locality or City.
            locality:,
            object:,
            # The postal code of the address.
            postal_code:,
            # Region or State.
            region:,
            updated_at:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                address_types:
                  T::Array[
                    ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  ],
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
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS =
              T.let(
                :business,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Identification < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(T.self_type, ModernTreasury::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :discarded_at

          # The type of ID number.
          sig do
            returns(
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          end
          attr_accessor :id_type

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          # identification
          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
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
              id_type:
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            discarded_at:,
            # The type of ID number.
            id_type:,
            # The ISO 3166-1 alpha-2 country code of the country that issued the
            # identification
            issuing_country:,
            # This field will be true if this object exists in the live environment or false
            # if it exists in the test environment.
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
                id_type:
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol,
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
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AR_CUIL =
              T.let(
                :ar_cuil,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )
          JOINT =
            T.let(
              :joint,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(T.self_type, ModernTreasury::Internal::AnyHash)
            end

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({ phone_number: String }) }
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW =
            T.let(
              :low,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityAssociation::RelationshipType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BENEFICIAL_OWNER =
          T.let(
            :beneficial_owner,
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :control_person,
            ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityAssociation::RelationshipType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
