# typed: strong

module ModernTreasury
  module Models
    class LegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # A list of addresses for the entity.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address])) }
      attr_reader :addresses

      sig do
        params(
          addresses: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::Address, ModernTreasury::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :addresses

      sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
      attr_reader :bank_settings

      sig do
        params(
          bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash))
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
          compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash))
        )
          .void
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
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Identification])) }
      attr_reader :identifications

      sig do
        params(
          identifications: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::Identification, ModernTreasury::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :identifications

      # A list of industry classifications for the legal entity.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityIndustryClassification])) }
      attr_reader :industry_classifications

      sig do
        params(
          industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :industry_classifications

      # An individual's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # The business's legal structure.
      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::OrSymbol)) }
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

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber])) }
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber, ModernTreasury::Internal::AnyHash)]
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
      sig { returns(T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::OrSymbol)) }
      attr_accessor :risk_rating

      # An individual's suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
      attr_reader :wealth_and_employment_details

      sig do
        params(
          wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash))
        )
          .void
      end
      attr_writer :wealth_and_employment_details

      # The entity's primary website URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          addresses: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::Address, ModernTreasury::Internal::AnyHash)],
          bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash)),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash)),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::Identification, ModernTreasury::Internal::AnyHash)],
          industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)],
          last_name: T.nilable(String),
          legal_structure: T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::OrSymbol),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers: T::Array[T.any(ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber, ModernTreasury::Internal::AnyHash)],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating: T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::OrSymbol),
          suffix: T.nilable(String),
          wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash)),
          website: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        addresses: nil,
        bank_settings: nil,
        business_name: nil,
        citizenship_country: nil,
        compliance_details: nil,
        date_formed: nil,
        date_of_birth: nil,
        doing_business_as_names: nil,
        email: nil,
        first_name: nil,
        identifications: nil,
        industry_classifications: nil,
        last_name: nil,
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
        website: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              addresses: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address],
              bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              compliance_details: T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail),
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              first_name: T.nilable(String),
              identifications: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Identification],
              industry_classifications: T::Array[ModernTreasury::Models::LegalEntityIndustryClassification],
              last_name: T.nilable(String),
              legal_structure: T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::OrSymbol),
              metadata: T::Hash[Symbol, String],
              middle_name: T.nilable(String),
              phone_numbers: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber],
              politically_exposed_person: T.nilable(T::Boolean),
              preferred_name: T.nilable(String),
              prefix: T.nilable(String),
              risk_rating: T.nilable(ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::OrSymbol),
              suffix: T.nilable(String),
              wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
              website: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      class Address < ModernTreasury::Internal::Type::BaseModel
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
            T.nilable(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::OrSymbol])
          )
        end
        attr_reader :address_types

        sig do
          params(
            address_types: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::OrSymbol]
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
            address_types: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::OrSymbol],
            line2: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil); end

        sig do
          override
            .returns(
              {
                country: T.nilable(String),
                line1: T.nilable(String),
                locality: T.nilable(String),
                postal_code: T.nilable(String),
                region: T.nilable(String),
                address_types: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::OrSymbol],
                line2: T.nilable(String)
              }
            )
        end
        def to_hash; end

        module AddressType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol) }

          BUSINESS =
            T.let(:business, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol)
          MAILING =
            T.let(:mailing, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol)
          OTHER =
            T.let(:other, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol)
          PO_BOX =
            T.let(:po_box, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol)
          RESIDENTIAL =
            T.let(:residential, ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address::AddressType::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class Identification < ModernTreasury::Internal::Type::BaseModel
        # The ID number of identification document.
        sig { returns(String) }
        attr_accessor :id_number

        # The type of ID number.
        sig { returns(ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::OrSymbol) }
        attr_accessor :id_type

        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        sig { returns(T.nilable(String)) }
        attr_accessor :issuing_country

        sig do
          params(
            id_number: String,
            id_type: ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::OrSymbol,
            issuing_country: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(id_number:, id_type:, issuing_country: nil); end

        sig do
          override
            .returns(
              {
                id_number: String,
                id_type: ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::OrSymbol,
                issuing_country: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # The type of ID number.
        module IDType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol
              )
            end

          AR_CUIL =
            T.let(:ar_cuil, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          AR_CUIT =
            T.let(:ar_cuit, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          BR_CNPJ =
            T.let(:br_cnpj, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          BR_CPF =
            T.let(:br_cpf, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          CL_RUN =
            T.let(:cl_run, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          CL_RUT =
            T.let(:cl_rut, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          CO_CEDULAS =
            T.let(:co_cedulas, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          CO_NIT =
            T.let(:co_nit, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          HN_ID =
            T.let(:hn_id, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          HN_RTN =
            T.let(:hn_rtn, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          IN_LEI =
            T.let(:in_lei, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          KR_BRN =
            T.let(:kr_brn, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          KR_CRN =
            T.let(:kr_crn, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          KR_RRN =
            T.let(:kr_rrn, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          PASSPORT =
            T.let(:passport, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          SA_TIN =
            T.let(:sa_tin, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          SA_VAT =
            T.let(:sa_vat, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          US_EIN =
            T.let(:us_ein, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          US_ITIN =
            T.let(:us_itin, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          US_SSN =
            T.let(:us_ssn, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)
          VN_TIN =
            T.let(:vn_tin, ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Identification::IDType::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # The business's legal structure.
      module LegalStructure
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol) }

        CORPORATION =
          T.let(:corporation, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)
        LLC = T.let(:llc, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)
        NON_PROFIT =
          T.let(:non_profit, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)
        PARTNERSHIP =
          T.let(:partnership, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)
        SOLE_PROPRIETORSHIP =
          T.let(:sole_proprietorship, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)
        TRUST = T.let(:trust, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure::TaggedSymbol]) }
        def self.values; end
      end

      class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # A list of phone numbers in E.164 format.
        sig { params(phone_number: String).returns(T.attached_class) }
        def self.new(phone_number: nil); end

        sig { override.returns({phone_number: String}) }
        def to_hash; end
      end

      # The risk rating of the legal entity. One of low, medium, high.
      module RiskRating
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::TaggedSymbol) }

        LOW = T.let(:low, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::TaggedSymbol)
        MEDIUM = T.let(:medium, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::TaggedSymbol)
        HIGH = T.let(:high, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LegalEntityUpdateParams::RiskRating::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
