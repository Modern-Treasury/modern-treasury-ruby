# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        # create invoice_line_item
        #
        # @overload create(invoice_id, name:, unit_amount:, description: nil, direction: nil, metadata: nil, quantity: nil, unit_amount_decimal: nil, request_options: {})
        #
        # @param invoice_id [String]
        # @param name [String]
        # @param unit_amount [Integer]
        # @param description [String]
        # @param direction [String]
        # @param metadata [Hash{Symbol=>String}]
        # @param quantity [Integer]
        # @param unit_amount_decimal [String]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemCreateParams
        def create(invoice_id, params)
          parsed, options = ModernTreasury::Models::Invoices::LineItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/invoices/%1$s/invoice_line_items", invoice_id],
            body: parsed,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # get invoice_line_item
        #
        # @overload retrieve(id, invoice_id:, request_options: {})
        #
        # @param id [String]
        # @param invoice_id [String]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemRetrieveParams
        def retrieve(id, params)
          parsed, options = ModernTreasury::Models::Invoices::LineItemRetrieveParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            model: ModernTreasury::Models::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # update invoice_line_item
        #
        # @overload update(id, invoice_id:, description: nil, direction: nil, metadata: nil, name: nil, quantity: nil, unit_amount: nil, unit_amount_decimal: nil, request_options: {})
        #
        # @param id [String]
        # @param invoice_id [String]
        # @param description [String]
        # @param direction [String]
        # @param metadata [Hash{Symbol=>String}]
        # @param name [String]
        # @param quantity [Integer]
        # @param unit_amount [Integer]
        # @param unit_amount_decimal [String]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemUpdateParams
        def update(id, params)
          parsed, options = ModernTreasury::Models::Invoices::LineItemUpdateParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            body: parsed,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # list invoice_line_items
        #
        # @overload list(invoice_id, after_cursor: nil, per_page: nil, request_options: {})
        #
        # @param invoice_id [String]
        # @param after_cursor [String, nil]
        # @param per_page [Integer]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Invoices::InvoiceLineItem>]
        #
        # @see ModernTreasury::Models::Invoices::LineItemListParams
        def list(invoice_id, params = {})
          parsed, options = ModernTreasury::Models::Invoices::LineItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/invoices/%1$s/invoice_line_items", invoice_id],
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # delete invoice_line_item
        #
        # @overload delete(id, invoice_id:, request_options: {})
        #
        # @param id [String]
        # @param invoice_id [String]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemDeleteParams
        def delete(id, params)
          parsed, options = ModernTreasury::Models::Invoices::LineItemDeleteParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            model: ModernTreasury::Models::Invoices::InvoiceLineItem,
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
end
