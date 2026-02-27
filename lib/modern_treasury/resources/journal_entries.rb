# frozen_string_literal: true

module ModernTreasury
  module Resources
    class JournalEntries
      # Retrieve a specific journal entry
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the journal entry
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalEntryRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/journal_entries/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Retrieve a list of journal entries
      #
      # @overload list(journal_report_id:, page: nil, per_page: nil, request_options: {})
      #
      # @param journal_report_id [String] The ID of the journal report
      #
      # @param page [Integer] Page number for pagination
      #
      # @param per_page [Integer] Number of items per page
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalEntryListParams
      def list(params)
        parsed, options = ModernTreasury::JournalEntryListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/journal_entries",
          query: query,
          model: NilClass,
          options: options
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
