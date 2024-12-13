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
        # @param params [Hash{Symbol => Object}, ModernTreasury::Models::Invoices::LineItemCreateParams] Attributes to send in this request.
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
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        def create(invoice_id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemCreateParams.dump(params)
          req = {
            method: :post,
            path: "/api/invoices/#{invoice_id}/invoice_line_items",
            body: parsed,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # get invoice_line_item
        #
        # @param id [String] id
        #
        # @param params [Hash{Symbol => Object}, ModernTreasury::Models::Invoices::LineItemRetrieveParams] Attributes to send in this request.
        #   @option params [String] :invoice_id invoice_id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        def retrieve(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemRetrieveParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument :invoice_id")
          end
          req = {
            method: :get,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # update invoice_line_item
        #
        # @param id [String] Path param: id
        #
        # @param params [Hash{Symbol => Object}, ModernTreasury::Models::Invoices::LineItemUpdateParams] Attributes to send in this request.
        #   @option params [String] :invoice_id Path param: invoice_id
        #   @option params [String, nil] :description Body param: An optional free-form description of the line item.
        #   @option params [String, nil] :direction Body param: Either `debit` or `credit`. `debit` indicates that a client owes the
        #     business money and increases the invoice's `total_amount` due. `credit` has the
        #     opposite intention and effect.
        #   @option params [Hash, nil] :metadata Body param: Additional data represented as key-value pairs. Both the key and
        #     value must be strings.
        #   @option params [String, nil] :name Body param: The name of the line item, typically a product or SKU name.
        #   @option params [Integer, nil] :quantity Body param: The number of units of a product or service that this line item is
        #     for. Must be a whole number. Defaults to 1 if not provided.
        #   @option params [Integer, nil] :unit_amount Body param: The cost per unit of the product or service that this line item is
        #     for, specified in the invoice currency's smallest unit.
        #   @option params [String, nil] :unit_amount_decimal Body param: The cost per unit of the product or service that this line item is
        #     for, specified in the invoice currency's smallest unit. Accepts decimal strings
        #     with up to 12 decimals
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        def update(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemUpdateParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument :invoice_id")
          end
          req = {
            method: :patch,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            body: parsed.except(:invoice_id),
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # list invoice_line_items
        #
        # @param invoice_id [String] invoice_id
        #
        # @param params [Hash{Symbol => Object}, ModernTreasury::Models::Invoices::LineItemListParams] Attributes to send in this request.
        #   @option params [String, nil] :after_cursor
        #   @option params [Integer, nil] :per_page
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Invoices::InvoiceLineItem>]
        def list(invoice_id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemListParams.dump(params)
          req = {
            method: :get,
            path: "/api/invoices/#{invoice_id}/invoice_line_items",
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # delete invoice_line_item
        #
        # @param id [String] id
        #
        # @param params [Hash{Symbol => Object}, ModernTreasury::Models::Invoices::LineItemDeleteParams] Attributes to send in this request.
        #   @option params [String] :invoice_id invoice_id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        def delete(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemDeleteParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument :invoice_id")
          end
          req = {
            method: :delete,
            path: "/api/invoices/#{invoice_id}/invoice_line_items/#{id}",
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
