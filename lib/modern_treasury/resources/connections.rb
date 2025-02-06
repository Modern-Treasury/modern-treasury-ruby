# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Connections
      # Get a list of all connections.
      #
      # @param params [ModernTreasury::Models::ConnectionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :entity A string code representing the vendor (i.e. bank).
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :vendor_customer_id An identifier assigned by the vendor to your organization.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Connection>]
      #
      def list(params = {})
        parsed, options = ModernTreasury::Models::ConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/connections",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Connection,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
