# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      # @return [ModernTreasury::Resources::Invoices::LineItems]
      attr_reader :line_items

      # create invoice
      #
      # @overload create(counterparty_id:, due_date:, originating_account_id:, auto_advance: nil, contact_details: nil, counterparty_billing_address: nil, counterparty_shipping_address: nil, currency: nil, description: nil, fallback_payment_method: nil, ingest_ledger_entries: nil, invoice_line_items: nil, invoicer_address: nil, ledger_account_settlement_id: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, payment_effective_date: nil, payment_method: nil, payment_type: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, virtual_account_id: nil, request_options: {})
      #
      # @param counterparty_id [String]
      # @param due_date [Time]
      # @param originating_account_id [String]
      # @param auto_advance [Boolean, nil]
      # @param contact_details [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>]
      # @param counterparty_billing_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil]
      # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param description [String]
      # @param fallback_payment_method [String, nil]
      # @param ingest_ledger_entries [Boolean, nil]
      # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil]
      # @param invoicer_address [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil]
      # @param ledger_account_settlement_id [String, nil]
      # @param metadata [Hash{Symbol=>String}, nil]
      # @param notification_email_addresses [Array<String>, nil]
      # @param notifications_enabled [Boolean]
      # @param payment_effective_date [Date]
      # @param payment_method [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod]
      # @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType]
      # @param receiving_account_id [String]
      # @param recipient_email [String, nil]
      # @param recipient_name [String, nil]
      # @param remind_after_overdue_days [Array<Integer>, nil]
      # @param virtual_account_id [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::InvoiceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/invoices",
          body: parsed,
          model: ModernTreasury::Models::Invoice,
          options: options
        )
      end

      # get invoice
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/invoices/%1$s", id],
          model: ModernTreasury::Models::Invoice,
          options: params[:request_options]
        )
      end

      # update invoice
      #
      # @overload update(id, contact_details: nil, counterparty_billing_address: nil, counterparty_id: nil, counterparty_shipping_address: nil, currency: nil, description: nil, due_date: nil, fallback_payment_method: nil, ingest_ledger_entries: nil, invoice_line_items: nil, invoicer_address: nil, ledger_account_settlement_id: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, originating_account_id: nil, payment_effective_date: nil, payment_method: nil, payment_type: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, status: nil, virtual_account_id: nil, request_options: {})
      #
      # @param id [String]
      # @param contact_details [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>]
      # @param counterparty_billing_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress, nil]
      # @param counterparty_id [String]
      # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param description [String]
      # @param due_date [Time]
      # @param fallback_payment_method [String, nil]
      # @param ingest_ledger_entries [Boolean, nil]
      # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>, nil]
      # @param invoicer_address [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress, nil]
      # @param ledger_account_settlement_id [String, nil]
      # @param metadata [Hash{Symbol=>String}, nil]
      # @param notification_email_addresses [Array<String>, nil]
      # @param notifications_enabled [Boolean]
      # @param originating_account_id [String]
      # @param payment_effective_date [Date]
      # @param payment_method [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod]
      # @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType]
      # @param receiving_account_id [String]
      # @param recipient_email [String, nil]
      # @param recipient_name [String, nil]
      # @param remind_after_overdue_days [Array<Integer>, nil]
      # @param status [String]
      # @param virtual_account_id [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::InvoiceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/invoices/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::Invoice,
          options: options
        )
      end

      # list invoices
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, due_date_end: nil, due_date_start: nil, expected_payment_id: nil, metadata: nil, number: nil, originating_account_id: nil, payment_order_id: nil, per_page: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param due_date_end [Date]
      # @param due_date_start [Date]
      # @param expected_payment_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param number [String]
      # @param originating_account_id [String]
      # @param payment_order_id [String]
      # @param per_page [Integer]
      # @param status [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Invoice>]
      #
      # @see ModernTreasury::Models::InvoiceListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/invoices",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Invoice,
          options: options
        )
      end

      # Add a payment order to an invoice.
      #
      # @overload add_payment_order(payment_order_id, id:, request_options: {})
      #
      # @param payment_order_id [String]
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::InvoiceAddPaymentOrderParams
      def add_payment_order(payment_order_id, params)
        parsed, options = ModernTreasury::Models::InvoiceAddPaymentOrderParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/invoices/%1$s/payment_orders/%2$s", id, payment_order_id],
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @line_items = ModernTreasury::Resources::Invoices::LineItems.new(client: client)
      end
    end
  end
end
