# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      # Create a ledger.
      #
      # @param params [ModernTreasury::Models::LedgerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name The name of the ledger.
      #
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledgers",
          body: parsed,
          model: ModernTreasury::Models::Ledger,
          options: options
        )
      end

      # Get details on a single ledger.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledgers/%1$s", id],
          model: ModernTreasury::Models::Ledger,
          options: params[:request_options]
        )
      end

      # Update the details of a ledger.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :description An optional free-form description for internal use.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String] :name The name of the ledger.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledgers/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::Ledger,
          options: options
        )
      end

      # Get a list of ledgers.
      #
      # @param params [ModernTreasury::Models::LedgerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Hash{Symbol=>Time}] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Ledger>]
      #
      # @see ModernTreasury::Models::LedgerListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledgers",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Ledger,
          options: options
        )
      end

      # Delete a ledger.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledgers/%1$s", id],
          model: ModernTreasury::Models::Ledger,
          options: params[:request_options]
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
