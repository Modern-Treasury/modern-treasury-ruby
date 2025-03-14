# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      # create legal_entity
      #
      # @param params [ModernTreasury::Models::LegalEntityCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalEntityType] :legal_entity_type The type of legal entity.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityCreateParams::Address>] :addresses A list of addresses for the entity.
      #
      #   @option params [ModernTreasury::Models::BankSettings, nil] :bank_settings
      #
      #   @option params [String, nil] :business_name The business's legal business name.
      #
      #   @option params [String, nil] :citizenship_country The country of citizenship for an individual.
      #
      #   @option params [Date, nil] :date_formed A business's formation date (YYYY-MM-DD).
      #
      #   @option params [Date, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      #
      #   @option params [Array<String>] :doing_business_as_names
      #
      #   @option params [String, nil] :email The entity's primary email.
      #
      #   @option params [String, nil] :first_name An individual's first name.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityCreateParams::Identification>] :identifications A list of identifications for the legal entity.
      #
      #   @option params [String, nil] :last_name An individual's last name.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation>, nil] :legal_entity_associations The legal entity associations and its child legal entities.
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityCreateParams::LegalStructure, nil] :legal_structure The business's legal structure.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String, nil] :middle_name An individual's middle name.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber>] :phone_numbers
      #
      #   @option params [Boolean, nil] :politically_exposed_person Whether the individual is a politically exposed person.
      #
      #   @option params [String, nil] :preferred_name An individual's preferred name.
      #
      #   @option params [String, nil] :prefix An individual's prefix.
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityCreateParams::RiskRating, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      #
      #   @option params [String, nil] :suffix An individual's suffix.
      #
      #   @option params [ModernTreasury::Models::WealthAndEmploymentDetails, nil] :wealth_and_employment_details
      #
      #   @option params [String, nil] :website The entity's primary website URL.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LegalEntity]
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
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LegalEntityRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/legal_entities/%0s", id],
          model: ModernTreasury::Models::LegalEntity,
          options: params[:request_options]
        )
      end

      # Update a legal entity.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LegalEntityUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityUpdateParams::Address>] :addresses A list of addresses for the entity.
      #
      #   @option params [ModernTreasury::Models::BankSettings, nil] :bank_settings
      #
      #   @option params [String, nil] :business_name The business's legal business name.
      #
      #   @option params [String, nil] :citizenship_country The country of citizenship for an individual.
      #
      #   @option params [Date, nil] :date_formed A business's formation date (YYYY-MM-DD).
      #
      #   @option params [Date, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      #
      #   @option params [Array<String>] :doing_business_as_names
      #
      #   @option params [String, nil] :email The entity's primary email.
      #
      #   @option params [String, nil] :first_name An individual's first name.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityUpdateParams::Identification>] :identifications A list of identifications for the legal entity.
      #
      #   @option params [String, nil] :last_name An individual's last name.
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::LegalStructure, nil] :legal_structure The business's legal structure.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String, nil] :middle_name An individual's middle name.
      #
      #   @option params [Array<ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber>] :phone_numbers
      #
      #   @option params [Boolean, nil] :politically_exposed_person Whether the individual is a politically exposed person.
      #
      #   @option params [String, nil] :preferred_name An individual's preferred name.
      #
      #   @option params [String, nil] :prefix An individual's prefix.
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityUpdateParams::RiskRating, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      #
      #   @option params [String, nil] :suffix An individual's suffix.
      #
      #   @option params [ModernTreasury::Models::WealthAndEmploymentDetails, nil] :wealth_and_employment_details
      #
      #   @option params [String, nil] :website The entity's primary website URL.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LegalEntityUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/legal_entities/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::LegalEntity,
          options: options
        )
      end

      # Get a list of all legal entities.
      #
      # @param params [ModernTreasury::Models::LegalEntityListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType] :legal_entity_type
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :show_deleted
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LegalEntity>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::LegalEntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/legal_entities",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LegalEntity,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
