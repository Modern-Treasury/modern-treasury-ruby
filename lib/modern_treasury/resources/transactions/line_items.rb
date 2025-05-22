# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::Transactions::LineItemCreateParams} for more details.
        #
        # create transaction line items
        #
        # @overload create(amount:, expected_payment_id:, transaction_id:, request_options: {})
        #
        # @param amount [Integer] If a matching object exists in Modern Treasury, `amount` will be populated. Valu
        #
        # @param expected_payment_id [String] The ID of the reconciled Expected Payment, otherwise `null`.
        #
        # @param transaction_id [String] The ID of the parent transaction.
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        #
        # @see ModernTreasury::Models::Transactions::LineItemCreateParams
        def create(params)
          parsed, options = ModernTreasury::Transactions::LineItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/transaction_line_items",
            body: parsed,
            model: ModernTreasury::Transactions::TransactionLineItem,
            options: options
          )
        end

        # get transaction line item
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] id
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Transactions::TransactionLineItem]
        #
        # @see ModernTreasury::Models::Transactions::LineItemRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/transaction_line_items/%1$s", id],
            model: ModernTreasury::Transactions::TransactionLineItem,
            options: params[:request_options]
          )
        end

        # list transaction_line_items
        #
        # @overload list(id: nil, after_cursor: nil, per_page: nil, transaction_id: nil, type: nil, request_options: {})
        #
        # @param id [Hash{Symbol=>String}]
        # @param after_cursor [String, nil]
        # @param per_page [Integer]
        # @param transaction_id [String]
        # @param type [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Transactions::TransactionLineItem>]
        #
        # @see ModernTreasury::Models::Transactions::LineItemListParams
        def list(params = {})
          parsed, options = ModernTreasury::Transactions::LineItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/transaction_line_items",
            query: parsed,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::Transactions::TransactionLineItem,
            options: options
          )
        end

        # delete transaction line item
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] id
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::Transactions::LineItemDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["api/transaction_line_items/%1$s", id],
            model: NilClass,
            options: params[:request_options]
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
end
