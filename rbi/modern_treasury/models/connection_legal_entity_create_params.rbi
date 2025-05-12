# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ConnectionLegalEntityCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the connection.
      sig { returns(String) }
      attr_accessor :connection_id

      # The legal entity.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity
          )
        )
      end
      attr_reader :legal_entity

      sig do
        params(
          legal_entity:
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::OrHash
        ).void
      end
      attr_writer :legal_entity

      # The ID of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig do
        params(
          connection_id: String,
          legal_entity:
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::OrHash,
          legal_entity_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the connection.
        connection_id:,
        # The legal entity.
        legal_entity: nil,
        # The ID of the legal entity.
        legal_entity_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            legal_entity:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity,
            legal_entity_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LegalEntity < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity,
              ModernTreasury::Internal::AnyHash
            )
          end

        # A list of addresses for the entity.
        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address
              ]
            )
          )
        end
        attr_reader :addresses

        sig do
          params(
            addresses:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::OrHash
              ]
          ).void
        end
        attr_writer :addresses

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
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification
              ]
            )
          )
        end
        attr_reader :identifications

        sig do
          params(
            identifications:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::OrHash
              ]
          ).void
        end
        attr_writer :identifications

        # A list of industry classifications for the legal entity.
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::LegalEntityIndustryClassification]
            )
          )
        end
        attr_reader :industry_classifications

        sig do
          params(
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ]
          ).void
        end
        attr_writer :industry_classifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal entity associations and its child legal entities.
        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation
              ]
            )
          )
        end
        attr_accessor :legal_entity_associations

        # The type of legal entity.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol
            )
          )
        end
        attr_reader :legal_entity_type

        sig do
          params(
            legal_entity_type:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol
          ).void
        end
        attr_writer :legal_entity_type

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
            )
          )
        end
        attr_accessor :legal_structure

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
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
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber
              ]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber::OrHash
              ]
          ).void
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
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
            )
          )
        end
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

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

        # The legal entity.
        sig do
          params(
            addresses:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::OrHash
              ],
            bank_settings: T.nilable(ModernTreasury::BankSettings::OrHash),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::OrHash
              ],
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ],
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::OrHash
                ]
              ),
            legal_entity_type:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
              ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber::OrHash
              ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
              ),
            suffix: T.nilable(String),
            wealth_and_employment_details:
              T.nilable(ModernTreasury::WealthAndEmploymentDetails::OrHash),
            website: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of addresses for the entity.
          addresses: nil,
          bank_settings: nil,
          # The business's legal business name.
          business_name: nil,
          # The country of citizenship for an individual.
          citizenship_country: nil,
          compliance_details: nil,
          # A business's formation date (YYYY-MM-DD).
          date_formed: nil,
          # An individual's date of birth (YYYY-MM-DD).
          date_of_birth: nil,
          doing_business_as_names: nil,
          # The entity's primary email.
          email: nil,
          # An individual's first name.
          first_name: nil,
          # A list of identifications for the legal entity.
          identifications: nil,
          # A list of industry classifications for the legal entity.
          industry_classifications: nil,
          # An individual's last name.
          last_name: nil,
          # The legal entity associations and its child legal entities.
          legal_entity_associations: nil,
          # The type of legal entity.
          legal_entity_type: nil,
          # The business's legal structure.
          legal_structure: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # An individual's middle name.
          middle_name: nil,
          phone_numbers: nil,
          # Whether the individual is a politically exposed person.
          politically_exposed_person: nil,
          # An individual's preferred name.
          preferred_name: nil,
          # An individual's prefix.
          prefix: nil,
          # The risk rating of the legal entity. One of low, medium, high.
          risk_rating: nil,
          # An individual's suffix.
          suffix: nil,
          wealth_and_employment_details: nil,
          # The entity's primary website URL.
          website: nil
        )
        end

        sig do
          override.returns(
            {
              addresses:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address
                ],
              bank_settings: T.nilable(ModernTreasury::BankSettings),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              compliance_details:
                T.nilable(ModernTreasury::LegalEntityComplianceDetail),
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              first_name: T.nilable(String),
              identifications:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification
                ],
              industry_classifications:
                T::Array[ModernTreasury::LegalEntityIndustryClassification],
              last_name: T.nilable(String),
              legal_entity_associations:
                T.nilable(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation
                  ]
                ),
              legal_entity_type:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol,
              legal_structure:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
                ),
              metadata: T::Hash[Symbol, String],
              middle_name: T.nilable(String),
              phone_numbers:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber
                ],
              politically_exposed_person: T.nilable(T::Boolean),
              preferred_name: T.nilable(String),
              prefix: T.nilable(String),
              risk_rating:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
                ),
              suffix: T.nilable(String),
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
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address,
                ModernTreasury::Internal::AnyHash
              )
            end

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
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::OrSymbol
                ]
              )
            )
          end
          attr_reader :address_types

          sig do
            params(
              address_types:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::OrSymbol
                ]
            ).void
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
              address_types:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::OrSymbol
                ],
              line2: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Country code conforms to [ISO 3166-1 alpha-2]
            country:,
            line1:,
            # Locality or City.
            locality:,
            # The postal code of the address.
            postal_code:,
            # Region or State.
            region:,
            # The types of this address.
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
                address_types:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::OrSymbol
                  ],
                line2: T.nilable(String)
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
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS =
              T.let(
                :business,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
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
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification,
                ModernTreasury::Internal::AnyHash
              )
            end

          # The ID number of identification document.
          sig { returns(String) }
          attr_accessor :id_number

          # The type of ID number.
          sig do
            returns(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::OrSymbol
            )
          end
          attr_accessor :id_type

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          # identification
          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

          sig do
            params(
              id_number: String,
              id_type:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID number of identification document.
            id_number:,
            # The type of ID number.
            id_type:,
            # The ISO 3166-1 alpha-2 country code of the country that issued the
            # identification
            issuing_country: nil
          )
          end

          sig do
            override.returns(
              {
                id_number: String,
                id_type:
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::OrSymbol,
                issuing_country: T.nilable(String)
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
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AR_CUIL =
              T.let(
                :ar_cuil,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ]
            )
          end
          attr_accessor :relationship_types

          # The child legal entity.
          sig do
            returns(
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
              )
            )
          end
          attr_reader :child_legal_entity

          sig do
            params(
              child_legal_entity:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::OrHash
            ).void
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
              relationship_types:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                ],
              child_legal_entity:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::OrHash,
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            relationship_types:,
            # The child legal entity.
            child_legal_entity: nil,
            # The ID of the child legal entity.
            child_legal_entity_id: nil,
            # The child entity's ownership percentage iff they are a beneficial owner.
            ownership_percentage: nil,
            # The job title of the child entity at the parent entity.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                relationship_types:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                  ],
                child_legal_entity:
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                child_legal_entity_id: String,
                ownership_percentage: T.nilable(Integer),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # A list of relationship types for how the child entity relates to parent entity.
          module RelationshipType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BENEFICIAL_OWNER =
              T.let(
                :beneficial_owner,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )
            CONTROL_PERSON =
              T.let(
                :control_person,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                  ModernTreasury::Internal::AnyHash
                )
              end

            # A list of addresses for the entity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                  ]
                )
              )
            end
            attr_reader :addresses

            sig do
              params(
                addresses:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::OrHash
                  ]
              ).void
            end
            attr_writer :addresses

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

            sig do
              returns(T.nilable(ModernTreasury::LegalEntityComplianceDetail))
            end
            attr_reader :compliance_details

            sig do
              params(
                compliance_details:
                  T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash)
              ).void
            end
            attr_writer :compliance_details

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
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                  ]
                )
              )
            end
            attr_reader :identifications

            sig do
              params(
                identifications:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::OrHash
                  ]
              ).void
            end
            attr_writer :identifications

            # A list of industry classifications for the legal entity.
            sig do
              returns(
                T.nilable(
                  T::Array[ModernTreasury::LegalEntityIndustryClassification]
                )
              )
            end
            attr_reader :industry_classifications

            sig do
              params(
                industry_classifications:
                  T::Array[
                    ModernTreasury::LegalEntityIndustryClassification::OrHash
                  ]
              ).void
            end
            attr_writer :industry_classifications

            # An individual's last name.
            sig { returns(T.nilable(String)) }
            attr_accessor :last_name

            # The type of legal entity.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
                )
              )
            end
            attr_reader :legal_entity_type

            sig do
              params(
                legal_entity_type:
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
              ).void
            end
            attr_writer :legal_entity_type

            # The business's legal structure.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                )
              )
            end
            attr_accessor :legal_structure

            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
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
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
              )
            end
            attr_reader :phone_numbers

            sig do
              params(
                phone_numbers:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber::OrHash
                  ]
              ).void
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
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                )
              )
            end
            attr_accessor :risk_rating

            # An individual's suffix.
            sig { returns(T.nilable(String)) }
            attr_accessor :suffix

            sig do
              returns(T.nilable(ModernTreasury::WealthAndEmploymentDetails))
            end
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
                addresses:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::OrHash
                  ],
                bank_settings: T.nilable(ModernTreasury::BankSettings::OrHash),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                compliance_details:
                  T.nilable(
                    ModernTreasury::LegalEntityComplianceDetail::OrHash
                  ),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::OrHash
                  ],
                industry_classifications:
                  T::Array[
                    ModernTreasury::LegalEntityIndustryClassification::OrHash
                  ],
                last_name: T.nilable(String),
                legal_entity_type:
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
                legal_structure:
                  T.nilable(
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                  ),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers:
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber::OrHash
                  ],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating:
                  T.nilable(
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                  ),
                suffix: T.nilable(String),
                wealth_and_employment_details:
                  T.nilable(ModernTreasury::WealthAndEmploymentDetails::OrHash),
                website: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of addresses for the entity.
              addresses: nil,
              bank_settings: nil,
              # The business's legal business name.
              business_name: nil,
              # The country of citizenship for an individual.
              citizenship_country: nil,
              compliance_details: nil,
              # A business's formation date (YYYY-MM-DD).
              date_formed: nil,
              # An individual's date of birth (YYYY-MM-DD).
              date_of_birth: nil,
              doing_business_as_names: nil,
              # The entity's primary email.
              email: nil,
              # An individual's first name.
              first_name: nil,
              # A list of identifications for the legal entity.
              identifications: nil,
              # A list of industry classifications for the legal entity.
              industry_classifications: nil,
              # An individual's last name.
              last_name: nil,
              # The type of legal entity.
              legal_entity_type: nil,
              # The business's legal structure.
              legal_structure: nil,
              # Additional data represented as key-value pairs. Both the key and value must be
              # strings.
              metadata: nil,
              # An individual's middle name.
              middle_name: nil,
              phone_numbers: nil,
              # Whether the individual is a politically exposed person.
              politically_exposed_person: nil,
              # An individual's preferred name.
              preferred_name: nil,
              # An individual's prefix.
              prefix: nil,
              # The risk rating of the legal entity. One of low, medium, high.
              risk_rating: nil,
              # An individual's suffix.
              suffix: nil,
              wealth_and_employment_details: nil,
              # The entity's primary website URL.
              website: nil
            )
            end

            sig do
              override.returns(
                {
                  addresses:
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                    ],
                  bank_settings: T.nilable(ModernTreasury::BankSettings),
                  business_name: T.nilable(String),
                  citizenship_country: T.nilable(String),
                  compliance_details:
                    T.nilable(ModernTreasury::LegalEntityComplianceDetail),
                  date_formed: T.nilable(Date),
                  date_of_birth: T.nilable(Date),
                  doing_business_as_names: T::Array[String],
                  email: T.nilable(String),
                  first_name: T.nilable(String),
                  identifications:
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                    ],
                  industry_classifications:
                    T::Array[ModernTreasury::LegalEntityIndustryClassification],
                  last_name: T.nilable(String),
                  legal_entity_type:
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
                  legal_structure:
                    T.nilable(
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                    ),
                  metadata: T::Hash[Symbol, String],
                  middle_name: T.nilable(String),
                  phone_numbers:
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                    ],
                  politically_exposed_person: T.nilable(T::Boolean),
                  preferred_name: T.nilable(String),
                  prefix: T.nilable(String),
                  risk_rating:
                    T.nilable(
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                    ),
                  suffix: T.nilable(String),
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
                  T.any(
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address,
                    ModernTreasury::Internal::AnyHash
                  )
                end

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
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :address_types

              sig do
                params(
                  address_types:
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                    ]
                ).void
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
                  address_types:
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                    ],
                  line2: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Country code conforms to [ISO 3166-1 alpha-2]
                country:,
                line1:,
                # Locality or City.
                locality:,
                # The postal code of the address.
                postal_code:,
                # Region or State.
                region:,
                # The types of this address.
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
                    address_types:
                      T::Array[
                        ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                      ],
                    line2: T.nilable(String)
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
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BUSINESS =
                  T.let(
                    :business,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                MAILING =
                  T.let(
                    :mailing,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                PO_BOX =
                  T.let(
                    :po_box,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                RESIDENTIAL =
                  T.let(
                    :residential,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
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
                  T.any(
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification,
                    ModernTreasury::Internal::AnyHash
                  )
                end

              # The ID number of identification document.
              sig { returns(String) }
              attr_accessor :id_number

              # The type of ID number.
              sig do
                returns(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol
                )
              end
              attr_accessor :id_type

              # The ISO 3166-1 alpha-2 country code of the country that issued the
              # identification
              sig { returns(T.nilable(String)) }
              attr_accessor :issuing_country

              sig do
                params(
                  id_number: String,
                  id_type:
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
                  issuing_country: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The ID number of identification document.
                id_number:,
                # The type of ID number.
                id_type:,
                # The ISO 3166-1 alpha-2 country code of the country that issued the
                # identification
                issuing_country: nil
              )
              end

              sig do
                override.returns(
                  {
                    id_number: String,
                    id_type:
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
                    issuing_country: T.nilable(String)
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
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AR_CUIL =
                  T.let(
                    :ar_cuil,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                AR_CUIT =
                  T.let(
                    :ar_cuit,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                BR_CNPJ =
                  T.let(
                    :br_cnpj,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                BR_CPF =
                  T.let(
                    :br_cpf,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CL_RUN =
                  T.let(
                    :cl_run,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CL_RUT =
                  T.let(
                    :cl_rut,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CO_CEDULAS =
                  T.let(
                    :co_cedulas,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CO_NIT =
                  T.let(
                    :co_nit,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                HN_ID =
                  T.let(
                    :hn_id,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                HN_RTN =
                  T.let(
                    :hn_rtn,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                IN_LEI =
                  T.let(
                    :in_lei,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_BRN =
                  T.let(
                    :kr_brn,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_CRN =
                  T.let(
                    :kr_crn,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_RRN =
                  T.let(
                    :kr_rrn,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                PASSPORT =
                  T.let(
                    :passport,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                SA_TIN =
                  T.let(
                    :sa_tin,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                SA_VAT =
                  T.let(
                    :sa_vat,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_EIN =
                  T.let(
                    :us_ein,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_ITIN =
                  T.let(
                    :us_itin,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_SSN =
                  T.let(
                    :us_ssn,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                VN_TIN =
                  T.let(
                    :vn_tin,
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
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
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
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
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CORPORATION =
                T.let(
                  :corporation,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              LLC =
                T.let(
                  :llc,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              NON_PROFIT =
                T.let(
                  :non_profit,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              PARTNERSHIP =
                T.let(
                  :partnership,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              SOLE_PROPRIETORSHIP =
                T.let(
                  :sole_proprietorship,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              TRUST =
                T.let(
                  :trust,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber,
                    ModernTreasury::Internal::AnyHash
                  )
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
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LOW =
                T.let(
                  :low,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )
              MEDIUM =
                T.let(
                  :medium,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )
              HIGH =
                T.let(
                  :high,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
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
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber,
                ModernTreasury::Internal::AnyHash
              )
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
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW =
            T.let(
              :low,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
