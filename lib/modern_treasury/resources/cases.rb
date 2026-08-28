# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Cases
      # Get details on a single case.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Case]
      #
      # @see ModernTreasury::Models::CaseRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/cases/%1$s", id],
          model: ModernTreasury::Case,
          options: params[:request_options]
        )
      end

      # Get a list of cases.
      #
      # @overload list(after_cursor: nil, per_page: nil, status: nil, subject_id: nil, subject_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::CaseListParams::Status] The status of the case.
      #
      # @param subject_id [String] The ID of the object the case is about.
      #
      # @param subject_type [Symbol, ModernTreasury::Models::CaseListParams::SubjectType] The type of the object the case is about.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Case>]
      #
      # @see ModernTreasury::Models::CaseListParams
      def list(params = {})
        parsed, options = ModernTreasury::CaseListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/cases",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Case,
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
