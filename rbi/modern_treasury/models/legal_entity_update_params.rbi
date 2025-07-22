# typed: strong

module ModernTreasury
  module Models
    class LegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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

      sig do
        returns(
          T.nilable(ModernTreasury::LegalEntityUpdateParams::BankSettings)
        )
      end
      attr_reader :bank_settings

      sig do
        params(
          bank_settings:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::BankSettings::OrHash
            )
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

      # An individual's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # The business's legal structure.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::OrSymbol
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
            T::Array[ModernTreasury::LegalEntityUpdateParams::PhoneNumber]
          )
        )
      end
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[
              ModernTreasury::LegalEntityUpdateParams::PhoneNumber::OrHash
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
            ModernTreasury::LegalEntityUpdateParams::RiskRating::OrSymbol
          )
        )
      end
      attr_accessor :risk_rating

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      sig do
        returns(
          T.nilable(
            ModernTreasury::LegalEntityUpdateParams::WealthAndEmploymentDetails
          )
        )
      end
      attr_reader :wealth_and_employment_details

      sig do
        params(
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::WealthAndEmploymentDetails::OrHash
            )
        ).void
      end
      attr_writer :wealth_and_employment_details

      # The entity's primary website URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          addresses:
            T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
          bank_settings:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::BankSettings::OrHash
            ),
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
            T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          last_name: T.nilable(String),
          legal_structure:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::LegalStructure::OrSymbol
            ),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers:
            T::Array[
              ModernTreasury::LegalEntityUpdateParams::PhoneNumber::OrHash
            ],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::RiskRating::OrSymbol
            ),
          suffix: T.nilable(String),
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::WealthAndEmploymentDetails::OrHash
            ),
          website: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
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
        website: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest],
            bank_settings:
              T.nilable(ModernTreasury::LegalEntityUpdateParams::BankSettings),
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
              T::Array[ModernTreasury::IdentificationCreateRequest],
            industry_classifications:
              T::Array[ModernTreasury::LegalEntityIndustryClassification],
            last_name: T.nilable(String),
            legal_structure:
              T.nilable(
                ModernTreasury::LegalEntityUpdateParams::LegalStructure::OrSymbol
              ),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers:
              T::Array[ModernTreasury::LegalEntityUpdateParams::PhoneNumber],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating:
              T.nilable(
                ModernTreasury::LegalEntityUpdateParams::RiskRating::OrSymbol
              ),
            suffix: T.nilable(String),
            wealth_and_employment_details:
              T.nilable(
                ModernTreasury::LegalEntityUpdateParams::WealthAndEmploymentDetails
              ),
            website: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The business's legal structure.
      module LegalStructure
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityUpdateParams::LegalStructure
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :sole_proprietorship,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )
        TRUST =
          T.let(
            :trust,
            ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityUpdateParams::LegalStructure::TaggedSymbol
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
              ModernTreasury::LegalEntityUpdateParams::PhoneNumber,
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
            T.all(Symbol, ModernTreasury::LegalEntityUpdateParams::RiskRating)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            ModernTreasury::LegalEntityUpdateParams::RiskRating::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            ModernTreasury::LegalEntityUpdateParams::RiskRating::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            ModernTreasury::LegalEntityUpdateParams::RiskRating::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityUpdateParams::RiskRating::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
