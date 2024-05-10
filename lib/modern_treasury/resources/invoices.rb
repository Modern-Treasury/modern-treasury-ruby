# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Invoices
      # @return [ModernTreasury::Resources::Invoices::LineItems]
      attr_reader :line_items

      def initialize(client:)
        @client = client
        @line_items = ModernTreasury::Resources::Invoices::LineItems.new(client: client)
      end

      # create invoice
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :counterparty_id The ID of the counterparty receiving the invoice.
      # @option params [String] :due_date A future date by when the invoice needs to be paid.
      # @option params [String] :originating_account_id The ID of the internal account the invoice should be paid to.
      # @option params [Array<ContactDetail>] :contact_details The invoicer's contact details displayed at the top of the invoice.
      # @option params [CounterpartyBillingAddress] :counterparty_billing_address The counterparty's billing address.
      # @option params [CounterpartyShippingAddress] :counterparty_shipping_address The counterparty's shipping address where physical goods should be delivered.
      # @option params [Symbol] :currency Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      # @option params [String] :description A free-form description of the invoice.
      # @option params [String] :fallback_payment_method When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      # @option params [Boolean] :ingest_ledger_entries Whether to ingest the ledger_entries to populate the invoice line items. If this
      #   is false, then a line item must be provided. If this is true, line_items must be
      #   empty. Ignored if ledger_account_settlement_id is empty.
      # @option params [Array<InvoiceLineItem>] :invoice_line_items An array of invoice line items. The API supports a maximum of 50 invoice line
      #   items per invoice. If a greater number of invoice line items is required, please
      #   contact support.
      # @option params [InvoicerAddress] :invoicer_address The invoice issuer's business address.
      # @option params [String] :ledger_account_settlement_id The ID of the virtual account the invoice should be paid to.
      # @option params [Array<String>] :notification_email_addresses Emails in addition to the counterparty email to send invoice status
      #   notifications to. At least one email is required if notifications are enabled
      #   and the counterparty doesn't have an email.
      # @option params [Boolean] :notifications_enabled If true, the invoice will send email notifications to the invoice recipients
      #   about invoice status changes.
      # @option params [String] :payment_effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @option params [Symbol] :payment_method The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      # @option params [Symbol] :payment_type One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`,
      #   `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`,
      #   `sic`, `signet`, `provexchange`, `zengin`.
      # @option params [String] :receiving_account_id The receiving account ID. Can be an `external_account`.
      # @option params [String] :recipient_email The email of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @option params [String] :recipient_name The name of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @option params [String] :virtual_account_id The ID of the virtual account the invoice should be paid to.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/invoices"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Invoice
        @client.request(req, opts)
      end

      # get invoice
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/invoices/#{id}"
        req[:model] = ModernTreasury::Models::Invoice
        @client.request(req, opts)
      end

      # update invoice
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<ContactDetail>] :contact_details The invoicer's contact details displayed at the top of the invoice.
      # @option params [CounterpartyBillingAddress] :counterparty_billing_address The counterparty's billing address.
      # @option params [String] :counterparty_id The ID of the counterparty receiving the invoice.
      # @option params [CounterpartyShippingAddress] :counterparty_shipping_address The counterparty's shipping address where physical goods should be delivered.
      # @option params [Symbol] :currency Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      # @option params [String] :description A free-form description of the invoice.
      # @option params [String] :due_date A future date by when the invoice needs to be paid.
      # @option params [String] :fallback_payment_method When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      # @option params [Boolean] :ingest_ledger_entries Whether to ingest the ledger_entries to populate the invoice line items. If this
      #   is false, then a line item must be provided. If this is true, line_items must be
      #   empty. Ignored if ledger_account_settlement_id is empty.
      # @option params [Array<InvoiceLineItem>] :invoice_line_items An array of invoice line items. The API supports a maximum of 50 invoice line
      #   items per invoice. If a greater number of invoice line items is required, please
      #   contact support.
      # @option params [InvoicerAddress] :invoicer_address The invoice issuer's business address.
      # @option params [String] :ledger_account_settlement_id The ID of the virtual account the invoice should be paid to.
      # @option params [Array<String>] :notification_email_addresses Emails in addition to the counterparty email to send invoice status
      #   notifications to. At least one email is required if notifications are enabled
      #   and the counterparty doesn't have an email.
      # @option params [Boolean] :notifications_enabled If true, the invoice will send email notifications to the invoice recipients
      #   about invoice status changes.
      # @option params [String] :originating_account_id The ID of the internal account the invoice should be paid to.
      # @option params [String] :payment_effective_date Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @option params [Symbol] :payment_method The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      # @option params [Symbol] :payment_type One of `ach`, `bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`,
      #   `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`,
      #   `sic`, `signet`, `provexchange`, `zengin`.
      # @option params [String] :receiving_account_id The receiving account ID. Can be an `external_account`.
      # @option params [String] :recipient_email The email of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @option params [String] :recipient_name The name of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @option params [String] :status Invoice status must be updated in a `PATCH` request that does not modify any
      #   other invoice attributes. Valid state transitions are `draft` to `unpaid`,
      #   `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
      # @option params [String] :virtual_account_id The ID of the virtual account the invoice should be paid to.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Invoice]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/invoices/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Invoice
        @client.request(req, opts)
      end

      # list invoices
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :counterparty_id
      # @option params [String] :due_date_end An inclusive upper bound for searching due_date
      # @option params [String] :due_date_start An inclusive lower bound for searching due_date
      # @option params [String] :expected_payment_id
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [String] :number A unique record number assigned to each invoice that is issued.
      # @option params [String] :originating_account_id
      # @option params [String] :payment_order_id
      # @option params [Integer] :per_page
      # @option params [Symbol] :status
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Invoice>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/invoices"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Invoice
        @client.request(req, opts)
      end

      # Add a payment order to an invoice.
      #
      # @param id [String] id
      # @param payment_order_id [String] payment_order_id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_payment_order(id, payment_order_id, opts = {})
        req = {}
        req[:method] = :put
        req[:path] = "/api/invoices/#{id}/payment_orders/#{payment_order_id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end
    end
  end
end
