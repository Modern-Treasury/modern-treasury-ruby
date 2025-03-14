# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      # Create a connection legal entity.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :connection_id The ID of the connection.
      #
      #   @option params [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity] :legal_entity The legal entity.
      #
      #   @option params [String] :legal_entity_id The ID of the legal entity.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def create(params)
        parsed, options = ModernTreasury::Models::ConnectionLegalEntityCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/connection_legal_entities",
          body: parsed,
          model: ModernTreasury::Models::ConnectionLegalEntity,
          options: options
        )
      end

      # Get details on a single connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/connection_legal_entities/%0s", id],
          model: ModernTreasury::Models::ConnectionLegalEntity,
          options: params[:request_options]
        )
      end

      # Update a connection legal entity.
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status] :status The status of the connection legal entity.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::ConnectionLegalEntityUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/connection_legal_entities/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::ConnectionLegalEntity,
          options: options
        )
      end

      # Get a list of all connection legal entities.
      #
      # @param params [ModernTreasury::Models::ConnectionLegalEntityListParams, Hash{Symbol=>Object}] .
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
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ConnectionLegalEntity>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::ConnectionLegalEntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/connection_legal_entities",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ConnectionLegalEntity,
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
