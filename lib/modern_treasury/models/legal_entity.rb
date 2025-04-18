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
      required :addresses,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LegalEntity::Address] }

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings, nil]
      required :bank_settings, -> { ModernTreasury::Models::BankSettings }, nil?: true

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
      #
      #   @return [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      required :compliance_details, -> { ModernTreasury::Models::LegalEntityComplianceDetail }, nil?: true

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

      # @!attribute doing_business_as_names
      #
      #   @return [Array<String>]
      required :doing_business_as_names, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute email
      #   The entity's primary email.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

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
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LegalEntity::Identification] }

      # @!attribute industry_classifications
      #   A list of industry classifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityIndustryClassification>]
      required :industry_classifications,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LegalEntityIndustryClassification] }

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      required :last_name, String, nil?: true

      # @!attribute legal_entity_associations
      #   The legal entity associations and its child legal entities.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityAssociation>, nil]
      required :legal_entity_associations,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LegalEntityAssociation] },
               nil?: true

      # @!attribute legal_entity_type
      #   The type of legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      required :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntity::LegalEntityType }

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure, nil]
      required :legal_structure, enum: -> { ModernTreasury::Models::LegalEntity::LegalStructure }, nil?: true

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

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      required :phone_numbers,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LegalEntity::PhoneNumber] }

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

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntity::RiskRating, nil]
      required :risk_rating, enum: -> { ModernTreasury::Models::LegalEntity::RiskRating }, nil?: true

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      required :suffix, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      required :wealth_and_employment_details,
               -> { ModernTreasury::Models::WealthAndEmploymentDetails },
               nil?: true

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      required :website, String, nil?: true

      # @!method initialize(id:, addresses:, bank_settings:, business_name:, citizenship_country:, compliance_details:, created_at:, date_formed:, date_of_birth:, discarded_at:, doing_business_as_names:, email:, first_name:, identifications:, industry_classifications:, last_name:, legal_entity_associations:, legal_entity_type:, legal_structure:, live_mode:, metadata:, middle_name:, object:, phone_numbers:, politically_exposed_person:, preferred_name:, prefix:, risk_rating:, suffix:, updated_at:, wealth_and_employment_details:, website:)
      #   @param id [String]
      #   @param addresses [Array<ModernTreasury::Models::LegalEntity::Address>]
      #   @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #   @param business_name [String, nil]
      #   @param citizenship_country [String, nil]
      #   @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      #   @param created_at [Time]
      #   @param date_formed [Date, nil]
      #   @param date_of_birth [Date, nil]
      #   @param discarded_at [Time, nil]
      #   @param doing_business_as_names [Array<String>]
      #   @param email [String, nil]
      #   @param first_name [String, nil]
      #   @param identifications [Array<ModernTreasury::Models::LegalEntity::Identification>]
      #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>]
      #   @param last_name [String, nil]
      #   @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityAssociation>, nil]
      #   @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntity::LegalEntityType]
      #   @param legal_structure [Symbol, ModernTreasury::Models::LegalEntity::LegalStructure, nil]
      #   @param live_mode [Boolean]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param middle_name [String, nil]
      #   @param object [String]
      #   @param phone_numbers [Array<ModernTreasury::Models::LegalEntity::PhoneNumber>]
      #   @param politically_exposed_person [Boolean, nil]
      #   @param preferred_name [String, nil]
      #   @param prefix [String, nil]
      #   @param risk_rating [Symbol, ModernTreasury::Models::LegalEntity::RiskRating, nil]
      #   @param suffix [String, nil]
      #   @param updated_at [Time]
      #   @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      #   @param website [String, nil]

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
                 -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::Models::LegalEntity::Address::AddressType] }

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
        #   @param id [String]
        #   @param address_types [Array<Symbol, ModernTreasury::Models::LegalEntity::Address::AddressType>]
        #   @param country [String, nil]
        #   @param created_at [Time]
        #   @param discarded_at [Time, nil]
        #   @param line1 [String, nil]
        #   @param line2 [String, nil]
        #   @param live_mode [Boolean]
        #   @param locality [String, nil]
        #   @param object [String]
        #   @param postal_code [String, nil]
        #   @param region [String, nil]
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

        # @!attribute id_type
        #   The type of ID number.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        required :id_type, enum: -> { ModernTreasury::Models::LegalEntity::Identification::IDType }

        # @!attribute issuing_country
        #   The ISO 3166-1 alpha-2 country code of the country that issued the
        #   identification
        #
        #   @return [String, nil]
        required :issuing_country, String, nil?: true

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

        # @!method initialize(id:, created_at:, discarded_at:, id_type:, issuing_country:, live_mode:, object:, updated_at:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param discarded_at [Time, nil]
        #   @param id_type [Symbol, ModernTreasury::Models::LegalEntity::Identification::IDType]
        #   @param issuing_country [String, nil]
        #   @param live_mode [Boolean]
        #   @param object [String]
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
    end
  end
end
