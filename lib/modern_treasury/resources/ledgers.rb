# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerCreateParams} for more details.
      #
      # Create a ledger.
      #
      # @overload create(name:, description: nil, metadata: nil, request_options: {})
      #
      # @param name [String] The name of the ledger.
      #
      # @param description [String, nil] An optional free-form description for internal use.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledgers",
          body: parsed,
          model: ModernTreasury::Ledger,
          options: options
        )
      end

      # Get details on a single ledger.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledgers/%1$s", id],
          model: ModernTreasury::Ledger,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerUpdateParams} for more details.
      #
      # Update the details of a ledger.
      #
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param description [String, nil] An optional free-form description for internal use.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param name [String] The name of the ledger.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LedgerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledgers/%1$s", id],
          body: parsed,
          model: ModernTreasury::Ledger,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerListParams} for more details.
      #
      # Get a list of ledgers.
      #
      # @overload list(id: nil, after_cursor: nil, metadata: nil, per_page: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      # @param after_cursor [String, nil]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Ledger>]
      #
      # @see ModernTreasury::Models::LedgerListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledgers",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Ledger,
          options: options
        )
      end

      # Delete a ledger.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Ledger]
      #
      # @see ModernTreasury::Models::LedgerDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledgers/%1$s", id],
          model: ModernTreasury::Ledger,
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
