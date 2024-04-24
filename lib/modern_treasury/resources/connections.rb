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
      # @option params [String] :after_cursor
      # @option params [String] :entity A string code representing the vendor (i.e. bank).
      # @option params [Integer] :per_page
      # @option params [String] :vendor_customer_id An identifier assigned by the vendor to your organization.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Connection>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/connections"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Connection
        @client.request(req, opts)
      end
    end
  end
end
