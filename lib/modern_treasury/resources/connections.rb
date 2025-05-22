# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Connections
      # Get a list of all connections.
      #
      # @overload list(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param entity [String] A string code representing the vendor (i.e. bank).
      #
      # @param per_page [Integer]
      #
      # @param vendor_customer_id [String] An identifier assigned by the vendor to your organization.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Connection>]
      #
      # @see ModernTreasury::Models::ConnectionListParams
      def list(params = {})
        parsed, options = ModernTreasury::ConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/connections",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Connection,
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
