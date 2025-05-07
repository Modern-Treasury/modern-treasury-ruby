# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntityAssociations#create
    class LegalEntityAssociationCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute parent_legal_entity_id
      #   The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      #
      #   @return [String]
      required :parent_legal_entity_id, String

      # @!attribute relationship_types
      #
      #   @return [Array<Symbol, ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType>]
      required :relationship_types,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType]
               }

      # @!attribute child_legal_entity
      #   The child legal entity.
      #
      #   @return [ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity, nil]
      optional :child_legal_entity,
               -> {
                 ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity
               }

      # @!attribute child_legal_entity_id
      #   The ID of the child legal entity.
      #
      #   @return [String, nil]
      optional :child_legal_entity_id, String

      # @!attribute ownership_percentage
      #   The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @return [Integer, nil]
      optional :ownership_percentage, Integer, nil?: true

      # @!attribute title
      #   The job title of the child entity at the parent entity.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(parent_legal_entity_id:, relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityAssociationCreateParams} for more details.
      #
      #   @param parent_legal_entity_id [String] The ID of the parent legal entity. This must be a business or joint legal entity
      #
      #   @param relationship_types [Array<Symbol, ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType>]
      #
      #   @param child_legal_entity [ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity] The child legal entity.
      #
      #   @param child_legal_entity_id [String] The ID of the child legal entity.
      #
      #   @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @param title [String, nil] The job title of the child entity at the parent entity.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Internal::Type::Enum

        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
        # @!attribute addresses
        #   A list of addresses for the entity.
        #
        #   @return [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address>, nil]
        optional :addresses,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address]
                 }

        # @!attribute bank_settings
        #
        #   @return [ModernTreasury::BankSettings, nil]
        optional :bank_settings, -> { ModernTreasury::BankSettings }, nil?: true

        # @!attribute business_name
        #   The business's legal business name.
        #
        #   @return [String, nil]
        optional :business_name, String, nil?: true

        # @!attribute citizenship_country
        #   The country of citizenship for an individual.
        #
        #   @return [String, nil]
        optional :citizenship_country, String, nil?: true

        # @!attribute compliance_details
        #
        #   @return [ModernTreasury::LegalEntityComplianceDetail, nil]
        optional :compliance_details, -> { ModernTreasury::LegalEntityComplianceDetail }, nil?: true

        # @!attribute date_formed
        #   A business's formation date (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_formed, Date, nil?: true

        # @!attribute date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_of_birth, Date, nil?: true

        # @!attribute doing_business_as_names
        #
        #   @return [Array<String>, nil]
        optional :doing_business_as_names, ModernTreasury::Internal::Type::ArrayOf[String]

        # @!attribute email
        #   The entity's primary email.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute first_name
        #   An individual's first name.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute identifications
        #   A list of identifications for the legal entity.
        #
        #   @return [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification>, nil]
        optional :identifications,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification]
                 }

        # @!attribute industry_classifications
        #   A list of industry classifications for the legal entity.
        #
        #   @return [Array<ModernTreasury::LegalEntityIndustryClassification>, nil]
        optional :industry_classifications,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]
                 }

        # @!attribute last_name
        #   An individual's last name.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute legal_entity_type
        #   The type of legal entity.
        #
        #   @return [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType, nil]
        optional :legal_entity_type,
                 enum: -> {
                   ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType
                 }

        # @!attribute legal_structure
        #   The business's legal structure.
        #
        #   @return [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure, nil]
        optional :legal_structure,
                 enum: -> {
                   ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure
                 },
                 nil?: true

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute middle_name
        #   An individual's middle name.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute phone_numbers
        #
        #   @return [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber>, nil]
        optional :phone_numbers,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber]
                 }

        # @!attribute politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #
        #   @return [Boolean, nil]
        optional :politically_exposed_person, ModernTreasury::Internal::Type::Boolean, nil?: true

        # @!attribute preferred_name
        #   An individual's preferred name.
        #
        #   @return [String, nil]
        optional :preferred_name, String, nil?: true

        # @!attribute prefix
        #   An individual's prefix.
        #
        #   @return [String, nil]
        optional :prefix, String, nil?: true

        # @!attribute risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #
        #   @return [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating, nil]
        optional :risk_rating,
                 enum: -> {
                   ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating
                 },
                 nil?: true

        # @!attribute suffix
        #   An individual's suffix.
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!attribute wealth_and_employment_details
        #
        #   @return [ModernTreasury::WealthAndEmploymentDetails, nil]
        optional :wealth_and_employment_details, -> { ModernTreasury::WealthAndEmploymentDetails }, nil?: true

        # @!attribute website
        #   The entity's primary website URL.
        #
        #   @return [String, nil]
        optional :website, String, nil?: true

        # @!method initialize(addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_entity_type: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity} for more
        #   details.
        #
        #   The child legal entity.
        #
        #   @param addresses [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address>] A list of addresses for the entity.
        #
        #   @param bank_settings [ModernTreasury::BankSettings, nil]
        #
        #   @param business_name [String, nil] The business's legal business name.
        #
        #   @param citizenship_country [String, nil] The country of citizenship for an individual.
        #
        #   @param compliance_details [ModernTreasury::LegalEntityComplianceDetail, nil]
        #
        #   @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
        #
        #   @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
        #
        #   @param doing_business_as_names [Array<String>]
        #
        #   @param email [String, nil] The entity's primary email.
        #
        #   @param first_name [String, nil] An individual's first name.
        #
        #   @param identifications [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification>] A list of identifications for the legal entity.
        #
        #   @param industry_classifications [Array<ModernTreasury::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
        #
        #   @param last_name [String, nil] An individual's last name.
        #
        #   @param legal_entity_type [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalEntityType] The type of legal entity.
        #
        #   @param legal_structure [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::LegalStructure, nil] The business's legal structure.
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param middle_name [String, nil] An individual's middle name.
        #
        #   @param phone_numbers [Array<ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::PhoneNumber>]
        #
        #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
        #
        #   @param preferred_name [String, nil] An individual's preferred name.
        #
        #   @param prefix [String, nil] An individual's prefix.
        #
        #   @param risk_rating [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
        #
        #   @param suffix [String, nil] An individual's suffix.
        #
        #   @param wealth_and_employment_details [ModernTreasury::WealthAndEmploymentDetails, nil]
        #
        #   @param website [String, nil] The entity's primary website URL.

        class Address < ModernTreasury::Internal::Type::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute locality
          #   Locality or City.
          #
          #   @return [String, nil]
          required :locality, String, nil?: true

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

          # @!attribute address_types
          #   The types of this address.
          #
          #   @return [Array<Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType>, nil]
          optional :address_types,
                   -> {
                     ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType]
                   }

          # @!attribute line2
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!method initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @param line1 [String, nil]
          #
          #   @param locality [String, nil] Locality or City.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param region [String, nil] Region or State.
          #
          #   @param address_types [Array<Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Address::AddressType>] The types of this address.
          #
          #   @param line2 [String, nil]

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
          # @!attribute id_number
          #   The ID number of identification document.
          #
          #   @return [String]
          required :id_number, String

          # @!attribute id_type
          #   The type of ID number.
          #
          #   @return [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> {
                     ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType
                   }

          # @!attribute issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          #
          #   @return [String, nil]
          optional :issuing_country, String, nil?: true

          # @!method initialize(id_number:, id_type:, issuing_country: nil)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification}
          #   for more details.
          #
          #   @param id_number [String] The ID number of identification document.
          #
          #   @param id_type [Symbol, ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification::IDType] The type of ID number.
          #
          #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio

          # The type of ID number.
          #
          # @see ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity::Identification#id_type
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
        # @see ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity#legal_entity_type
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The business's legal structure.
        #
        # @see ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity#legal_structure
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
        # @see ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity#risk_rating
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
end
