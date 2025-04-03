# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Connections
      # Get a list of all connections.
      #
      # @overload list(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param entity [String]
      # @param per_page [Integer]
      # @param vendor_customer_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Connection>]
      #
      # @see ModernTreasury::Models::ConnectionListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::ConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/connections",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::Connection,
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
