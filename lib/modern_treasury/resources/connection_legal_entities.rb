# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      def initialize(client:)
        @client = client
      end

      # Create a connection legal entity.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :connection_id The ID of the connection.
      # @option params [LegalEntity, nil] :legal_entity The legal entity.
      # @option params [String, nil] :legal_entity_id The ID of the legal entity.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/connection_legal_entities"
        req[:body] = params
        req[:model] = ModernTreasury::Models::ConnectionLegalEntity
        @client.request(req, opts)
      end

      # Get details on a single connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/connection_legal_entities/#{id}"
        req[:model] = ModernTreasury::Models::ConnectionLegalEntity
        @client.request(req, opts)
      end

      # Update a connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Status, nil] :status The status of the connection legal entity.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/connection_legal_entities/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::ConnectionLegalEntity
        @client.request(req, opts)
      end

      # Get a list of all connection legal entities.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :connection_id
      # @option params [String, nil] :legal_entity_id
      # @option params [Integer, nil] :per_page
      # @option params [Symbol, Status, nil] :status
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ConnectionLegalEntity>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/connection_legal_entities"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::ConnectionLegalEntity
        @client.request(req, opts)
      end
    end
  end
end
