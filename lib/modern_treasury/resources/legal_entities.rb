# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntities
      def initialize(client:)
        @client = client
      end

      # create legal_entity
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :legal_entity_type The type of legal entity.
      # @option params [Array<Address>] :addresses A list of addresses for the entity.
      # @option params [String] :business_name The business's legal business name.
      # @option params [Date] :date_formed A business's formation date (YYYY-MM-DD).
      # @option params [Date] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      # @option params [Array<String>] :doing_business_as_names
      # @option params [String] :email The entity's primary email.
      # @option params [String] :first_name An individual's first name.
      # @option params [Array<Identification>] :identifications A list of identifications for the legal entity.
      # @option params [String] :last_name An individual's last name.
      # @option params [Array<LegalEntityAssociation>] :legal_entity_associations The legal entity associations and its child legal entities.
      # @option params [Symbol] :legal_structure The business's legal structure.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Array<PhoneNumber>] :phone_numbers
      # @option params [Symbol] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      # @option params [String] :website The entity's primary website URL.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/legal_entities"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LegalEntity
        @client.request(req, opts)
      end

      # Get details on a single legal entity.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/legal_entities/#{id}"
        req[:model] = ModernTreasury::Models::LegalEntity
        @client.request(req, opts)
      end

      # Update a legal entity.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :business_name The business's legal business name.
      # @option params [Date] :date_formed A business's formation date (YYYY-MM-DD).
      # @option params [Date] :date_of_birth An individual's date of birth (YYYY-MM-DD).
      # @option params [Array<String>] :doing_business_as_names
      # @option params [String] :email The entity's primary email.
      # @option params [String] :first_name An individual's first name.
      # @option params [String] :last_name An individual's last name.
      # @option params [Symbol] :legal_structure The business's legal structure.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Array<PhoneNumber>] :phone_numbers
      # @option params [Symbol] :risk_rating The risk rating of the legal entity. One of low, medium, high.
      # @option params [String] :website The entity's primary website URL.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntity]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/legal_entities/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LegalEntity
        @client.request(req, opts)
      end

      # Get a list of all legal entities.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Symbol] :legal_entity_type
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Integer] :per_page
      # @option params [String] :show_deleted
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LegalEntity>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/legal_entities"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LegalEntity
        @client.request(req, opts)
      end
    end
  end
end
