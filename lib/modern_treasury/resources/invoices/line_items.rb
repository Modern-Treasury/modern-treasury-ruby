# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        # create invoice_line_item
        #
        # @param invoice_id [String] invoice_id
        #
        # @param params [ModernTreasury::Models::Invoices::LineItemCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :name The name of the line item, typically a product or SKU name.
        #
        #   @option params [Integer] :unit_amount The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #
        #   @option params [String] :description An optional free-form description of the line item.
        #
        #   @option params [String] :direction Either `debit` or `credit`. `debit` indicates that a client owes the business
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #
        #   @option params [Hash{Symbol => String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @option params [Integer] :quantity The number of units of a product or service that this line item is for. Must be
        #     a whole number. Defaults to 1 if not provided.
        #
        #   @option params [String] :unit_amount_decimal The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        def create(invoice_id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemCreateParams.dump(params)
          req = {
            method: :post,
            path: ["api/invoices/%0s/invoice_line_items", invoice_id],
            body: parsed,
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # get invoice_line_item
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::Invoices::LineItemRetrieveParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :invoice_id invoice_id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        def retrieve(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemRetrieveParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :get,
            path: ["api/invoices/%0s/invoice_line_items/%1s", invoice_id, id],
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # update invoice_line_item
        #
        # @param id [String] Path param: id
        #
        # @param params [ModernTreasury::Models::Invoices::LineItemUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :invoice_id Path param: invoice_id
        #
        #   @option params [String] :description Body param: An optional free-form description of the line item.
        #
        #   @option params [String] :direction Body param: Either `debit` or `credit`. `debit` indicates that a client owes the
        #     business money and increases the invoice's `total_amount` due. `credit` has the
        #     opposite intention and effect.
        #
        #   @option params [Hash{Symbol => String}] :metadata Body param: Additional data represented as key-value pairs. Both the key and
        #     value must be strings.
        #
        #   @option params [String] :name Body param: The name of the line item, typically a product or SKU name.
        #
        #   @option params [Integer] :quantity Body param: The number of units of a product or service that this line item is
        #     for. Must be a whole number. Defaults to 1 if not provided.
        #
        #   @option params [Integer] :unit_amount Body param: The cost per unit of the product or service that this line item is
        #     for, specified in the invoice currency's smallest unit.
        #
        #   @option params [String] :unit_amount_decimal Body param: The cost per unit of the product or service that this line item is
        #     for, specified in the invoice currency's smallest unit. Accepts decimal strings
        #     with up to 12 decimals
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        def update(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemUpdateParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :patch,
            path: ["api/invoices/%0s/invoice_line_items/%1s", invoice_id, id],
            body: parsed.except(:invoice_id),
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
          }
          @client.request(req, opts)
        end

        # list invoice_line_items
        #
        # @param invoice_id [String] invoice_id
        #
        # @param params [ModernTreasury::Models::Invoices::LineItemListParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Integer] :per_page
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Invoices::InvoiceLineItem>]
        #
        def list(invoice_id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemListParams.dump(params)
          req = {
            method: :get,
            path: ["api/invoices/%0s/invoice_line_items", invoice_id],
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
        # @param params [ModernTreasury::Models::Invoices::LineItemDeleteParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :invoice_id invoice_id
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Invoices::InvoiceLineItem]
        #
        def delete(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::Invoices::LineItemDeleteParams.dump(params)
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :delete,
            path: ["api/invoices/%0s/invoice_line_items/%1s", invoice_id, id],
            model: ModernTreasury::Models::Invoices::InvoiceLineItem
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
