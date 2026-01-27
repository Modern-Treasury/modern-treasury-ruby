# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LegalEntityCreateParams} for more details.
      #
      # create legal_entity
      #
      # @overload create(legal_entity_type:, addresses: nil, bank_settings: nil, business_description: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, connection_id: nil, country_of_incorporation: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, expected_activity_volume: nil, first_name: nil, identifications: nil, industry_classifications: nil, intended_use: nil, last_name: nil, legal_entity_associations: nil, legal_structure: nil, listed_exchange: nil, metadata: nil, middle_name: nil, operating_jurisdictions: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, primary_social_media_sites: nil, regulators: nil, risk_rating: nil, suffix: nil, third_party_verification: nil, ticker_symbol: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType] The type of legal entity.
      #
      # @param addresses [Array<ModernTreasury::Models::LegalEntityAddressCreateRequest>] A list of addresses for the entity.
      #
      # @param bank_settings [ModernTreasury::Models::LegalEntityBankSettings, nil]
      #
      # @param business_description [String, nil] A description of the business.
      #
      # @param business_name [String, nil] The business's legal business name.
      #
      # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      #
      # @param connection_id [String, nil] The connection ID for the connection the legal entity is associated with. Defaul
      #
      # @param country_of_incorporation [String, nil] The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #
      # @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      # @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
      #
      # @param doing_business_as_names [Array<String>]
      #
      # @param email [String, nil] The entity's primary email.
      #
      # @param expected_activity_volume [Integer, nil] Monthly expected transaction volume in USD.
      #
      # @param first_name [String, nil] An individual's first name.
      #
      # @param identifications [Array<ModernTreasury::Models::IdentificationCreateRequest>] A list of identifications for the legal entity.
      #
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      # @param intended_use [String, nil] A description of the intended use of the legal entity.
      #
      # @param last_name [String, nil] An individual's last name.
      #
      # @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityAssociationInlineCreate>, nil] The legal entity associations and its child legal entities.
      #
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalStructure, nil] The business's legal structure.
      #
      # @param listed_exchange [String, nil] ISO 10383 market identifier code.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param middle_name [String, nil] An individual's middle name.
      #
      # @param operating_jurisdictions [Array<String>] A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3 c
      #
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>]
      #
      # @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      # @param preferred_name [String, nil] An individual's preferred name.
      #
      # @param prefix [String, nil] An individual's prefix.
      #
      # @param primary_social_media_sites [Array<String>] A list of primary social media URLs for the business.
      #
      # @param regulators [Array<ModernTreasury::Models::LegalEntityCreateParams::Regulator>, nil] Array of regulatory bodies overseeing this institution.
      #
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityCreateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      # @param suffix [String, nil] An individual's suffix.
      #
      # @param third_party_verification [ModernTreasury::Models::LegalEntityCreateParams::ThirdPartyVerification, nil] Information describing a third-party verification run by an external vendor.
      #
      # @param ticker_symbol [String, nil] Stock ticker symbol for publicly traded companies.
      #
      # @param wealth_and_employment_details [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
      #
      # @param website [String, nil] The entity's primary website URL.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityCreateParams
      def create(params)
        parsed, options = ModernTreasury::LegalEntityCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/legal_entities",
          body: parsed,
          model: ModernTreasury::LegalEntity,
          options: options
        )
      end

      # Get details on a single legal entity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/legal_entities/%1$s", id],
          model: ModernTreasury::LegalEntity,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LegalEntityUpdateParams} for more details.
      #
      # Update a legal entity.
      #
      # @overload update(id, addresses: nil, bank_settings: nil, business_description: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, country_of_incorporation: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, expected_activity_volume: nil, first_name: nil, identifications: nil, industry_classifications: nil, intended_use: nil, last_name: nil, legal_structure: nil, listed_exchange: nil, metadata: nil, middle_name: nil, operating_jurisdictions: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, primary_social_media_sites: nil, regulators: nil, risk_rating: nil, suffix: nil, third_party_verification: nil, ticker_symbol: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param addresses [Array<ModernTreasury::Models::LegalEntityAddressCreateRequest>] A list of addresses for the entity.
      #
      # @param bank_settings [ModernTreasury::Models::LegalEntityBankSettings, nil]
      #
      # @param business_description [String, nil] A description of the business.
      #
      # @param business_name [String, nil] The business's legal business name.
      #
      # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      #
      # @param country_of_incorporation [String, nil] The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
      #
      # @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      # @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
      #
      # @param doing_business_as_names [Array<String>]
      #
      # @param email [String, nil] The entity's primary email.
      #
      # @param expected_activity_volume [Integer, nil] Monthly expected transaction volume in USD.
      #
      # @param first_name [String, nil] An individual's first name.
      #
      # @param identifications [Array<ModernTreasury::Models::IdentificationCreateRequest>] A list of identifications for the legal entity.
      #
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      # @param intended_use [String, nil] A description of the intended use of the legal entity.
      #
      # @param last_name [String, nil] An individual's last name.
      #
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil] The business's legal structure.
      #
      # @param listed_exchange [String, nil] ISO 10383 market identifier code.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param middle_name [String, nil] An individual's middle name.
      #
      # @param operating_jurisdictions [Array<String>] A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3 c
      #
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #
      # @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      # @param preferred_name [String, nil] An individual's preferred name.
      #
      # @param prefix [String, nil] An individual's prefix.
      #
      # @param primary_social_media_sites [Array<String>] A list of primary social media URLs for the business.
      #
      # @param regulators [Array<ModernTreasury::Models::LegalEntityUpdateParams::Regulator>, nil] Array of regulatory bodies overseeing this institution.
      #
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      # @param suffix [String, nil] An individual's suffix.
      #
      # @param third_party_verification [ModernTreasury::Models::LegalEntityUpdateParams::ThirdPartyVerification, nil] Information describing a third-party verification run by an external vendor.
      #
      # @param ticker_symbol [String, nil] Stock ticker symbol for publicly traded companies.
      #
      # @param wealth_and_employment_details [ModernTreasury::Models::LegalEntityWealthEmploymentDetail, nil]
      #
      # @param website [String, nil] The entity's primary website URL.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LegalEntityUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/legal_entities/%1$s", id],
          body: parsed,
          model: ModernTreasury::LegalEntity,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LegalEntityListParams} for more details.
      #
      # Get a list of all legal entities.
      #
      # @overload list(after_cursor: nil, legal_entity_type: nil, metadata: nil, per_page: nil, show_deleted: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param show_deleted [String]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LegalEntity>]
      #
      # @see ModernTreasury::Models::LegalEntityListParams
      def list(params = {})
        parsed, options = ModernTreasury::LegalEntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/legal_entities",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LegalEntity,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
