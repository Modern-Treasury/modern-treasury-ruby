# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        def initialize(client:)
          @client = client
        end

        # get transaction line item
        #
        # @param id [String] id
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::TransactionLineItem]
        def retrieve(id, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/api/transaction_line_items/#{id}"
          req[:model] = ModernTreasury::Models::TransactionLineItem
          @client.request(req, opts)
        end

        # list transaction_line_items
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Hash] :id
        # @option params [String] :after_cursor
        # @option params [Integer] :per_page
        # @option params [String] :transaction_id
        # @option params [Symbol] :type
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::TransactionLineItem>]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/api/transaction_line_items"
          req[:query] = params
          req[:page] = ModernTreasury::Page
          req[:model] = ModernTreasury::Models::TransactionLineItem
          @client.request(req, opts)
        end
      end
    end
  end
end
