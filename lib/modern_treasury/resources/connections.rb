# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Connections
      def initialize(client:)
        @client = client
      end

      # Get a list of all connections.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :entity A string code representing the vendor (i.e. bank).
      # @option params [Integer, nil] :per_page
      # @option params [String, nil] :vendor_customer_id An identifier assigned by the vendor to your organization.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Connection>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/connections",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Connection
        }
        @client.request(req, opts)
      end
    end
  end
end
