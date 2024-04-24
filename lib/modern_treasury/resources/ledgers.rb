# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      def initialize(client:)
        @client = client
      end

      # Create a ledger.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name The name of the ledger.
      # @option params [String] :description An optional free-form description for internal use.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledgers"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Ledger
        @client.request(req, opts)
      end

      # Get details on a single ledger.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledgers/#{id}"
        req[:model] = ModernTreasury::Models::Ledger
        @client.request(req, opts)
      end

      # Update the details of a ledger.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description An optional free-form description for internal use.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [String] :name The name of the ledger.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledgers/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Ledger
        @client.request(req, opts)
      end

      # Get a list of ledgers.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Integer] :per_page
      # @option params [Hash] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Ledger>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledgers"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Ledger
        @client.request(req, opts)
      end

      # Delete a ledger.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def delete(id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/ledgers/#{id}"
        req[:model] = ModernTreasury::Models::Ledger
        @client.request(req, opts)
      end
    end
  end
end
