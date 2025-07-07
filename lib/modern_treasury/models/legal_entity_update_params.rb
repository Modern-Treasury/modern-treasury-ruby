# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntities#update
    class LegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute addresses
      #   A list of addresses for the entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityAddressCreateRequest>, nil]
      optional :addresses,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAddressCreateRequest] }

      # @!attribute bank_settings
      #
      #   @return [ModernTreasury::Models::BankSettings, nil]
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
      #   @return [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
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
      #   @return [Array<ModernTreasury::Models::IdentificationCreateRequest>, nil]
      optional :identifications,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::IdentificationCreateRequest] }

      # @!attribute industry_classifications
      #   A list of industry classifications for the legal entity.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityIndustryClassification>, nil]
      optional :industry_classifications,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]
               }

      # @!attribute last_name
      #   An individual's last name.
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute legal_structure
      #   The business's legal structure.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil]
      optional :legal_structure,
               enum: -> { ModernTreasury::LegalEntityUpdateParams::LegalStructure },
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
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>, nil]
      optional :phone_numbers,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityUpdateParams::PhoneNumber]
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
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil]
      optional :risk_rating, enum: -> { ModernTreasury::LegalEntityUpdateParams::RiskRating }, nil?: true

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      optional :wealth_and_employment_details, -> { ModernTreasury::WealthAndEmploymentDetails }, nil?: true

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!method initialize(addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityUpdateParams} for more details.
      #
      #   @param addresses [Array<ModernTreasury::Models::LegalEntityAddressCreateRequest>] A list of addresses for the entity.
      #
      #   @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #
      #   @param business_name [String, nil] The business's legal business name.
      #
      #   @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      #   @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
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
      #   @param identifications [Array<ModernTreasury::Models::IdentificationCreateRequest>] A list of identifications for the legal entity.
      #
      #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      #   @param last_name [String, nil] An individual's last name.
      #
      #   @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil] The business's legal structure.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param middle_name [String, nil] An individual's middle name.
      #
      #   @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #
      #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      #   @param preferred_name [String, nil] An individual's preferred name.
      #
      #   @param prefix [String, nil] An individual's prefix.
      #
      #   @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      #   @param suffix [String, nil] An individual's suffix.
      #
      #   @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      #
      #   @param website [String, nil] The entity's primary website URL.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The business's legal structure.
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
