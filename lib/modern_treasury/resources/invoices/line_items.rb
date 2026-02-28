# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::Invoices::LineItemCreateParams} for more details.
        #
        # create invoice_line_item
        #
        # @overload create(invoice_id, name:, unit_amount:, description: nil, direction: nil, metadata: nil, quantity: nil, unit_amount_decimal: nil, request_options: {})
        #
        # @param invoice_id [String] invoice_id
        #
        # @param name [String] The name of the line item, typically a product or SKU name.
        #
        # @param unit_amount [Integer] The cost per unit of the product or service that this line item is for,
        #
        # @param description [String] An optional free-form description of the line item.
        #
        # @param direction [String] Either `debit` or `credit`. `debit` indicates that a client owes the business mo
        #
        # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        # @param quantity [Integer] The number of units of a product or service that this line item is for.
        #
        # @param unit_amount_decimal [String] The cost per unit of the product or service that this line item is for,
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemCreateParams
        def create(invoice_id, params)
          parsed, options = ModernTreasury::Invoices::LineItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/invoices/%1$s/invoice_line_items", invoice_id],
            body: parsed,
            model: ModernTreasury::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # get invoice_line_item
        #
        # @overload retrieve(id, invoice_id:, request_options: {})
        #
        # @param id [String] id
        #
        # @param invoice_id [String] invoice_id
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemRetrieveParams
        def retrieve(id, params)
          parsed, options = ModernTreasury::Invoices::LineItemRetrieveParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            model: ModernTreasury::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::Invoices::LineItemUpdateParams} for more details.
        #
        # update invoice_line_item
        #
        # @overload update(id, invoice_id:, description: nil, direction: nil, metadata: nil, name: nil, quantity: nil, unit_amount: nil, unit_amount_decimal: nil, request_options: {})
        #
        # @param id [String] Path param: id
        #
        # @param invoice_id [String] Path param: invoice_id
        #
        # @param description [String] Body param: An optional free-form description of the line item.
        #
        # @param direction [String] Body param: Either `debit` or `credit`. `debit` indicates that a client owes the
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Additional data represented as key-value pairs. Both the key and val
        #
        # @param name [String] Body param: The name of the line item, typically a product or SKU name.
        #
        # @param quantity [Integer] Body param: The number of units of a product or service that this line item is f
        #
        # @param unit_amount [Integer] Body param: The cost per unit of the product or service that this line item is f
        #
        # @param unit_amount_decimal [String] Body param: The cost per unit of the product or service that this line item is f
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemUpdateParams
        def update(id, params)
          parsed, options = ModernTreasury::Invoices::LineItemUpdateParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            body: parsed,
            model: ModernTreasury::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # list invoice_line_items
        #
        # @overload list(invoice_id, after_cursor: nil, per_page: nil, request_options: {})
        #
        # @param invoice_id [String] invoice_id
        #
        # @param after_cursor [String, nil]
        #
        # @param per_page [Integer]
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Invoices::InvoiceLineItem>]
        #
        # @see ModernTreasury::Models::Invoices::LineItemListParams
        def list(invoice_id, params = {})
          parsed, options = ModernTreasury::Invoices::LineItemListParams.dump_request(params)
          query = ModernTreasury::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/invoices/%1$s/invoice_line_items", invoice_id],
            query: query,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::Invoices::InvoiceLineItem,
            options: options
          )
        end

        # delete invoice_line_item
        #
        # @overload delete(id, invoice_id:, request_options: {})
        #
        # @param id [String] id
        #
        # @param invoice_id [String] invoice_id
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        # @see ModernTreasury::Models::Invoices::LineItemDeleteParams
        def delete(id, params)
          parsed, options = ModernTreasury::Invoices::LineItemDeleteParams.dump_request(params)
          invoice_id =
            parsed.delete(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/invoices/%1$s/invoice_line_items/%2$s", invoice_id, id],
            model: ModernTreasury::Invoices::InvoiceLineItem,
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
