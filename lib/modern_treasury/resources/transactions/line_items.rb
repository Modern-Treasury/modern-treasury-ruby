# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        # create transaction line items
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :amount If a matching object exists in Modern Treasury, `amount` will be populated.
        #     Value in specified currency's smallest unit (taken from parent Transaction).
        #
        #   @option params [String] :expected_payment_id The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @option params [String] :transaction_id The ID of the parent transaction.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        def create(params)
          parsed, options = ModernTreasury::Models::Transactions::LineItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/transaction_line_items",
            body: parsed,
            model: ModernTreasury::Models::Transactions::TransactionLineItem,
            options: options
          )
        end

        # get transaction line item
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/transaction_line_items/%1$s", id],
            model: ModernTreasury::Models::Transactions::TransactionLineItem,
            options: params[:request_options]
          )
        end

        # list transaction_line_items
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hash{Symbol=>String}] :id
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Integer] :per_page
        #
        #   @option params [String] :transaction_id
        #
        #   @option params [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil] :type
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Transactions::TransactionLineItem>]
        def list(params = {})
          parsed, options = ModernTreasury::Models::Transactions::LineItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/transaction_line_items",
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::Transactions::TransactionLineItem,
            options: options
          )
        end

        # delete transaction line item
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::Transactions::LineItemDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["api/transaction_line_items/%1$s", id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
