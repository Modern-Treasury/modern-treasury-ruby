# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaperItems
      # Get details on a single paper item.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaperItem]
      #
      # @see ModernTreasury::Models::PaperItemRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/paper_items/%1$s", id],
          model: ModernTreasury::Models::PaperItem,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaperItemListParams} for more details.
      #
      # Get a list of all paper items.
      #
      # @overload list(after_cursor: nil, deposit_date_end: nil, deposit_date_start: nil, lockbox_number: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param deposit_date_end [Date] Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #
      # @param deposit_date_start [Date] Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #
      # @param lockbox_number [String] Specify `lockbox_number` if you wish to see paper items that are associated with
      # ...
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaperItem>]
      #
      # @see ModernTreasury::Models::PaperItemListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaperItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/paper_items",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::PaperItem,
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
