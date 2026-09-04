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

      # Legal designation associated with the business.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LegalEntity::BusinessDesignation::TaggedSymbol
          )
        )
      end
      attr_accessor :business_designation

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
      sig { returns(T::Array[ModernTreasury::Identification]) }
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
          business_designation:
            T.nilable(
              ModernTreasury::LegalEntity::BusinessDesignation::OrSymbol
            ),
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
          identifications: T::Array[ModernTreasury::Identification::OrHash],
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
        # Legal designation associated with the business.
        business_designation:,
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
            business_designation:
              T.nilable(
                ModernTreasury::LegalEntity::BusinessDesignation::TaggedSymbol
              ),
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
            identifications: T::Array[ModernTreasury::Identification],
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

        # Locality or City. Use the full city name rather than an abbreviation (e.g. San
        # Francisco).
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

        # Region or State. This field is free-form; for US states, we recommend a
        # two-letter code (e.g. CA). Full state names are also accepted.
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
          # Locality or City. Use the full city name rather than an abbreviation (e.g. San
          # Francisco).
          locality:,
          object:,
          # The postal code of the address.
          postal_code:,
          # Whether this address is the primary address for the legal entity. Optional; when
          # omitted it is inferred from the address types.
          primary:,
          # Region or State. This field is free-form; for US states, we recommend a
          # two-letter code (e.g. CA). Full state names are also accepted.
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

      # Legal designation associated with the business.
      module BusinessDesignation
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntity::BusinessDesignation)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXEMPT_FINANCIAL_INSTITUTION =
          T.let(
            :exempt_financial_institution,
            ModernTreasury::LegalEntity::BusinessDesignation::TaggedSymbol
          )
        NON_OPERATING_BUSINESS =
          T.let(
            :non_operating_business,
            ModernTreasury::LegalEntity::BusinessDesignation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntity::BusinessDesignation::TaggedSymbol
            ]
          )
        end
        def self.values
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

        # A phone number in E.164 format. This format is strictly validated: include a
        # leading + and country code, followed by digits only (no spaces or dashes), e.g.
        # +12025551234.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # A list of phone numbers in E.164 format.
        sig { params(phone_number: String).returns(T.attached_class) }
        def self.new(
          # A phone number in E.164 format. This format is strictly validated: include a
          # leading + and country code, followed by digits only (no spaces or dashes), e.g.
          # +12025551234.
          phone_number: nil
        )
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
