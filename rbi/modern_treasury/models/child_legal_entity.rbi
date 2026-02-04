# typed: strong

module ModernTreasury
  module Models
    class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ChildLegalEntity,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # A list of addresses for the entity.
      sig { returns(T::Array[ModernTreasury::ChildLegalEntity::Address]) }
      attr_accessor :addresses

      sig { returns(T.nilable(ModernTreasury::LegalEntityBankSettings)) }
      attr_reader :bank_settings

      sig do
        params(
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash)
        ).void
      end
      attr_writer :bank_settings

      # A description of the business.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_description

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

      # The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      # alpha-3 formats.
      sig { returns(T.nilable(String)) }
      attr_accessor :country_of_incorporation

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

      sig { returns(T::Array[ModernTreasury::Document]) }
      attr_accessor :documents

      sig { returns(T::Array[String]) }
      attr_accessor :doing_business_as_names

      # The entity's primary email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Monthly expected transaction volume in USD.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expected_activity_volume

      # An individual's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # A list of identifications for the legal entity.
      sig do
        returns(T::Array[ModernTreasury::ChildLegalEntity::Identification])
      end
      attr_accessor :identifications

      # A list of industry classifications for the legal entity.
      sig do
        returns(T::Array[ModernTreasury::LegalEntityIndustryClassification])
      end
      attr_accessor :industry_classifications

      # A description of the intended use of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :intended_use

      # An individual's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # The legal entity associations and its child legal entities.
      sig do
        returns(T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]))
      end
      attr_accessor :legal_entity_associations

      # The type of legal entity.
      sig do
        returns(ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol)
      end
      attr_accessor :legal_entity_type

      # The business's legal structure.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        )
      end
      attr_accessor :legal_structure

      # ISO 10383 market identifier code.
      sig { returns(T.nilable(String)) }
      attr_accessor :listed_exchange

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

      # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
      # codes).
      sig { returns(T::Array[String]) }
      attr_accessor :operating_jurisdictions

      sig { returns(T::Array[ModernTreasury::ChildLegalEntity::PhoneNumber]) }
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

      # A list of primary social media URLs for the business.
      sig { returns(T::Array[String]) }
      attr_accessor :primary_social_media_sites

      # Array of regulatory bodies overseeing this institution.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::ChildLegalEntity::Regulator])
        )
      end
      attr_accessor :regulators

      # The risk rating of the legal entity. One of low, medium, high.
      sig do
        returns(
          T.nilable(ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol)
        )
      end
      attr_accessor :risk_rating

      # The activation status of the legal entity. One of pending, active, suspended, or
      # closed.
      sig do
        returns(
          T.nilable(ModernTreasury::ChildLegalEntity::Status::TaggedSymbol)
        )
      end
      attr_accessor :status

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      # Information describing a third-party verification run by an external vendor.
      sig do
        returns(
          T.nilable(ModernTreasury::ChildLegalEntity::ThirdPartyVerification)
        )
      end
      attr_reader :third_party_verification

      sig do
        params(
          third_party_verification:
            T.nilable(
              ModernTreasury::ChildLegalEntity::ThirdPartyVerification::OrHash
            )
        ).void
      end
      attr_writer :third_party_verification

      # Stock ticker symbol for publicly traded companies.
      sig { returns(T.nilable(String)) }
      attr_accessor :ticker_symbol

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        returns(T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail))
      end
      attr_reader :wealth_and_employment_details

      sig do
        params(
          wealth_and_employment_details:
            T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash)
        ).void
      end
      attr_writer :wealth_and_employment_details

      # The entity's primary website URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          id: String,
          addresses:
            T::Array[ModernTreasury::ChildLegalEntity::Address::OrHash],
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
          business_description: T.nilable(String),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
          country_of_incorporation: T.nilable(String),
          created_at: Time,
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          discarded_at: T.nilable(Time),
          documents: T::Array[ModernTreasury::Document::OrHash],
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          expected_activity_volume: T.nilable(Integer),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::ChildLegalEntity::Identification::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          intended_use: T.nilable(String),
          last_name: T.nilable(String),
          legal_entity_associations:
            T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]),
          legal_entity_type:
            ModernTreasury::ChildLegalEntity::LegalEntityType::OrSymbol,
          legal_structure:
            T.nilable(
              ModernTreasury::ChildLegalEntity::LegalStructure::OrSymbol
            ),
          listed_exchange: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          object: String,
          operating_jurisdictions: T::Array[String],
          phone_numbers:
            T::Array[ModernTreasury::ChildLegalEntity::PhoneNumber::OrHash],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          primary_social_media_sites: T::Array[String],
          regulators:
            T.nilable(
              T::Array[ModernTreasury::ChildLegalEntity::Regulator::OrHash]
            ),
          risk_rating:
            T.nilable(ModernTreasury::ChildLegalEntity::RiskRating::OrSymbol),
          status: T.nilable(ModernTreasury::ChildLegalEntity::Status::OrSymbol),
          suffix: T.nilable(String),
          third_party_verification:
            T.nilable(
              ModernTreasury::ChildLegalEntity::ThirdPartyVerification::OrHash
            ),
          ticker_symbol: T.nilable(String),
          updated_at: Time,
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
            ),
          website: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A list of addresses for the entity.
        addresses:,
        bank_settings:,
        # A description of the business.
        business_description:,
        # The business's legal business name.
        business_name:,
        # The country of citizenship for an individual.
        citizenship_country:,
        compliance_details:,
        # The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
        # alpha-3 formats.
        country_of_incorporation:,
        created_at:,
        # A business's formation date (YYYY-MM-DD).
        date_formed:,
        # An individual's date of birth (YYYY-MM-DD).
        date_of_birth:,
        discarded_at:,
        documents:,
        doing_business_as_names:,
        # The entity's primary email.
        email:,
        # Monthly expected transaction volume in USD.
        expected_activity_volume:,
        # An individual's first name.
        first_name:,
        # A list of identifications for the legal entity.
        identifications:,
        # A list of industry classifications for the legal entity.
        industry_classifications:,
        # A description of the intended use of the legal entity.
        intended_use:,
        # An individual's last name.
        last_name:,
        # The legal entity associations and its child legal entities.
        legal_entity_associations:,
        # The type of legal entity.
        legal_entity_type:,
        # The business's legal structure.
        legal_structure:,
        # ISO 10383 market identifier code.
        listed_exchange:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # An individual's middle name.
        middle_name:,
        object:,
        # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
        # codes).
        operating_jurisdictions:,
        phone_numbers:,
        # Whether the individual is a politically exposed person.
        politically_exposed_person:,
        # An individual's preferred name.
        preferred_name:,
        # An individual's prefix.
        prefix:,
        # A list of primary social media URLs for the business.
        primary_social_media_sites:,
        # Array of regulatory bodies overseeing this institution.
        regulators:,
        # The risk rating of the legal entity. One of low, medium, high.
        risk_rating:,
        # The activation status of the legal entity. One of pending, active, suspended, or
        # closed.
        status:,
        # An individual's suffix.
        suffix:,
        # Information describing a third-party verification run by an external vendor.
        third_party_verification:,
        # Stock ticker symbol for publicly traded companies.
        ticker_symbol:,
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
            addresses: T::Array[ModernTreasury::ChildLegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
            business_description: T.nilable(String),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail),
            country_of_incorporation: T.nilable(String),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            documents: T::Array[ModernTreasury::Document],
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            expected_activity_volume: T.nilable(Integer),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::ChildLegalEntity::Identification],
            industry_classifications:
              T::Array[ModernTreasury::LegalEntityIndustryClassification],
            intended_use: T.nilable(String),
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]),
            legal_entity_type:
              ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
              ),
            listed_exchange: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            operating_jurisdictions: T::Array[String],
            phone_numbers:
              T::Array[ModernTreasury::ChildLegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            primary_social_media_sites: T::Array[String],
            regulators:
              T.nilable(T::Array[ModernTreasury::ChildLegalEntity::Regulator]),
            risk_rating:
              T.nilable(
                ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol
              ),
            status:
              T.nilable(ModernTreasury::ChildLegalEntity::Status::TaggedSymbol),
            suffix: T.nilable(String),
            third_party_verification:
              T.nilable(
                ModernTreasury::ChildLegalEntity::ThirdPartyVerification
              ),
            ticker_symbol: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details:
              T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
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
              ModernTreasury::ChildLegalEntity::Address,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The types of this address.
        sig do
          returns(
            T::Array[
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
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
                ModernTreasury::ChildLegalEntity::Address::AddressType::OrSymbol
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
                  ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
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
                ModernTreasury::ChildLegalEntity::Address::AddressType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
            )
          MAILING =
            T.let(
              :mailing,
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
            )
          PO_BOX =
            T.let(
              :po_box,
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
            )
          RESIDENTIAL =
            T.let(
              :residential,
              ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ChildLegalEntity::Address::AddressType::TaggedSymbol
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
              ModernTreasury::ChildLegalEntity::Identification,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T::Array[ModernTreasury::Document]) }
        attr_accessor :documents

        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        sig { returns(T.nilable(Date)) }
        attr_accessor :expiration_date

        # The type of ID number.
        sig do
          returns(
            ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
          )
        end
        attr_accessor :id_type

        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_country

        # The region in which the identifcation was issued.
        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_region

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
            documents: T::Array[ModernTreasury::Document::OrHash],
            expiration_date: T.nilable(Date),
            id_type:
              ModernTreasury::ChildLegalEntity::Identification::IDType::OrSymbol,
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          discarded_at:,
          documents:,
          # The date when the Identification is no longer considered valid by the issuing
          # authority.
          expiration_date:,
          # The type of ID number.
          id_type:,
          # The ISO 3166-1 alpha-2 country code of the country that issued the
          # identification
          issuing_country:,
          # The region in which the identifcation was issued.
          issuing_region:,
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
              documents: T::Array[ModernTreasury::Document],
              expiration_date: T.nilable(Date),
              id_type:
                ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol,
              issuing_country: T.nilable(String),
              issuing_region: T.nilable(String),
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
                ModernTreasury::ChildLegalEntity::Identification::IDType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR_CUIL =
            T.let(
              :ar_cuil,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUN =
            T.let(
              :cl_run,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUT =
            T.let(
              :cl_rut,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_CEDULAS =
            T.let(
              :co_cedulas,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          DRIVERS_LICENSE =
            T.let(
              :drivers_license,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_ID =
            T.let(
              :hn_id,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_RTN =
            T.let(
              :hn_rtn,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          IN_LEI =
            T.let(
              :in_lei,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_CRN =
            T.let(
              :kr_crn,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_RRN =
            T.let(
              :kr_rrn,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          PASSPORT =
            T.let(
              :passport,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_TIN =
            T.let(
              :sa_tin,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          US_ITIN =
            T.let(
              :us_itin,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          US_SSN =
            T.let(
              :us_ssn,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ChildLegalEntity::Identification::IDType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::ChildLegalEntity::LegalEntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol
          )
        JOINT =
          T.let(
            :joint,
            ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ChildLegalEntity::LegalEntityType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::ChildLegalEntity::LegalStructure)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :sole_proprietorship,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )
        TRUST =
          T.let(
            :trust,
            ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ChildLegalEntity::LegalStructure::TaggedSymbol
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
              ModernTreasury::ChildLegalEntity::PhoneNumber,
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

      class Regulator < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ChildLegalEntity::Regulator,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
        # (e.g., "US", "CA", "GB").
        sig { returns(String) }
        attr_accessor :jurisdiction

        # Full name of the regulatory body.
        sig { returns(String) }
        attr_accessor :name

        # Registration or identification number with the regulator.
        sig { returns(String) }
        attr_accessor :registration_number

        sig do
          params(
            jurisdiction: String,
            name: String,
            registration_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
          # (e.g., "US", "CA", "GB").
          jurisdiction:,
          # Full name of the regulatory body.
          name:,
          # Registration or identification number with the regulator.
          registration_number:
        )
        end

        sig do
          override.returns(
            { jurisdiction: String, name: String, registration_number: String }
          )
        end
        def to_hash
        end
      end

      # The risk rating of the legal entity. One of low, medium, high.
      module RiskRating
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ChildLegalEntity::RiskRating)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ChildLegalEntity::RiskRating::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The activation status of the legal entity. One of pending, active, suspended, or
      # closed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ChildLegalEntity::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, ModernTreasury::ChildLegalEntity::Status::TaggedSymbol)
        CLOSED =
          T.let(:closed, ModernTreasury::ChildLegalEntity::Status::TaggedSymbol)
        PENDING =
          T.let(
            :pending,
            ModernTreasury::ChildLegalEntity::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            ModernTreasury::ChildLegalEntity::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ChildLegalEntity::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ChildLegalEntity::ThirdPartyVerification,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The vendor that performed the verification, e.g. `persona`.
        sig do
          returns(
            ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol
          )
        end
        attr_accessor :vendor

        # The identification of the third party verification in `vendor`'s system.
        sig { returns(String) }
        attr_accessor :vendor_verification_id

        # Information describing a third-party verification run by an external vendor.
        sig do
          params(
            vendor:
              ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor::OrSymbol,
            vendor_verification_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The vendor that performed the verification, e.g. `persona`.
          vendor:,
          # The identification of the third party verification in `vendor`'s system.
          vendor_verification_id:
        )
        end

        sig do
          override.returns(
            {
              vendor:
                ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol,
              vendor_verification_id: String
            }
          )
        end
        def to_hash
        end

        # The vendor that performed the verification, e.g. `persona`.
        module Vendor
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERSONA =
            T.let(
              :persona,
              ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ChildLegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol
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
