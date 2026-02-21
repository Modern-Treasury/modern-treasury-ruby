# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntities#create
    class LegalEntity < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Address>]
      required :addresses, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Address] }

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::LegalEntityBankSettings, nil]
      required :bank_settings, -> { ModernTreasury::LegalEntityBankSettings }, nil?: true

      # @!attribute business_description
      #   A description of the business.
      #
      #   @return [String, nil]
      required :business_description, String, nil?: true

      # @!attribute business_name
      #   The business's legal business name.
      #
      #   @return [String, nil]
      required :business_name, String, nil?: true

      # @!attribute citizenship_country
      #   The country of citizenship for an individual.
      #
      #   @return [String, nil]
      required :citizenship_country, String, nil?: true

      # @!attribute compliance_details
      #   @deprecated
      #
      #   @return [Object, nil]
      required :compliance_details, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute country_of_incorporation
      #   The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #   alpha-3 formats.
      #
      #   @return [String, nil]
      required :country_of_incorporation, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date_formed
      #   A business's formation date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      required :date_formed, Date, nil?: true

      # @!attribute date_of_birth
      #   An individual's date of birth (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      required :date_of_birth, Date, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute documents
      #
      #   @return [Array<ModernTreasury::Models::Document>]
      required :documents, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document] }

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      required :doing_business_as_names, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute expected_activity_volume
      #   Monthly expected transaction volume in USD.
      #
      #   @return [Integer, nil]
      required :expected_activity_volume, Integer, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute first_name
      #   An individual's first name.
      #
      #   @return [String, nil]
      required :first_name, String, nil?: true

      # @!attribute identifications
      #   A list of identifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Identification>]
      required :identifications,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Identification] }

      # @!attribute industry_classifications
      #   A list of industry classifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityIndustryClassification>]
      required :industry_classifications,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification] }

      # @!attribute intended_use
      #   A description of the intended use of the legal entity.
      #
      #   @return [String, nil]
      required :intended_use, String, nil?: true

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      required :last_name, String, nil?: true

      # @!attribute legal_entity_type
      #   The type of legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      required :legal_entity_type, enum: -> { ModernTreasury::LegalEntity::LegalEntityType }

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure, nil]
      required :legal_structure, enum: -> { ModernTreasury::LegalEntity::LegalStructure }, nil?: true

      # @!attribute listed_exchange
      #   ISO 10383 market identifier code.
      #
      #   @return [String, nil]
      required :listed_exchange, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute middle_name
      #   An individual's middle name.
      #
      #   @return [String, nil]
      required :middle_name, String, nil?: true

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute operating_jurisdictions
      #   A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
      #   codes).
      #
      #   @return [Array<String>]
      required :operating_jurisdictions, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      required :phone_numbers,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::PhoneNumber] }

      # @!attribute politically_exposed_person
      #   Whether the individual is a politically exposed person.
      #
      #   @return [Boolean, nil]
      required :politically_exposed_person, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute preferred_name
      #   An individual's preferred name.
      #
      #   @return [String, nil]
      required :preferred_name, String, nil?: true

      # @!attribute prefix
      #   An individual's prefix.
      #
      #   @return [String, nil]
      required :prefix, String, nil?: true

      # @!attribute primary_social_media_sites
      #   A list of primary social media URLs for the business.
      #
      #   @return [Array<String>]
      required :primary_social_media_sites, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute regulators
      #   Array of regulatory bodies overseeing this institution.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::Regulator>, nil]
      required :regulators,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Regulator] },
               nil?: true

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::RiskRating, nil]
      required :risk_rating, enum: -> { ModernTreasury::LegalEntity::RiskRating }, nil?: true

      # @!attribute status
      #   The activation status of the legal entity. One of pending, active, suspended, or
      #   closed.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::Status, nil]
      required :status, enum: -> { ModernTreasury::LegalEntity::Status }, nil?: true

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      required :suffix, String, nil?: true

      # @!attribute third_party_verification
      #   Information describing a third-party verification run by an external vendor.
      #
      #   @return [ModernTreasury::Models::LegalEntity::ThirdPartyVerification, nil]
      required :third_party_verification,
               -> {
                 ModernTreasury::LegalEntity::ThirdPartyVerification
               },
               nil?: true

      # @!attribute ticker_symbol
      #   Stock ticker symbol for publicly traded companies.
      #
      #   @return [String, nil]
      required :ticker_symbol, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
      required :wealth_and_employment_details,
               -> { ModernTreasury::LegalEntityWealthEmploymentDetail },
               nil?: true

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      required :website, String, nil?: true

      # @!attribute legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>, nil]
      optional :legal_entity_associations,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociation] },
               nil?: true

      # @!method initialize(id:, addresses:, bank_settings:, business_description:, business_name:, citizenship_country:, compliance_details:, country_of_incorporation:, created_at:, date_formed:, date_of_birth:, discarded_at:, documents:, doing_business_as_names:, email:, expected_activity_volume:, external_id:, first_name:, identifications:, industry_classifications:, intended_use:, last_name:, legal_entity_type:, legal_structure:, listed_exchange:, live_mode:, metadata:, middle_name:, object:, operating_jurisdictions:, phone_numbers:, politically_exposed_person:, preferred_name:, prefix:, primary_social_media_sites:, regulators:, risk_rating:, status:, suffix:, third_party_verification:, ticker_symbol:, updated_at:, wealth_and_employment_details:, website:, legal_entity_associations: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntity} for more details.
      #
      #   @param id [String]
      #
      #   @param addresses [Array<ModernTreasury::Models::LegalEntity::Address>] A list of addresses for the entity.
      #
      #   @param bank_settings [ModernTreasury::Models::LegalEntityBankSettings, nil]
      #
      #   @param business_description [String, nil] A description of the business.
      #
      #   @param business_name [String, nil] The business's legal business name.
      #
      #   @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      #   @param compliance_details [Object, nil]
      #
      #   @param country_of_incorporation [String, nil] The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #
      #   @param created_at [Time]
      #
      #   @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      #   @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param documents [Array<ModernTreasury::Models::Document>]
      #
      #   @param doing_business_as_names [Array<String>]
      #
      #   @param email [String, nil] The entity's primary email.
      #
      #   @param expected_activity_volume [Integer, nil] Monthly expected transaction volume in USD.
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param first_name [String, nil] An individual's first name.
      #
      #   @param identifications [Array<ModernTreasury::Models::LegalEntity::Identification>] A list of identifications for the legal entity.
      #
      #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      #   @param intended_use [String, nil] A description of the intended use of the legal entity.
      #
      #   @param last_name [String, nil] An individual's last name.
      #
      #   @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType] The type of legal entity.
      #
      #   @param legal_structure [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure, nil] The business's legal structure.
      #
      #   @param listed_exchange [String, nil] ISO 10383 market identifier code.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param middle_name [String, nil] An individual's middle name.
      #
      #   @param object [String]
      #
      #   @param operating_jurisdictions [Array<String>] A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3 c
      #
      #   @param phone_numbers [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      #
      #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      #   @param preferred_name [String, nil] An individual's preferred name.
      #
      #   @param prefix [String, nil] An individual's prefix.
      #
      #   @param primary_social_media_sites [Array<String>] A list of primary social media URLs for the business.
      #
      #   @param regulators [Array<ModernTreasury::Models::LegalEntity::Regulator>, nil] Array of regulatory bodies overseeing this institution.
      #
      #   @param risk_rating [Symbol, ModernTreasury::Models::LegalEntity::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      #   @param status [Symbol, ModernTreasury::Models::LegalEntity::Status, nil] The activation status of the legal entity. One of pending, active, suspended, or
      #
      #   @param suffix [String, nil] An individual's suffix.
      #
      #   @param third_party_verification [ModernTreasury::Models::LegalEntity::ThirdPartyVerification, nil] Information describing a third-party verification run by an external vendor.
      #
      #   @param ticker_symbol [String, nil] Stock ticker symbol for publicly traded companies.
      #
      #   @param updated_at [Time]
      #
      #   @param wealth_and_employment_details [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
      #
      #   @param website [String, nil] The entity's primary website URL.
      #
      #   @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityAssociation>, nil] The legal entity associations and its child legal entities.

      class Address < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute address_types
        #   The types of this address.
        #
        #   @return [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>]
        required :address_types,
                 -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntity::Address::AddressType] }

        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        required :locality, String, nil?: true

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
        required :region, String, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, address_types:, country:, created_at:, discarded_at:, line1:, line2:, live_mode:, locality:, object:, postal_code:, region:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LegalEntity::Address} for more details.
        #
        #   @param id [String]
        #
        #   @param address_types [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>] The types of this address.
        #
        #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @param created_at [Time]
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param line1 [String, nil]
        #
        #   @param line2 [String, nil]
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param locality [String, nil] Locality or City.
        #
        #   @param object [String]
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param region [String, nil] Region or State.
        #
        #   @param updated_at [Time]

        module AddressType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          MAILING = :mailing
          OTHER = :other
          PO_BOX = :po_box
          RESIDENTIAL = :residential

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Identification < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute documents
        #
        #   @return [Array<ModernTreasury::Models::Document>]
        required :documents, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document] }

        # @!attribute expiration_date
        #   The date when the Identification is no longer considered valid by the issuing
        #   authority.
        #
        #   @return [Date, nil]
        required :expiration_date, Date, nil?: true

        # @!attribute id_type
        #   The type of ID number.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        required :id_type, enum: -> { ModernTreasury::LegalEntity::Identification::IDType }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the
        #   identification
        #
        #   @return [String, nil]
        required :issuing_country, String, nil?: true

        # @!attribute issuing_region
        #   The region in which the identifcation was issued.
        #
        #   @return [String, nil]
        required :issuing_region, String, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, discarded_at:, documents:, expiration_date:, id_type:, issuing_country:, issuing_region:, live_mode:, object:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LegalEntity::Identification} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param documents [Array<ModernTreasury::Models::Document>]
        #
        #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
        #
        #   @param id_type [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType] The type of ID number.
        #
        #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
        #
        #   @param issuing_region [String, nil] The region in which the identifcation was issued.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param updated_at [Time]

        # The type of ID number.
        #
        # @see ModernTreasury::Models::LegalEntity::Identification#id_type
        module IDType
          extend ModernTreasury::Internal::Type::Enum

          AR_CUIL = :ar_cuil
          AR_CUIT = :ar_cuit
          BR_CNPJ = :br_cnpj
          BR_CPF = :br_cpf
          CL_RUN = :cl_run
          CL_RUT = :cl_rut
          CO_CEDULAS = :co_cedulas
          CO_NIT = :co_nit
          DRIVERS_LICENSE = :drivers_license
          HN_ID = :hn_id
          HN_RTN = :hn_rtn
          IN_LEI = :in_lei
          KR_BRN = :kr_brn
          KR_CRN = :kr_crn
          KR_RRN = :kr_rrn
          PASSPORT = :passport
          SA_TIN = :sa_tin
          SA_VAT = :sa_vat
          US_EIN = :us_ein
          US_ITIN = :us_itin
          US_SSN = :us_ssn
          VN_TIN = :vn_tin

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The type of legal entity.
      #
      # @see ModernTreasury::Models::LegalEntity#legal_entity_type
      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual
        JOINT = :joint

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The business's legal structure.
      #
      # @see ModernTreasury::Models::LegalEntity#legal_structure
      module LegalStructure
        extend ModernTreasury::Internal::Type::Enum

        CORPORATION = :corporation
        LLC = :llc
        NON_PROFIT = :non_profit
        PARTNERSHIP = :partnership
        SOLE_PROPRIETORSHIP = :sole_proprietorship
        TRUST = :trust

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
        # @!attribute phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(phone_number: nil)
        #   A list of phone numbers in E.164 format.
        #
        #   @param phone_number [String]
      end

      class Regulator < ModernTreasury::Internal::Type::BaseModel
        # @!attribute jurisdiction
        #   The country code where the regulator operates in the ISO 3166-1 alpha-2 format
        #   (e.g., "US", "CA", "GB").
        #
        #   @return [String]
        required :jurisdiction, String

        # @!attribute name
        #   Full name of the regulatory body.
        #
        #   @return [String]
        required :name, String

        # @!attribute registration_number
        #   Registration or identification number with the regulator.
        #
        #   @return [String]
        required :registration_number, String

        # @!method initialize(jurisdiction:, name:, registration_number:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LegalEntity::Regulator} for more details.
        #
        #   @param jurisdiction [String] The country code where the regulator operates in the ISO 3166-1 alpha-2 format (
        #
        #   @param name [String] Full name of the regulatory body.
        #
        #   @param registration_number [String] Registration or identification number with the regulator.
      end

      # The risk rating of the legal entity. One of low, medium, high.
      #
      # @see ModernTreasury::Models::LegalEntity#risk_rating
      module RiskRating
        extend ModernTreasury::Internal::Type::Enum

        LOW = :low
        MEDIUM = :medium
        HIGH = :high

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The activation status of the legal entity. One of pending, active, suspended, or
      # closed.
      #
      # @see ModernTreasury::Models::LegalEntity#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        CLOSED = :closed
        PENDING = :pending
        SUSPENDED = :suspended

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::Models::LegalEntity#third_party_verification
      class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
        # @!attribute vendor
        #   The vendor that performed the verification, e.g. `persona`.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { ModernTreasury::LegalEntity::ThirdPartyVerification::Vendor }

        # @!attribute vendor_verification_id
        #   The identification of the third party verification in `vendor`'s system.
        #
        #   @return [String]
        required :vendor_verification_id, String

        # @!method initialize(vendor:, vendor_verification_id:)
        #   Information describing a third-party verification run by an external vendor.
        #
        #   @param vendor [Symbol, ModernTreasury::Models::LegalEntity::ThirdPartyVerification::Vendor] The vendor that performed the verification, e.g. `persona`.
        #
        #   @param vendor_verification_id [String] The identification of the third party verification in `vendor`'s system.

        # The vendor that performed the verification, e.g. `persona`.
        #
        # @see ModernTreasury::Models::LegalEntity::ThirdPartyVerification#vendor
        module Vendor
          extend ModernTreasury::Internal::Type::Enum

          PERSONA = :persona

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
