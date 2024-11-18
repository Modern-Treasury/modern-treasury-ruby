# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create legal_entity
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, LegalEntityType] :legal_entity_type The type of legal entity.
      #   @option params [Array<Address>, nil] :addresses A list of addresses for the entity.
      #   @option params [ModernTreasury::Models::BankSettings, nil] :bank_settings
      #   @option params [String, nil] :business_name The business's legal business name.
      #   @option params [String, nil] :citizenship_country The country of citizenship for an individual.
      #   @option params [Date, nil] :date_formed A business's formation date (YYYY-MM-DD).
      #   @option params [Date, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      #   @option params [Array<String>, nil] :doing_business_as_names
      #   @option params [String, nil] :email The entity's primary email.
      #   @option params [String, nil] :first_name An individual's first name.
      #   @option params [Array<Identification>, nil] :identifications A list of identifications for the legal entity.
      #   @option params [String, nil] :last_name An individual's last name.
      #   @option params [Array<LegalEntityAssociation>, nil] :legal_entity_associations The legal entity associations and its child legal entities.
      #   @option params [Symbol, LegalStructure, nil] :legal_structure The business's legal structure.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [String, nil] :middle_name An individual's middle name.
      #   @option params [Array<PhoneNumber>, nil] :phone_numbers
      #   @option params [Boolean, nil] :politically_exposed_person Whether the individual is a politically exposed person.
      #   @option params [String, nil] :preferred_name An individual's preferred name.
      #   @option params [String, nil] :prefix An individual's prefix.
      #   @option params [Symbol, RiskRating, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      #   @option params [String, nil] :suffix An individual's suffix.
      #   @option params [ModernTreasury::Models::WealthAndEmploymentDetails, nil] :wealth_and_employment_details
      #   @option params [String, nil] :website The entity's primary website URL.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/legal_entities",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LegalEntity
        }
        @client.request(req, opts)
      end

      # Get details on a single legal entity.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/legal_entities/#{id}",
          model: ModernTreasury::Models::LegalEntity
        }
        @client.request(req, opts)
      end

      # Update a legal entity.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<Address>, nil] :addresses A list of addresses for the entity.
      #   @option params [ModernTreasury::Models::BankSettings, nil] :bank_settings
      #   @option params [String, nil] :business_name The business's legal business name.
      #   @option params [String, nil] :citizenship_country The country of citizenship for an individual.
      #   @option params [Date, nil] :date_formed A business's formation date (YYYY-MM-DD).
      #   @option params [Date, nil] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      #   @option params [Array<String>, nil] :doing_business_as_names
      #   @option params [String, nil] :email The entity's primary email.
      #   @option params [String, nil] :first_name An individual's first name.
      #   @option params [Array<Identification>, nil] :identifications A list of identifications for the legal entity.
      #   @option params [String, nil] :last_name An individual's last name.
      #   @option params [Symbol, LegalStructure, nil] :legal_structure The business's legal structure.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [String, nil] :middle_name An individual's middle name.
      #   @option params [Array<PhoneNumber>, nil] :phone_numbers
      #   @option params [Boolean, nil] :politically_exposed_person Whether the individual is a politically exposed person.
      #   @option params [String, nil] :preferred_name An individual's preferred name.
      #   @option params [String, nil] :prefix An individual's prefix.
      #   @option params [Symbol, RiskRating, nil] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      #   @option params [String, nil] :suffix An individual's suffix.
      #   @option params [ModernTreasury::Models::WealthAndEmploymentDetails, nil] :wealth_and_employment_details
      #   @option params [String, nil] :website The entity's primary website URL.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/legal_entities/#{id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LegalEntity
        }
        @client.request(req, opts)
      end

      # Get a list of all legal entities.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Symbol, LegalEntityType, nil] :legal_entity_type
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #   @option params [String, nil] :show_deleted
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LegalEntity>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/legal_entities",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LegalEntity
        }
        @client.request(req, opts)
      end
    end
  end
end
