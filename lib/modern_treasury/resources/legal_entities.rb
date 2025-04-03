# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      # create legal_entity
      #
      # @overload create(legal_entity_type:, addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_entity_associations: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType]
      # @param addresses [Array<ModernTreasury::Models::LegalEntityCreateParams::Address>]
      # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      # @param business_name [String, nil]
      # @param citizenship_country [String, nil]
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      # @param date_formed [Date, nil]
      # @param date_of_birth [Date, nil]
      # @param doing_business_as_names [Array<String>]
      # @param email [String, nil]
      # @param first_name [String, nil]
      # @param identifications [Array<ModernTreasury::Models::LegalEntityCreateParams::Identification>]
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>]
      # @param last_name [String, nil]
      # @param legal_entity_associations [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation>, nil]
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalStructure, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param middle_name [String, nil]
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>]
      # @param politically_exposed_person [Boolean, nil]
      # @param preferred_name [String, nil]
      # @param prefix [String, nil]
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityCreateParams::RiskRating, nil]
      # @param suffix [String, nil]
      # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      # @param website [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LegalEntityCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/legal_entities",
          body: parsed,
          model: ModernTreasury::Models::LegalEntity,
          options: options
        )
      end

      # Get details on a single legal entity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/legal_entities/%1$s", id],
          model: ModernTreasury::Models::LegalEntity,
          options: params[:request_options]
        )
      end

      # Update a legal entity.
      #
      # @overload update(id, addresses: nil, bank_settings: nil, business_name: nil, citizenship_country: nil, compliance_details: nil, date_formed: nil, date_of_birth: nil, doing_business_as_names: nil, email: nil, first_name: nil, identifications: nil, industry_classifications: nil, last_name: nil, legal_structure: nil, metadata: nil, middle_name: nil, phone_numbers: nil, politically_exposed_person: nil, preferred_name: nil, prefix: nil, risk_rating: nil, suffix: nil, wealth_and_employment_details: nil, website: nil, request_options: {})
      #
      # @param id [String]
      # @param addresses [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>]
      # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
      # @param business_name [String, nil]
      # @param citizenship_country [String, nil]
      # @param compliance_details [ModernTreasury::Models::LegalEntityComplianceDetail, nil]
      # @param date_formed [Date, nil]
      # @param date_of_birth [Date, nil]
      # @param doing_business_as_names [Array<String>]
      # @param email [String, nil]
      # @param first_name [String, nil]
      # @param identifications [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>]
      # @param industry_classifications [Array<ModernTreasury::Models::LegalEntityIndustryClassification>]
      # @param last_name [String, nil]
      # @param legal_structure [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param middle_name [String, nil]
      # @param phone_numbers [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>]
      # @param politically_exposed_person [Boolean, nil]
      # @param preferred_name [String, nil]
      # @param prefix [String, nil]
      # @param risk_rating [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil]
      # @param suffix [String, nil]
      # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
      # @param website [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntity]
      #
      # @see ModernTreasury::Models::LegalEntityUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LegalEntityUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/legal_entities/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LegalEntity,
          options: options
        )
      end

      # Get a list of all legal entities.
      #
      # @overload list(after_cursor: nil, legal_entity_type: nil, metadata: nil, per_page: nil, show_deleted: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param show_deleted [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LegalEntity>]
      #
      # @see ModernTreasury::Models::LegalEntityListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LegalEntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/legal_entities",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LegalEntity,
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
