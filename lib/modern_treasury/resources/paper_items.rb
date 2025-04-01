# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaperItems
      # Get details on a single paper item.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::PaperItemRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param params [ModernTreasury::Models::PaperItemListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Date] :deposit_date_end Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @option params [Date] :deposit_date_start Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @option params [String] :lockbox_number Specify `lockbox_number` if you wish to see paper items that are associated with
      #     a specific lockbox number.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
