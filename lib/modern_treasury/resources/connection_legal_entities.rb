# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      # Create a connection legal entity.
      #
      # @overload create(connection_id:, legal_entity: nil, legal_entity_id: nil, request_options: {})
      #
      # @param connection_id [String] The ID of the connection.
      #
      # @param legal_entity [ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity] The legal entity.
      #
      # @param legal_entity_id [String] The ID of the legal entity.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      # @see ModernTreasury::Models::ConnectionLegalEntityCreateParams
      def create(params)
        parsed, options = ModernTreasury::ConnectionLegalEntityCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/connection_legal_entities",
          body: parsed,
          model: ModernTreasury::ConnectionLegalEntity,
          options: options
        )
      end

      # Get details on a single connection legal entity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      # @see ModernTreasury::Models::ConnectionLegalEntityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/connection_legal_entities/%1$s", id],
          model: ModernTreasury::ConnectionLegalEntity,
          options: params[:request_options]
        )
      end

      # Update a connection legal entity.
      #
      # @overload update(id, status: nil, request_options: {})
      #
      # @param id [String] The id of an existing connection legal entity.
      #
      # @param status [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status] The status of the connection legal entity.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ConnectionLegalEntity]
      #
      # @see ModernTreasury::Models::ConnectionLegalEntityUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::ConnectionLegalEntityUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/connection_legal_entities/%1$s", id],
          body: parsed,
          model: ModernTreasury::ConnectionLegalEntity,
          options: options
        )
      end

      # Get a list of all connection legal entities.
      #
      # @overload list(after_cursor: nil, connection_id: nil, legal_entity_id: nil, per_page: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param connection_id [String]
      # @param legal_entity_id [String]
      # @param per_page [Integer]
      # @param status [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ConnectionLegalEntity>]
      #
      # @see ModernTreasury::Models::ConnectionLegalEntityListParams
      def list(params = {})
        parsed, options = ModernTreasury::ConnectionLegalEntityListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/connection_legal_entities",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::ConnectionLegalEntity,
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
