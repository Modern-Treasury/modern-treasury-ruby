# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaperItems
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Get details on a single paper item.
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaperItem]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/paper_items/#{id}",
          model: ModernTreasury::Models::PaperItem
        }
        @client.request(req, opts)
      end

      # Get a list of all paper items.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Date, nil] :deposit_date_end Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #   @option params [Date, nil] :deposit_date_start Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #   @option params [String, nil] :lockbox_number Specify `lockbox_number` if you wish to see paper items that are associated with
      #     a specific lockbox number.
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaperItem>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/paper_items",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::PaperItem
        }
        @client.request(req, opts)
      end
    end
  end
end
