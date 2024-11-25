# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a connection legal entity.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :connection_id The ID of the connection.
      #   @option params [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity, nil] :legal_entity The legal entity.
      #   @option params [String, nil] :legal_entity_id The ID of the legal entity.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/connection_legal_entities",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Get details on a single connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/connection_legal_entities/#{id}",
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Update a connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status, nil] :status The status of the connection legal entity.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/connection_legal_entities/#{id}",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Get a list of all connection legal entities.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :connection_id
      #   @option params [String, nil] :legal_entity_id
      #   @option params [Integer, nil] :per_page
      #   @option params [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status, nil] :status
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ConnectionLegalEntity>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/connection_legal_entities",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end
    end
  end
end
