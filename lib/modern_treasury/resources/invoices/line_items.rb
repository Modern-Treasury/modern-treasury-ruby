# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end

        # create invoice_line_item
        #
        # @param invoice_id [String] invoice_id
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :name The name of the line item, typically a product or SKU name.
        #   @option params [Integer] :unit_amount The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #   @option params [String, nil] :description An optional free-form description of the line item.
        #   @option params [String, nil] :direction Either `debit` or `credit`. `debit` indicates that a client owes the business
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #   @option params [Integer, nil] :quantity The number of units of a product or service that this line item is for. Must be
        #     a whole number. Defaults to 1 if not provided.
        #   @option params [String, nil] :unit_amount_decimal The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::InvoiceLineItem]
        def create(invoice_id, params = {}, opts = {})
          req = {
            method: :post,
            path: "/api/invoices/#{invoice_id}/invoice_line_items",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: ModernTreasury::Models::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # get invoice_line_item
        #
        # @param invoice_id [String] invoice_id
        # @param id [String] id
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::InvoiceLineItem]
        def retrieve(invoice_id, id, opts = {})
          req = {
            method: :get,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            model: ModernTreasury::Models::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # update invoice_line_item
        #
        # @param invoice_id [String] invoice_id
        #
        # @param id [String] id
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String, nil] :description An optional free-form description of the line item.
        #   @option params [String, nil] :direction Either `debit` or `credit`. `debit` indicates that a client owes the business
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #   @option params [String, nil] :name The name of the line item, typically a product or SKU name.
        #   @option params [Integer, nil] :quantity The number of units of a product or service that this line item is for. Must be
        #     a whole number. Defaults to 1 if not provided.
        #   @option params [Integer, nil] :unit_amount The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #   @option params [String, nil] :unit_amount_decimal The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::InvoiceLineItem]
        def update(invoice_id, id, params = {}, opts = {})
          req = {
            method: :patch,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: ModernTreasury::Models::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # list invoice_line_items
        #
        # @param invoice_id [String] invoice_id
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String, nil] :after_cursor
        #   @option params [Integer, nil] :per_page
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::InvoiceLineItem>]
        def list(invoice_id, params = {}, opts = {})
          req = {
            method: :get,
            path: "/api/invoices/#{invoice_id}/invoice_line_items",
            query: params,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # delete invoice_line_item
        #
        # @param invoice_id [String] invoice_id
        # @param id [String] id
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::InvoiceLineItem]
        def delete(invoice_id, id, opts = {})
          req = {
            method: :delete,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            model: ModernTreasury::Models::InvoiceLineItem
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
