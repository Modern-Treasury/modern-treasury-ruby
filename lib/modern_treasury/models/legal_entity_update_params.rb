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
      #   @return [ModernTreasury::Models::LegalEntityBankSettings, nil]
      optional :bank_settings, -> { ModernTreasury::LegalEntityBankSettings }, nil?: true

      # @!attribute business_description
      #   A description of the business.
      #
      #   @return [String, nil]
      optional :business_description, String, nil?: true

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

      # @!attribute country_of_incorporation
      #   The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #   alpha-3 formats.
      #
      #   @return [String, nil]
      optional :country_of_incorporation, String, nil?: true

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

      # @!attribute expected_activity_volume
      #   Monthly expected transaction volume in USD.
      #
      #   @return [Integer, nil]
      optional :expected_activity_volume, Integer, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

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
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification] }

      # @!attribute intended_use
      #   A description of the intended use of the legal entity.
      #
      #   @return [String, nil]
      optional :intended_use, String, nil?: true

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

      # @!attribute listed_exchange
      #   ISO 10383 market identifier code.
      #
      #   @return [String, nil]
      optional :listed_exchange, String, nil?: true

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

      # @!attribute operating_jurisdictions
      #   A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
      #   codes).
      #
      #   @return [Array<String>, nil]
      optional :operating_jurisdictions, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute phone_numbers
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>, nil]
      optional :phone_numbers,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityUpdateParams::PhoneNumber] }

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

      # @!attribute primary_social_media_sites
      #   A list of primary social media URLs for the business.
      #
      #   @return [Array<String>, nil]
      optional :primary_social_media_sites, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute regulators
      #   Array of regulatory bodies overseeing this institution.
      #
      #   @return [Array<ModernTreasury::Models::LegalEntityUpdateParams::Regulator>, nil]
      optional :regulators,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityUpdateParams::Regulator]
               },
               nil?: true

      # @!attribute risk_rating
      #   The risk rating of the legal entity. One of low, medium, high.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil]
      optional :risk_rating, enum: -> { ModernTreasury::LegalEntityUpdateParams::RiskRating }, nil?: true

      # @!attribute status
      #   The activation status of the legal entity. One of pending, active, suspended, or
      #   closed.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::LegalEntityUpdateParams::Status }, nil?: true

      # @!attribute suffix
      #   An individual's suffix.
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!attribute third_party_verification
      #   Information describing a third-party verification run by an external vendor.
      #
      #   @return [ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification, nil]
      optional :third_party_verification,
               -> { ModernTreasury::LegalEntityUpdateParams::ThirdPartyVerification },
               nil?: true

      # @!attribute ticker_symbol
      #   Stock ticker symbol for publicly traded companies.
      #
      #   @return [String, nil]
      optional :ticker_symbol, String, nil?: true

      # @!attribute wealth_and_employment_details
      #
      #   @return [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
      optional :wealth_and_employment_details,
               -> { ModernTreasury::LegalEntityWealthEmploymentDetail },
               nil?: true

      # @!attribute website
      #   The entity's primary website URL.
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!method initialize(addresses: nil, bank_settings: nil, business_description: nil, business_name: nil, citizenship_country: nil, country_of_incorporation: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, expected_activity_volume: nil, external_id: nil, first_name: nil, identifications: nil, industry_classifications: nil, intended_use: nil, last_name: nil, legal_structure: nil, listed_exchange: nil, metadata: nil, middle_name: nil, operating_jurisdictions: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, primary_social_media_sites: nil, regulators: nil, risk_rating: nil, status: nil, suffix: nil, third_party_verification: nil, ticker_symbol: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityUpdateParams} for more details.
      #
      #   @param addresses [Array<ModernTreasury::Models::LegalEntityAddressCreateRequest>] A list of addresses for the entity.
      #
      #   @param bank_settings [ModernTreasury::Models::LegalEntityBankSettings, nil]
      #
      #   @param business_description [String, nil] A description of the business.
      #
      #   @param business_name [String, nil] The business's legal business name.
      #
      #   @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      #   @param country_of_incorporation [String, nil] The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #
      #   @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      #   @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
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
      #   @param identifications [Array<ModernTreasury::Models::IdentificationCreateRequest>] A list of identifications for the legal entity.
      #
      #   @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      #   @param intended_use [String, nil] A description of the intended use of the legal entity.
      #
      #   @param last_name [String, nil] An individual's last name.
      #
      #   @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil] The business's legal structure.
      #
      #   @param listed_exchange [String, nil] ISO 10383 market identifier code.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param middle_name [String, nil] An individual's middle name.
      #
      #   @param operating_jurisdictions [Array<String>] A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3 c
      #
      #   @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #
      #   @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      #   @param preferred_name [String, nil] An individual's preferred name.
      #
      #   @param prefix [String, nil] An individual's prefix.
      #
      #   @param primary_social_media_sites [Array<String>] A list of primary social media URLs for the business.
      #
      #   @param regulators [Array<ModernTreasury::Models::LegalEntityUpdateParams::Regulator>, nil] Array of regulatory bodies overseeing this institution.
      #
      #   @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      #   @param status [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::Status, nil] The activation status of the legal entity. One of pending, active, suspended, or
      #
      #   @param suffix [String, nil] An individual's suffix.
      #
      #   @param third_party_verification [ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification, nil] Information describing a third-party verification run by an external vendor.
      #
      #   @param ticker_symbol [String, nil] Stock ticker symbol for publicly traded companies.
      #
      #   @param wealth_and_employment_details [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
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
        #   {ModernTreasury::Models::LegalEntityUpdateParams::Regulator} for more details.
        #
        #   @param jurisdiction [String] The country code where the regulator operates in the ISO 3166-1 alpha-2 format (
        #
        #   @param name [String] Full name of the regulatory body.
        #
        #   @param registration_number [String] Registration or identification number with the regulator.
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

      # The activation status of the legal entity. One of pending, active, suspended, or
      # closed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        CLOSED = :closed
        PENDING = :pending
        SUSPENDED = :suspended

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
        # @!attribute vendor
        #   The vendor that performed the verification, e.g. `persona`.
        #
        #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { ModernTreasury::LegalEntityUpdateParams::ThirdPartyVerification::Vendor }

        # @!attribute vendor_verification_id
        #   The identification of the third party verification in `vendor`'s system.
        #
        #   @return [String]
        required :vendor_verification_id, String

        # @!method initialize(vendor:, vendor_verification_id:)
        #   Information describing a third-party verification run by an external vendor.
        #
        #   @param vendor [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification::Vendor] The vendor that performed the verification, e.g. `persona`.
        #
        #   @param vendor_verification_id [String] The identification of the third party verification in `vendor`'s system.

        # The vendor that performed the verification, e.g. `persona`.
        #
        # @see ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification#vendor
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
