# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      # Create a ledger.
      #
      # @param params [ModernTreasury::Models::LedgerCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :name The name of the ledger.
      #
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #
      #   @option params [Hash{Symbol => String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/ledgers",
          body: parsed,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger.
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/ledgers/%0s", id],
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Update the details of a ledger.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #
      #   @option params [Hash{Symbol => String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String] :name The name of the ledger.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/ledgers/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Get a list of ledgers.
      #
      # @param params [ModernTreasury::Models::LedgerListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol => String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Hash{Symbol => Time}] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Ledger>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerListParams.dump(params)
        req = {
          method: :get,
          path: "api/ledgers",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # Delete a ledger.
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: ["api/ledgers/%0s", id],
          model: ModernTreasury::Models::Ledger
        }
        @client.request(req, opts)
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
