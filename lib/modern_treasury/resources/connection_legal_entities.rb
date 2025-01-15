# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      # Create a connection legal entity.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :connection_id The ID of the connection.
      #
      #   @option params [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity] :legal_entity The legal entity.
      #
      #   @option params [String] :legal_entity_id The ID of the legal entity.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::ConnectionLegalEntityCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/connection_legal_entities",
          body: parsed,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Get details on a single connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/connection_legal_entities/%0s", id],
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Update a connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status] :status The status of the connection legal entity.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::ConnectionLegalEntityUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/connection_legal_entities/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # Get a list of all connection legal entities.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :connection_id
      #
      #   @option params [String] :legal_entity_id
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status] :status
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ConnectionLegalEntity>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::ConnectionLegalEntityListParams.dump(params)
        req = {
          method: :get,
          path: "api/connection_legal_entities",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ConnectionLegalEntity
        }
        @client.request(req, opts)
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
