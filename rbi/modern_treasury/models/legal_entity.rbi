# typed: strong

module ModernTreasury
  module Models
    class LegalEntity < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::LegalEntity, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A list of addresses for the entity.
      sig { returns(T::Array[ModernTreasury::LegalEntity::Address]) }
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

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :compliance_details

      # The country where the business is incorporated, as an ISO 3166-1 alpha-2 country
      # code (e.g. US).
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

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # An individual's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # A list of identifications for the legal entity.
      sig { returns(T::Array[ModernTreasury::LegalEntity::Identification]) }
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

      # The type of legal entity.
      sig do
        returns(ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol)
      end
      attr_accessor :legal_entity_type

      # The business's legal structure.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol)
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

      # A list of countries where the business operates, as ISO 3166-1 alpha-2 country
      # codes (e.g. ["US", "CA"]).
      sig { returns(T::Array[String]) }
      attr_accessor :operating_jurisdictions

      sig { returns(T::Array[ModernTreasury::LegalEntity::PhoneNumber]) }
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
        returns(T.nilable(T::Array[ModernTreasury::LegalEntity::Regulator]))
      end
      attr_accessor :regulators

      # The risk rating of the legal entity. One of low, medium, high.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        )
      end
      attr_accessor :risk_rating

      # The UUID of the parent legal entity in the service provider tree.
      sig { returns(T.nilable(String)) }
      attr_accessor :service_provider_legal_entity_id

      # The activation status of the legal entity. One of pending, active, suspended, or
      # denied.
      sig do
        returns(T.nilable(ModernTreasury::LegalEntity::Status::TaggedSymbol))
      end
      attr_accessor :status

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      # Acceptance of terms of use by the legal entity.
      sig { returns(T.nilable(ModernTreasury::LegalEntity::TermsOfUse)) }
      attr_reader :terms_of_use

      sig do
        params(
          terms_of_use:
            T.nilable(ModernTreasury::LegalEntity::TermsOfUse::OrHash)
        ).void
      end
      attr_writer :terms_of_use

      # Deprecated. Use `third_party_verifications` instead.
      sig { returns(T.nilable(ModernTreasury::ThirdPartyVerification)) }
      attr_reader :third_party_verification

      sig do
        params(
          third_party_verification:
            T.nilable(ModernTreasury::ThirdPartyVerification::OrHash)
        ).void
      end
      attr_writer :third_party_verification

      # A list of third-party verifications run by external vendors.
      sig { returns(T::Array[ModernTreasury::ThirdPartyVerification]) }
      attr_accessor :third_party_verifications

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

      # The legal entity associations and its child legal entities.
      sig do
        returns(T.nilable(T::Array[ModernTreasury::LegalEntityAssociation]))
      end
      attr_accessor :legal_entity_associations

      sig do
        params(
          id: String,
          addresses: T::Array[ModernTreasury::LegalEntity::Address::OrHash],
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
          business_description: T.nilable(String),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details: T.nilable(T.anything),
          country_of_incorporation: T.nilable(String),
          created_at: Time,
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          discarded_at: T.nilable(Time),
          documents: T::Array[ModernTreasury::Document::OrHash],
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          expected_activity_volume: T.nilable(Integer),
          external_id: T.nilable(String),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::LegalEntity::Identification::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          intended_use: T.nilable(String),
          last_name: T.nilable(String),
          legal_entity_type:
            ModernTreasury::LegalEntity::LegalEntityType::OrSymbol,
          legal_structure:
            T.nilable(ModernTreasury::LegalEntity::LegalStructure::OrSymbol),
          listed_exchange: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          object: String,
          operating_jurisdictions: T::Array[String],
          phone_numbers:
            T::Array[ModernTreasury::LegalEntity::PhoneNumber::OrHash],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          primary_social_media_sites: T::Array[String],
          regulators:
            T.nilable(T::Array[ModernTreasury::LegalEntity::Regulator::OrHash]),
          risk_rating:
            T.nilable(ModernTreasury::LegalEntity::RiskRating::OrSymbol),
          service_provider_legal_entity_id: T.nilable(String),
          status: T.nilable(ModernTreasury::LegalEntity::Status::OrSymbol),
          suffix: T.nilable(String),
          terms_of_use:
            T.nilable(ModernTreasury::LegalEntity::TermsOfUse::OrHash),
          third_party_verification:
            T.nilable(ModernTreasury::ThirdPartyVerification::OrHash),
          third_party_verifications:
            T::Array[ModernTreasury::ThirdPartyVerification::OrHash],
          ticker_symbol: T.nilable(String),
          updated_at: Time,
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
            ),
          website: T.nilable(String),
          legal_entity_associations:
            T.nilable(T::Array[ModernTreasury::LegalEntityAssociation::OrHash])
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
        # The country where the business is incorporated, as an ISO 3166-1 alpha-2 country
        # code (e.g. US).
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
        # An optional user-defined 180 character unique identifier.
        external_id:,
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
        # A list of countries where the business operates, as ISO 3166-1 alpha-2 country
        # codes (e.g. ["US", "CA"]).
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
        # The UUID of the parent legal entity in the service provider tree.
        service_provider_legal_entity_id:,
        # The activation status of the legal entity. One of pending, active, suspended, or
        # denied.
        status:,
        # An individual's suffix.
        suffix:,
        # Acceptance of terms of use by the legal entity.
        terms_of_use:,
        # Deprecated. Use `third_party_verifications` instead.
        third_party_verification:,
        # A list of third-party verifications run by external vendors.
        third_party_verifications:,
        # Stock ticker symbol for publicly traded companies.
        ticker_symbol:,
        updated_at:,
        wealth_and_employment_details:,
        # The entity's primary website URL.
        website:,
        # The legal entity associations and its child legal entities.
        legal_entity_associations: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            addresses: T::Array[ModernTreasury::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
            business_description: T.nilable(String),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details: T.nilable(T.anything),
            country_of_incorporation: T.nilable(String),
            created_at: Time,
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            discarded_at: T.nilable(Time),
            documents: T::Array[ModernTreasury::Document],
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            expected_activity_volume: T.nilable(Integer),
            external_id: T.nilable(String),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::LegalEntity::Identification],
            industry_classifications:
              T::Array[ModernTreasury::LegalEntityIndustryClassification],
            intended_use: T.nilable(String),
            last_name: T.nilable(String),
            legal_entity_type:
              ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
              ),
            listed_exchange: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            object: String,
            operating_jurisdictions: T::Array[String],
            phone_numbers: T::Array[ModernTreasury::LegalEntity::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            primary_social_media_sites: T::Array[String],
            regulators:
              T.nilable(T::Array[ModernTreasury::LegalEntity::Regulator]),
            risk_rating:
              T.nilable(ModernTreasury::LegalEntity::RiskRating::TaggedSymbol),
            service_provider_legal_entity_id: T.nilable(String),
            status:
              T.nilable(ModernTreasury::LegalEntity::Status::TaggedSymbol),
            suffix: T.nilable(String),
            terms_of_use: T.nilable(ModernTreasury::LegalEntity::TermsOfUse),
            third_party_verification:
              T.nilable(ModernTreasury::ThirdPartyVerification),
            third_party_verifications:
              T::Array[ModernTreasury::ThirdPartyVerification],
            ticker_symbol: T.nilable(String),
            updated_at: Time,
            wealth_and_employment_details:
              T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
            website: T.nilable(String),
            legal_entity_associations:
              T.nilable(T::Array[ModernTreasury::LegalEntityAssociation])
          }
        )
      end
      def to_hash
      end

      class Address < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::Address,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The types of this address.
        sig do
          returns(
            T::Array[
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
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

        # Whether this address is the primary address for the legal entity. Optional; when
        # omitted it is inferred from the address types.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :primary

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
                ModernTreasury::LegalEntity::Address::AddressType::OrSymbol
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
            primary: T.nilable(T::Boolean),
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
          # Whether this address is the primary address for the legal entity. Optional; when
          # omitted it is inferred from the address types.
          primary:,
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
                  ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
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
              primary: T.nilable(T::Boolean),
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
              T.all(Symbol, ModernTreasury::LegalEntity::Address::AddressType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          BUSINESS_PHYSICAL =
            T.let(
              :business_physical,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          BUSINESS_REGISTERED =
            T.let(
              :business_registered,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          MAILING =
            T.let(
              :mailing,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          PO_BOX =
            T.let(
              :po_box,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )
          RESIDENTIAL =
            T.let(
              :residential,
              ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntity::Address::AddressType::TaggedSymbol
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
              ModernTreasury::LegalEntity::Identification,
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
            ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
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
              ModernTreasury::LegalEntity::Identification::IDType::OrSymbol,
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
                ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol,
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
              T.all(Symbol, ModernTreasury::LegalEntity::Identification::IDType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR_CUIL =
            T.let(
              :ar_cuil,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AT_ATIN =
            T.let(
              :at_atin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AT_VAT =
            T.let(
              :at_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AU_ABN =
            T.let(
              :au_abn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          AU_TFN =
            T.let(
              :au_tfn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BE_ENT =
            T.let(
              :be_ent,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BE_NRN =
            T.let(
              :be_nrn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CA_BN =
            T.let(
              :ca_bn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CA_SIN =
            T.let(
              :ca_sin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CH_AHV =
            T.let(
              :ch_ahv,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CH_UID =
            T.let(
              :ch_uid,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUN =
            T.let(
              :cl_run,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CL_RUT =
            T.let(
              :cl_rut,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_CEDULAS =
            T.let(
              :co_cedulas,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CY_TIN =
            T.let(
              :cy_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CZ_ICO =
            T.let(
              :cz_ico,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          CZ_RC =
            T.let(
              :cz_rc,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DE_STID =
            T.let(
              :de_stid,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DE_STNR =
            T.let(
              :de_stnr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DE_VAT =
            T.let(
              :de_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DK_CPR =
            T.let(
              :dk_cpr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DK_CVR =
            T.let(
              :dk_cvr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          DRIVERS_LICENSE =
            T.let(
              :drivers_license,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          EE_IK =
            T.let(
              :ee_ik,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          EE_RK =
            T.let(
              :ee_rk,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          ES_NIE =
            T.let(
              :es_nie,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          ES_NIF =
            T.let(
              :es_nif,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          FI_HETU =
            T.let(
              :fi_hetu,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          FI_YTJ =
            T.let(
              :fi_ytj,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          FR_NIF =
            T.let(
              :fr_nif,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          FR_SIREN =
            T.let(
              :fr_siren,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          FR_VAT =
            T.let(
              :fr_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          GB_NINO =
            T.let(
              :gb_nino,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          GB_UTR =
            T.let(
              :gb_utr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          GB_VAT =
            T.let(
              :gb_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          GENERIC_INTERNATIONAL =
            T.let(
              :generic_international,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          GR_VAT =
            T.let(
              :gr_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_ID =
            T.let(
              :hn_id,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HN_RTN =
            T.let(
              :hn_rtn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HR_OIB =
            T.let(
              :hr_oib,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HU_ADJ =
            T.let(
              :hu_adj,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          HU_ANUM =
            T.let(
              :hu_anum,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IE_PPS =
            T.let(
              :ie_pps,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IE_TRN =
            T.let(
              :ie_trn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IN_LEI =
            T.let(
              :in_lei,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IS_KNT =
            T.let(
              :is_knt,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IT_CF =
            T.let(
              :it_cf,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          IT_PIVA =
            T.let(
              :it_piva,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          JP_HB =
            T.let(
              :jp_hb,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          JP_MN =
            T.let(
              :jp_mn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_CRN =
            T.let(
              :kr_crn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          KR_RRN =
            T.let(
              :kr_rrn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LI_PEID =
            T.let(
              :li_peid,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LT_AK =
            T.let(
              :lt_ak,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LT_JAK =
            T.let(
              :lt_jak,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LU_MTC =
            T.let(
              :lu_mtc,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LU_VAT =
            T.let(
              :lu_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LV_PK =
            T.let(
              :lv_pk,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          LV_RN =
            T.let(
              :lv_rn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          MT_TIN =
            T.let(
              :mt_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          MT_VAT =
            T.let(
              :mt_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          MX_CURP =
            T.let(
              :mx_curp,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          MX_INE =
            T.let(
              :mx_ine,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          MX_RFC =
            T.let(
              :mx_rfc,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NATIONAL_ID =
            T.let(
              :national_id,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NL_BSN =
            T.let(
              :nl_bsn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NL_BTW =
            T.let(
              :nl_btw,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NL_RSIN =
            T.let(
              :nl_rsin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NO_FDN =
            T.let(
              :no_fdn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NO_MVA =
            T.let(
              :no_mva,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NO_ORGNR =
            T.let(
              :no_orgnr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          NZ_IRD =
            T.let(
              :nz_ird,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          PASSPORT =
            T.let(
              :passport,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          PL_NIP =
            T.let(
              :pl_nip,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          PL_PESEL =
            T.let(
              :pl_pesel,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          PT_NIF =
            T.let(
              :pt_nif,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          RO_CNP =
            T.let(
              :ro_cnp,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          RO_CUI =
            T.let(
              :ro_cui,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_TIN =
            T.let(
              :sa_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SE_ORGNR =
            T.let(
              :se_orgnr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SE_PNMR =
            T.let(
              :se_pnmr,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SG_FIN =
            T.let(
              :sg_fin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SG_NRIC =
            T.let(
              :sg_nric,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SG_UEN =
            T.let(
              :sg_uen,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SI_DAV =
            T.let(
              :si_dav,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SI_TIN =
            T.let(
              :si_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SK_ICO =
            T.let(
              :sk_ico,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          SK_RC =
            T.let(
              :sk_rc,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_ITIN =
            T.let(
              :us_itin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          US_SSN =
            T.let(
              :us_ssn,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          UY_RUT =
            T.let(
              :uy_rut,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LegalEntity::Identification::IDType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::LegalEntity::LegalEntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::LegalEntityType::TaggedSymbol]
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
            T.all(Symbol, ModernTreasury::LegalEntity::LegalStructure)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        LLC =
          T.let(:llc, ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol)
        NON_PROFIT =
          T.let(
            :non_profit,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :sole_proprietorship,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )
        TRUST =
          T.let(
            :trust,
            ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::LegalStructure::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::PhoneNumber,
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
              ModernTreasury::LegalEntity::Regulator,
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
            T.all(Symbol, ModernTreasury::LegalEntity::RiskRating)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW = T.let(:low, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        MEDIUM =
          T.let(:medium, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)
        HIGH =
          T.let(:high, ModernTreasury::LegalEntity::RiskRating::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::RiskRating::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The activation status of the legal entity. One of pending, active, suspended, or
      # denied.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::LegalEntity::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, ModernTreasury::LegalEntity::Status::TaggedSymbol)
        DENIED =
          T.let(:denied, ModernTreasury::LegalEntity::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::LegalEntity::Status::TaggedSymbol)
        SUSPENDED =
          T.let(:suspended, ModernTreasury::LegalEntity::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::LegalEntity::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class TermsOfUse < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LegalEntity::TermsOfUse,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The ISO 8601 timestamp indicating when the terms of use were accepted.
        sig { returns(T.nilable(Time)) }
        attr_reader :accepted_at

        sig { params(accepted_at: Time).void }
        attr_writer :accepted_at

        # The IP address from which the terms of use were accepted. Supports both IPv4 and
        # IPv6 formats.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Acceptance of terms of use by the legal entity.
        sig do
          params(accepted_at: Time, ip_address: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ISO 8601 timestamp indicating when the terms of use were accepted.
          accepted_at: nil,
          # The IP address from which the terms of use were accepted. Supports both IPv4 and
          # IPv6 formats.
          ip_address: nil
        )
        end

        sig { override.returns({ accepted_at: Time, ip_address: String }) }
        def to_hash
        end
      end
    end
  end
end
