# typed: strong

module ModernTreasury
  module Models
    class LegalEntityCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The type of legal entity.
      sig do
        returns(ModernTreasury::LegalEntityCreate::LegalEntityType::OrSymbol)
      end
      attr_accessor :legal_entity_type

      # A list of addresses for the entity.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::LegalEntityAddressCreateRequest])
        )
      end
      attr_reader :addresses

      sig do
        params(
          addresses:
            T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash]
        ).void
      end
      attr_writer :addresses

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

      # Monthly expected transaction volume in entity's local currency.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expected_activity_volume

      # An individual's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # A list of identifications for the legal entity.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::IdentificationCreateRequest])
        )
      end
      attr_reader :identifications

      sig do
        params(
          identifications:
            T::Array[ModernTreasury::IdentificationCreateRequest::OrHash]
        ).void
      end
      attr_writer :identifications

      # A list of industry classifications for the legal entity.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::LegalEntityIndustryClassification])
        )
      end
      attr_reader :industry_classifications

      sig do
        params(
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash]
        ).void
      end
      attr_writer :industry_classifications

      # A description of the intended use of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :intended_use

      # An individual's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # The legal entity associations and its child legal entities.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::LegalEntityAssociationInlineCreate]
          )
        )
      end
      attr_accessor :legal_entity_associations

      # The business's legal structure.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntityCreate::LegalStructure::OrSymbol)
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

      # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
      # codes).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :operating_jurisdictions

      sig { params(operating_jurisdictions: T::Array[String]).void }
      attr_writer :operating_jurisdictions

      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::LegalEntityCreate::PhoneNumber])
        )
      end
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[ModernTreasury::LegalEntityCreate::PhoneNumber::OrHash]
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

      # A list of primary social media URLs for the business.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :primary_social_media_sites

      sig { params(primary_social_media_sites: T::Array[String]).void }
      attr_writer :primary_social_media_sites

      # The risk rating of the legal entity. One of low, medium, high.
      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntityCreate::RiskRating::OrSymbol)
        )
      end
      attr_accessor :risk_rating

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

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
          legal_entity_type:
            ModernTreasury::LegalEntityCreate::LegalEntityType::OrSymbol,
          addresses:
            T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
          bank_settings:
            T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
          business_description: T.nilable(String),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
          country_of_incorporation: T.nilable(String),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          expected_activity_volume: T.nilable(Integer),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          intended_use: T.nilable(String),
          last_name: T.nilable(String),
          legal_entity_associations:
            T.nilable(
              T::Array[
                ModernTreasury::LegalEntityAssociationInlineCreate::OrHash
              ]
            ),
          legal_structure:
            T.nilable(
              ModernTreasury::LegalEntityCreate::LegalStructure::OrSymbol
            ),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          operating_jurisdictions: T::Array[String],
          phone_numbers:
            T::Array[ModernTreasury::LegalEntityCreate::PhoneNumber::OrHash],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          primary_social_media_sites: T::Array[String],
          risk_rating:
            T.nilable(ModernTreasury::LegalEntityCreate::RiskRating::OrSymbol),
          suffix: T.nilable(String),
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
            ),
          website: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of legal entity.
        legal_entity_type:,
        # A list of addresses for the entity.
        addresses: nil,
        bank_settings: nil,
        # A description of the business.
        business_description: nil,
        # The business's legal business name.
        business_name: nil,
        # The country of citizenship for an individual.
        citizenship_country: nil,
        compliance_details: nil,
        # The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
        # alpha-3 formats.
        country_of_incorporation: nil,
        # A business's formation date (YYYY-MM-DD).
        date_formed: nil,
        # An individual's date of birth (YYYY-MM-DD).
        date_of_birth: nil,
        doing_business_as_names: nil,
        # The entity's primary email.
        email: nil,
        # Monthly expected transaction volume in entity's local currency.
        expected_activity_volume: nil,
        # An individual's first name.
        first_name: nil,
        # A list of identifications for the legal entity.
        identifications: nil,
        # A list of industry classifications for the legal entity.
        industry_classifications: nil,
        # A description of the intended use of the legal entity.
        intended_use: nil,
        # An individual's last name.
        last_name: nil,
        # The legal entity associations and its child legal entities.
        legal_entity_associations: nil,
        # The business's legal structure.
        legal_structure: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # An individual's middle name.
        middle_name: nil,
        # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
        # codes).
        operating_jurisdictions: nil,
        phone_numbers: nil,
        # Whether the individual is a politically exposed person.
        politically_exposed_person: nil,
        # An individual's preferred name.
        preferred_name: nil,
        # An individual's prefix.
        prefix: nil,
        # A list of primary social media URLs for the business.
        primary_social_media_sites: nil,
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
            legal_entity_type:
              ModernTreasury::LegalEntityCreate::LegalEntityType::OrSymbol,
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest],
            bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
            business_description: T.nilable(String),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details:
              T.nilable(ModernTreasury::LegalEntityComplianceDetail),
            country_of_incorporation: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            expected_activity_volume: T.nilable(Integer),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::IdentificationCreateRequest],
            industry_classifications:
              T::Array[ModernTreasury::LegalEntityIndustryClassification],
            intended_use: T.nilable(String),
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(
                T::Array[ModernTreasury::LegalEntityAssociationInlineCreate]
              ),
            legal_structure:
              T.nilable(
                ModernTreasury::LegalEntityCreate::LegalStructure::OrSymbol
              ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            operating_jurisdictions: T::Array[String],
            phone_numbers:
              T::Array[ModernTreasury::LegalEntityCreate::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            primary_social_media_sites: T::Array[String],
            risk_rating:
              T.nilable(
                ModernTreasury::LegalEntityCreate::RiskRating::OrSymbol
              ),
            suffix: T.nilable(String),
            wealth_and_employment_details:
              T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
            website: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of legal entity.
      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LegalEntityCreate::LegalEntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::LegalEntityCreate::LegalEntityType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::LegalEntityCreate::LegalEntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityCreate::LegalEntityType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::LegalEntityCreate::LegalStructure)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :sole_proprietorship,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )
        TRUST =
          T.let(
            :trust,
            ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityCreate::LegalStructure::TaggedSymbol
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
              ModernTreasury::LegalEntityCreate::PhoneNumber,
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
            T.all(Symbol, ModernTreasury::LegalEntityCreate::RiskRating)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            ModernTreasury::LegalEntityCreate::RiskRating::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            ModernTreasury::LegalEntityCreate::RiskRating::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            ModernTreasury::LegalEntityCreate::RiskRating::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityCreate::RiskRating::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
