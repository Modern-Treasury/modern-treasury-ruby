# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        def initialize(client:)
          @client = client
        end

        # create transaction line items
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :amount If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
        # @option params [String] :expected_payment_id The ID of the reconciled Expected Payment, otherwise `null`.
        # @option params [String] :transaction_id The ID of the parent transaction.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::TransactionLineItem]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/api/transaction_line_items"
          req[:body] = params
          req[:model] = ModernTreasury::Models::TransactionLineItem
          @client.request(req, opts)
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

        # delete transaction line item
        #
        # @param id [String] id
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def delete(id, opts = {})
          req = {}
          req[:method] = :delete
          req[:path] = "/api/transaction_line_items/#{id}"
          req[:model] = NilClass
          @client.request(req, opts)
        end
      end
    end
  end
end
