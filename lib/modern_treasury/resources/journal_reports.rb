# frozen_string_literal: true

module ModernTreasury
  module Resources
    class JournalReports
      # Retrieve a specific journal report
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the journal report
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalReportRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/journal_reports/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Update a journal report
      #
      # @overload update(id, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String] The ID of the journal report
      #
      # @param metadata [Object]
      #
      # @param status [String]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalReportUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::JournalReportUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/journal_reports/%1$s", id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Retrieve a list of journal reports
      #
      # @overload list(request_options: {})
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::JournalReportListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/journal_reports",
          model: NilClass,
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
