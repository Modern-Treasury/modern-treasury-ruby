# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        # create transaction line items
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Integer] :amount If a matching object exists in Modern Treasury, `amount` will be populated.
        #     Value in specified currency's smallest unit (taken from parent Transaction).
        #
        #   @option params [String] :expected_payment_id The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @option params [String] :transaction_id The ID of the parent transaction.
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        #
        def create(params = {}, opts = {})
          parsed = ModernTreasury::Models::Transactions::LineItemCreateParams.dump(params)
          req = {
            method: :post,
            path: "api/transaction_line_items",
            body: parsed,
            model: ModernTreasury::Models::Transactions::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # get transaction line item
        #
        # @param id [String] id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        #
        def retrieve(id, opts = {})
          req = {
            method: :get,
            path: ["api/transaction_line_items/%0s", id],
            model: ModernTreasury::Models::Transactions::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # list transaction_line_items
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemListParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Hash{Symbol => String}] :id
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Integer] :per_page
        #
        #   @option params [String] :transaction_id
        #
        #   @option params [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil] :type
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Transactions::TransactionLineItem>]
        #
        def list(params = {}, opts = {})
          parsed = ModernTreasury::Models::Transactions::LineItemListParams.dump(params)
          req = {
            method: :get,
            path: "api/transaction_line_items",
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::Transactions::TransactionLineItem
          }
          @client.request(req, opts)
        end

        # delete transaction line item
        #
        # @param id [String] id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        #
        def delete(id, opts = {})
          req = {
            method: :delete,
            path: ["api/transaction_line_items/%0s", id],
            model: NilClass
          }
          @client.request(req, opts)
        end

        # @param client [ModernTreasury::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
