# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LegalEntityCreateParams} for more details.
      #
      # create legal_entity
      #
      # @overload create(legal_entity_type:, addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_entity_associations: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType] The type of legal entity.
      #
      # @param addresses [Array<ModernTreasury::Models::LegalEntityCreateParams::Address>] A list of addresses for the entity.
      #
      # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #
      # @param business_name [String, nil] The business's legal business name.
      #
      # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      #
      # @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      # @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
      #
      # @param doing_business_as_names [Array<String>]
      #
      # @param email [String, nil] The entity's primary email.
      #
      # @param first_name [String, nil] An individual's first name.
      #
      # @param identifications [Array<ModernTreasury::Models::LegalEntityCreateParams::Identification>] A list of identifications for the legal entity.
      #
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      # @param last_name [String, nil] An individual's last name.
      #
      # @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation>, nil] The legal entity associations and its child legal entities.
      #
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalStructure, nil] The business's legal structure.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param middle_name [String, nil] An individual's middle name.
      #
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>]
      #
      # @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      # @param preferred_name [String, nil] An individual's preferred name.
      #
      # @param prefix [String, nil] An individual's prefix.
      #
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityCreateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      # @param suffix [String, nil] An individual's suffix.
      #
      # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
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
      # @overload update(id, addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param addresses [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>] A list of addresses for the entity.
      #
      # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      #
      # @param business_name [String, nil] The business's legal business name.
      #
      # @param citizenship_country [String, nil] The country of citizenship for an individual.
      #
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      #
      # @param date_formed [Date, nil] A business's formation date (YYYY-MM-DD).
      #
      # @param date_of_birth [Date, nil] An individual's date of birth (YYYY-MM-DD).
      #
      # @param doing_business_as_names [Array<String>]
      #
      # @param email [String, nil] The entity's primary email.
      #
      # @param first_name [String, nil] An individual's first name.
      #
      # @param identifications [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>] A list of identifications for the legal entity.
      #
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>] A list of industry classifications for the legal entity.
      #
      # @param last_name [String, nil] An individual's last name.
      #
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil] The business's legal structure.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param middle_name [String, nil] An individual's middle name.
      #
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      #
      # @param politically_exposed_person [Boolean, nil] Whether the individual is a politically exposed person.
      #
      # @param preferred_name [String, nil] An individual's preferred name.
      #
      # @param prefix [String, nil] An individual's prefix.
      #
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil] The risk rating of the legal entity. One of low, medium, high.
      #
      # @param suffix [String, nil] An individual's suffix.
      #
      # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
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
