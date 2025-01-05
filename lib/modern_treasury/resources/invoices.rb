# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      # @return [ModernTreasury::Resources::Invoices::LineItems]
      attr_reader :line_items

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
        @line_items = ModernTreasury::Resources::Invoices::LineItems.new(client: client)
      end

      # create invoice
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::InvoiceCreateParams] Attributes to send in this request.
      #
      #   @option params [String] :counterparty_id The ID of the counterparty receiving the invoice.
      #
      #   @option params [Time] :due_date A future date by when the invoice needs to be paid.
      #
      #   @option params [String] :originating_account_id The ID of the internal account the invoice should be paid to.
      #
      #   @option params [Boolean, nil] :auto_advance When true, the invoice will progress to unpaid automatically and cannot be
      #     edited after entering that state. If the invoice fails to progress to unpaid,
      #     the errors will be returned and the invoice will not be created.
      #
      #   @option params [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>] :contact_details The invoicer's contact details displayed at the top of the invoice.
      #
      #   @option params [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil] :counterparty_billing_address The counterparty's billing address.
      #
      #   @option params [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil] :counterparty_shipping_address The counterparty's shipping address where physical goods should be delivered.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :currency Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @option params [String] :description A free-form description of the invoice.
      #
      #   @option params [String, nil] :fallback_payment_method When payment_method is automatic, the fallback payment method to use when an
      #     automatic payment fails. One of `manual` or `ui`.
      #
      #   @option params [Boolean, nil] :ingest_ledger_entries Whether to ingest the ledger_entries to populate the invoice line items. If this
      #     is false, then a line item must be provided. If this is true, line_items must be
      #     empty. Ignored if ledger_account_settlement_id is empty.
      #
      #   @option params [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil] :invoice_line_items An array of invoice line items. The API supports a maximum of 50 invoice line
      #     items per invoice. If a greater number of invoice line items is required, please
      #     contact support.
      #
      #   @option params [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil] :invoicer_address The invoice issuer's business address.
      #
      #   @option params [String, nil] :ledger_account_settlement_id The ID of the virtual account the invoice should be paid to.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Array<String>, nil] :notification_email_addresses Emails in addition to the counterparty email to send invoice status
      #     notifications to. At least one email is required if notifications are enabled
      #     and the counterparty doesn't have an email.
      #
      #   @option params [Boolean] :notifications_enabled If true, the invoice will send email notifications to the invoice recipients
      #     about invoice status changes.
      #
      #   @option params [Date] :payment_effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #     current business day or the next business day if the current day is a bank
      #     holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @option params [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod] :payment_method The method by which the invoice can be paid. `ui` will show the embedded payment
      #     collection flow. `automatic` will automatically initiate payment based upon the
      #     account details of the receiving_account id.\nIf the invoice amount is positive,
      #     the automatically initiated payment order's direction will be debit. If the
      #     invoice amount is negative, the automatically initiated payment order's
      #     direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @option params [Symbol, ModernTreasury::Models::PaymentOrderType] :payment_type One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #     `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #     `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @option params [String] :receiving_account_id The receiving account ID. Can be an `external_account`.
      #
      #   @option params [String, nil] :recipient_email The email of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @option params [String, nil] :recipient_name The name of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @option params [Array<Integer>, nil] :remind_after_overdue_days Number of days after due date when overdue reminder emails will be sent out to
      #     invoice recipients.
      #
      #   @option params [String, nil] :virtual_account_id The ID of the virtual account the invoice should be paid to.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::InvoiceCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/invoices",
          body: parsed,
          model: ModernTreasury::Models::Invoice
        }
        @client.request(req, opts)
      end

      # get invoice
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/invoices/%0s", id],
          model: ModernTreasury::Models::Invoice
        }
        @client.request(req, opts)
      end

      # update invoice
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::InvoiceUpdateParams] Attributes to send in this request.
      #
      #   @option params [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>] :contact_details The invoicer's contact details displayed at the top of the invoice.
      #
      #   @option params [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress, nil] :counterparty_billing_address The counterparty's billing address.
      #
      #   @option params [String] :counterparty_id The ID of the counterparty receiving the invoice.
      #
      #   @option params [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress, nil] :counterparty_shipping_address The counterparty's shipping address where physical goods should be delivered.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :currency Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @option params [String] :description A free-form description of the invoice.
      #
      #   @option params [Time] :due_date A future date by when the invoice needs to be paid.
      #
      #   @option params [String, nil] :fallback_payment_method When payment_method is automatic, the fallback payment method to use when an
      #     automatic payment fails. One of `manual` or `ui`.
      #
      #   @option params [Boolean, nil] :ingest_ledger_entries Whether to ingest the ledger_entries to populate the invoice line items. If this
      #     is false, then a line item must be provided. If this is true, line_items must be
      #     empty. Ignored if ledger_account_settlement_id is empty.
      #
      #   @option params [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>, nil] :invoice_line_items An array of invoice line items. The API supports a maximum of 50 invoice line
      #     items per invoice. If a greater number of invoice line items is required, please
      #     contact support.
      #
      #   @option params [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress, nil] :invoicer_address The invoice issuer's business address.
      #
      #   @option params [String, nil] :ledger_account_settlement_id The ID of the virtual account the invoice should be paid to.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Array<String>, nil] :notification_email_addresses Emails in addition to the counterparty email to send invoice status
      #     notifications to. At least one email is required if notifications are enabled
      #     and the counterparty doesn't have an email.
      #
      #   @option params [Boolean] :notifications_enabled If true, the invoice will send email notifications to the invoice recipients
      #     about invoice status changes.
      #
      #   @option params [String] :originating_account_id The ID of the internal account the invoice should be paid to.
      #
      #   @option params [Date] :payment_effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #     current business day or the next business day if the current day is a bank
      #     holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @option params [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod] :payment_method The method by which the invoice can be paid. `ui` will show the embedded payment
      #     collection flow. `automatic` will automatically initiate payment based upon the
      #     account details of the receiving_account id.\nIf the invoice amount is positive,
      #     the automatically initiated payment order's direction will be debit. If the
      #     invoice amount is negative, the automatically initiated payment order's
      #     direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @option params [Symbol, ModernTreasury::Models::PaymentOrderType] :payment_type One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #     `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #     `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @option params [String] :receiving_account_id The receiving account ID. Can be an `external_account`.
      #
      #   @option params [String, nil] :recipient_email The email of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @option params [String, nil] :recipient_name The name of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @option params [Array<Integer>, nil] :remind_after_overdue_days Number of days after due date when overdue reminder emails will be sent out to
      #     invoice recipients.
      #
      #   @option params [String] :status Invoice status must be updated in a `PATCH` request that does not modify any
      #     other invoice attributes. Valid state transitions are `draft` to `unpaid`,
      #     `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
      #
      #   @option params [String, nil] :virtual_account_id The ID of the virtual account the invoice should be paid to.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      #
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::InvoiceUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/invoices/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::Invoice
        }
        @client.request(req, opts)
      end

      # list invoices
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::InvoiceListParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [Date] :due_date_end An inclusive upper bound for searching due_date
      #
      #   @option params [Date] :due_date_start An inclusive lower bound for searching due_date
      #
      #   @option params [String] :expected_payment_id
      #
      #   @option params [Hash{Symbol => String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [String] :number A unique record number assigned to each invoice that is issued.
      #
      #   @option params [String] :originating_account_id
      #
      #   @option params [String] :payment_order_id
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Symbol, ModernTreasury::Models::InvoiceListParams::Status] :status
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Invoice>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::InvoiceListParams.dump(params)
        req = {
          method: :get,
          path: "api/invoices",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Invoice
        }
        @client.request(req, opts)
      end

      # Add a payment order to an invoice.
      #
      # @param payment_order_id [String] payment_order_id
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::InvoiceAddPaymentOrderParams] Attributes to send in this request.
      #
      #   @option params [String] :id id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      #
      def add_payment_order(payment_order_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::InvoiceAddPaymentOrderParams.dump(params)
        id = parsed.fetch(:id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        req = {
          method: :put,
          path: ["api/invoices/%0s/payment_orders/%1s", id, payment_order_id],
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
