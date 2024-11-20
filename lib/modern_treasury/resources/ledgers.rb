# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a ledger.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :name The name of the ledger.
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/ledgers",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/ledgers/#{id}",
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Update the details of a ledger.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [String, nil] :name The name of the ledger.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/ledgers/#{id}",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Get a list of ledgers.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<String>, nil] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @option params [String, nil] :after_cursor
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #   @option params [Hash, nil] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Ledger>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/ledgers",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Delete a ledger.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/ledgers/#{id}",
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end
    end
  end
end
