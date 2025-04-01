# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaperItems
      # Get details on a single paper item.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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

      # Get a list of all paper items.
      #
      # @overload list(after_cursor: nil, deposit_date_end: nil, deposit_date_start: nil, lockbox_number: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param deposit_date_end [Date]
      # @param deposit_date_start [Date]
      # @param lockbox_number [String]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaperItem>]
      #
      # @see ModernTreasury::Models::PaperItemListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaperItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/paper_items",
          query: parsed,
          page: ModernTreasury::Page,
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
