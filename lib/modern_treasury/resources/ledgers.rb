# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Ledgers
      # Create a ledger.
      #
      # @overload create(name:, description: nil, metadata: nil, request_options: {})
      #
      # @param name [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(id: nil, after_cursor: nil, metadata: nil, per_page: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param updated_at [Hash{Symbol=>Time}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
