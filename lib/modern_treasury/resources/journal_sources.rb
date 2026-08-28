# frozen_string_literal: true

module ModernTreasury
  module Resources
    class JournalSources
      # Retrieve a specific journal source
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the journal source
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalSourceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/journal_sources/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Retrieve a list of journal sources
      #
      # @overload list(journal_entry_id: nil, journal_report_id: nil, page: nil, per_page: nil, source_id: nil, source_type: nil, request_options: {})
      #
      # @param journal_entry_id [String] The ID of the journal entry
      #
      # @param journal_report_id [String] The ID of the journal report
      #
      # @param page [Integer] Page number for pagination
      #
      # @param per_page [Integer] Number of items per page
      #
      # @param source_id [String] The ID of the source object
      #
      # @param source_type [String] The type of the source object
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalSourceListParams
      def list(params = {})
        parsed, options = ModernTreasury::JournalSourceListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/journal_sources",
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
