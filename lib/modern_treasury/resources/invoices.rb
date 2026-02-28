# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      # @return [ModernTreasury::Resources::Invoices::LineItems]
      attr_reader :line_items

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InvoiceCreateParams} for more details.
      #
      # create invoice
      #
      # @overload create(counterparty_id:, due_date:, originating_account_id:, auto_advance: nil, contact_details: nil, counterparty_billing_address: nil, counterparty_shipping_address: nil, currency: nil, description: nil, fallback_payment_method: nil, invoice_line_items: nil, invoicer_address: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, payment_effective_date: nil, payment_method: nil, payment_type: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, virtual_account_id: nil, request_options: {})
      #
      # @param counterparty_id [String] The ID of the counterparty receiving the invoice.
      #
      # @param due_date [Time] A future date by when the invoice needs to be paid.
      #
      # @param originating_account_id [String] The ID of the internal account the invoice should be paid to.
      #
      # @param auto_advance [Boolean, nil] When true, the invoice will progress to unpaid automatically and cannot be edite
      #
      # @param contact_details [Array<ModernTreasury::Models::ContactDetail>] The invoicer's contact details displayed at the top of the invoice.
      #
      # @param counterparty_billing_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil] The counterparty's billing address.
      #
      # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil] The counterparty's shipping address where physical goods should be delivered.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      # @param description [String] A free-form description of the invoice.
      #
      # @param fallback_payment_method [String, nil] When payment_method is automatic, the fallback payment method to use when an aut
      #
      # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil] An array of invoice line items. The API supports a maximum of 50 invoice line it
      #
      # @param invoicer_address [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil] The invoice issuer's business address.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param notification_email_addresses [Array<String>, nil] Emails in addition to the counterparty email to send invoice status notification
      #
      # @param notifications_enabled [Boolean] If true, the invoice will send email notifications to the invoice recipients abo
      #
      # @param payment_effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      # @param payment_method [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod] The method by which the invoice can be paid. `ui` will show the embedded payment
      #
      # @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      # @param receiving_account_id [String] The receiving account ID. Can be an `external_account`.
      #
      # @param recipient_email [String, nil] The email of the recipient of the invoice. Leaving this value as null will fallb
      #
      # @param recipient_name [String, nil] The name of the recipient of the invoice. Leaving this value as null will fallba
      #
      # @param remind_after_overdue_days [Array<Integer>, nil] Number of days after due date when overdue reminder emails will be sent out to i
      #
      # @param virtual_account_id [String, nil] The ID of the virtual account the invoice should be paid to.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceCreateParams
      def create(params)
        parsed, options = ModernTreasury::InvoiceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/invoices",
          body: parsed,
          model: ModernTreasury::Invoice,
          options: options
        )
      end

      # get invoice
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/invoices/%1$s", id],
          model: ModernTreasury::Invoice,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InvoiceUpdateParams} for more details.
      #
      # update invoice
      #
      # @overload update(id, contact_details: nil, counterparty_billing_address: nil, counterparty_id: nil, counterparty_shipping_address: nil, currency: nil, description: nil, due_date: nil, fallback_payment_method: nil, invoice_line_items: nil, invoicer_address: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, originating_account_id: nil, payment_effective_date: nil, payment_method: nil, payment_type: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, status: nil, virtual_account_id: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param contact_details [Array<ModernTreasury::Models::ContactDetail>] The invoicer's contact details displayed at the top of the invoice.
      #
      # @param counterparty_billing_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress, nil] The counterparty's billing address.
      #
      # @param counterparty_id [String] The ID of the counterparty receiving the invoice.
      #
      # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress, nil] The counterparty's shipping address where physical goods should be delivered.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      # @param description [String] A free-form description of the invoice.
      #
      # @param due_date [Time] A future date by when the invoice needs to be paid.
      #
      # @param fallback_payment_method [String, nil] When payment_method is automatic, the fallback payment method to use when an aut
      #
      # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>, nil] An array of invoice line items. The API supports a maximum of 50 invoice line it
      #
      # @param invoicer_address [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress, nil] The invoice issuer's business address.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param notification_email_addresses [Array<String>, nil] Emails in addition to the counterparty email to send invoice status notification
      #
      # @param notifications_enabled [Boolean] If true, the invoice will send email notifications to the invoice recipients abo
      #
      # @param originating_account_id [String] The ID of the internal account the invoice should be paid to.
      #
      # @param payment_effective_date [Date] Date transactions are to be posted to the participants' account. Defaults to the
      #
      # @param payment_method [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod] The method by which the invoice can be paid. `ui` will show the embedded payment
      #
      # @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sep
      #
      # @param receiving_account_id [String] The receiving account ID. Can be an `external_account`.
      #
      # @param recipient_email [String, nil] The email of the recipient of the invoice. Leaving this value as null will fallb
      #
      # @param recipient_name [String, nil] The name of the recipient of the invoice. Leaving this value as null will fallba
      #
      # @param remind_after_overdue_days [Array<Integer>, nil] Number of days after due date when overdue reminder emails will be sent out to i
      #
      # @param status [String] Invoice status must be updated in a `PATCH` request that does not modify any oth
      #
      # @param virtual_account_id [String, nil] The ID of the virtual account the invoice should be paid to.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      # @see ModernTreasury::Models::InvoiceUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::InvoiceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/invoices/%1$s", id],
          body: parsed,
          model: ModernTreasury::Invoice,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InvoiceListParams} for more details.
      #
      # list invoices
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, created_at_end: nil, created_at_start: nil, due_date_end: nil, due_date_start: nil, expected_payment_id: nil, metadata: nil, number: nil, originating_account_id: nil, payment_order_id: nil, per_page: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String]
      #
      # @param created_at_end [Time] An inclusive upper bound for searching created_at
      #
      # @param created_at_start [Time] An inclusive lower bound for searching created_at
      #
      # @param due_date_end [Date] An inclusive upper bound for searching due_date
      #
      # @param due_date_start [Date] An inclusive lower bound for searching due_date
      #
      # @param expected_payment_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param number [String] A unique record number assigned to each invoice that is issued.
      #
      # @param originating_account_id [String]
      #
      # @param payment_order_id [String]
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Invoice>]
      #
      # @see ModernTreasury::Models::InvoiceListParams
      def list(params = {})
        parsed, options = ModernTreasury::InvoiceListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/invoices",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Invoice,
          options: options
        )
      end

      # Add a payment order to an invoice.
      #
      # @overload add_payment_order(payment_order_id, id:, request_options: {})
      #
      # @param payment_order_id [String] payment_order_id
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::InvoiceAddPaymentOrderParams
      def add_payment_order(payment_order_id, params)
        parsed, options = ModernTreasury::InvoiceAddPaymentOrderParams.dump_request(params)
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
