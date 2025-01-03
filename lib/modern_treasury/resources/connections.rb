# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Connections
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Get a list of all connections.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::ConnectionListParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :entity A string code representing the vendor (i.e. bank).
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :vendor_customer_id An identifier assigned by the vendor to your organization.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Connection>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::ConnectionListParams.dump(params)
        req = {
          method: :get,
          path: "api/connections",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Connection
        }
        @client.request(req, opts)
      end
    end
  end
end
