# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end

        # create transaction line items
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Integer] :amount If a matching object exists in Modern Treasury, `amount` will be populated.
        #     Value in specified currency's smallest unit (taken from parent Transaction).
        #   @option params [String] :expected_payment_id The ID of the reconciled Expected Payment, otherwise `null`.
        #   @option params [String] :transaction_id The ID of the parent transaction.
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::TransactionLineItem]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/api/transaction_line_items",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: ModernTreasury::Models::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # get transaction line item
        #
        # @param id [String] id
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::TransactionLineItem]
        def retrieve(id, opts = {})
          req = {
            method: :get,
            path: "/api/transaction_line_items/#{id}",
            model: ModernTreasury::Models::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # list transaction_line_items
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Hash, nil] :id
        #   @option params [String, nil] :after_cursor
        #   @option params [Integer, nil] :per_page
        #   @option params [String, nil] :transaction_id
        #   @option params [Symbol, Type, nil] :type
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::TransactionLineItem>]
        def list(params = {}, opts = {})
          req = {
            method: :get,
            path: "/api/transaction_line_items",
            query: params,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # delete transaction line item
        #
        # @param id [String] id
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def delete(id, opts = {})
          req = {
            method: :delete,
            path: "/api/transaction_line_items/#{id}",
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
