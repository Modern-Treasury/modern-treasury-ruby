# typed: strong

module ModernTreasury
  module Resources
    class Invoices
      sig { returns(ModernTreasury::Resources::Invoices::LineItems) }
      attr_reader :line_items

      # create invoice
      sig do
        params(
          counterparty_id: String,
          due_date: Time,
          originating_account_id: String,
          auto_advance: T.nilable(T::Boolean),
          contact_details: T::Array[ModernTreasury::ContactDetail::OrHash],
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress::OrHash
            ),
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress::OrHash
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: String,
          fallback_payment_method: T.nilable(String),
          invoice_line_items:
            T.nilable(
              T::Array[
                ModernTreasury::InvoiceCreateParams::InvoiceLineItem::OrHash
              ]
            ),
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::InvoicerAddress::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          payment_effective_date: Date,
          payment_method:
            ModernTreasury::InvoiceCreateParams::PaymentMethod::OrSymbol,
          payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Invoice)
      end
      def create(
        # The ID of the counterparty receiving the invoice.
        counterparty_id:,
        # A future date by when the invoice needs to be paid.
        due_date:,
        # The ID of the internal account the invoice should be paid to.
        originating_account_id:,
        # When true, the invoice will progress to unpaid automatically and cannot be
        # edited after entering that state. If the invoice fails to progress to unpaid,
        # the errors will be returned and the invoice will not be created.
        auto_advance: nil,
        # The invoicer's contact details displayed at the top of the invoice.
        contact_details: nil,
        # The counterparty's billing address.
        counterparty_billing_address: nil,
        # The counterparty's shipping address where physical goods should be delivered.
        counterparty_shipping_address: nil,
        # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
        currency: nil,
        # A free-form description of the invoice.
        description: nil,
        # When payment_method is automatic, the fallback payment method to use when an
        # automatic payment fails. One of `manual` or `ui`.
        fallback_payment_method: nil,
        # An array of invoice line items. The API supports a maximum of 50 invoice line
        # items per invoice. If a greater number of invoice line items is required, please
        # contact support.
        invoice_line_items: nil,
        # The invoice issuer's business address.
        invoicer_address: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # Emails in addition to the counterparty email to send invoice status
        # notifications to. At least one email is required if notifications are enabled
        # and the counterparty doesn't have an email.
        notification_email_addresses: nil,
        # If true, the invoice will send email notifications to the invoice recipients
        # about invoice status changes.
        notifications_enabled: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        payment_effective_date: nil,
        # The method by which the invoice can be paid. `ui` will show the embedded payment
        # collection flow. `automatic` will automatically initiate payment based upon the
        # account details of the receiving_account id.\nIf the invoice amount is positive,
        # the automatically initiated payment order's direction will be debit. If the
        # invoice amount is negative, the automatically initiated payment order's
        # direction will be credit. One of `manual`, `ui`, or `automatic`.
        payment_method: nil,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        payment_type: nil,
        # The receiving account ID. Can be an `external_account`.
        receiving_account_id: nil,
        # The email of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_email: nil,
        # The name of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_name: nil,
        # Number of days after due date when overdue reminder emails will be sent out to
        # invoice recipients.
        remind_after_overdue_days: nil,
        # The ID of the virtual account the invoice should be paid to.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      # get invoice
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Invoice)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # update invoice
      sig do
        params(
          id: String,
          contact_details: T::Array[ModernTreasury::ContactDetail::OrHash],
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress::OrHash
            ),
          counterparty_id: String,
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress::OrHash
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: String,
          due_date: Time,
          fallback_payment_method: T.nilable(String),
          invoice_line_items:
            T.nilable(
              T::Array[
                ModernTreasury::InvoiceUpdateParams::InvoiceLineItem::OrHash
              ]
            ),
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::InvoicerAddress::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          originating_account_id: String,
          payment_effective_date: Date,
          payment_method:
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::OrSymbol,
          payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: String,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Invoice)
      end
      def update(
        # id
        id,
        # The invoicer's contact details displayed at the top of the invoice.
        contact_details: nil,
        # The counterparty's billing address.
        counterparty_billing_address: nil,
        # The ID of the counterparty receiving the invoice.
        counterparty_id: nil,
        # The counterparty's shipping address where physical goods should be delivered.
        counterparty_shipping_address: nil,
        # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
        currency: nil,
        # A free-form description of the invoice.
        description: nil,
        # A future date by when the invoice needs to be paid.
        due_date: nil,
        # When payment_method is automatic, the fallback payment method to use when an
        # automatic payment fails. One of `manual` or `ui`.
        fallback_payment_method: nil,
        # An array of invoice line items. The API supports a maximum of 50 invoice line
        # items per invoice. If a greater number of invoice line items is required, please
        # contact support.
        invoice_line_items: nil,
        # The invoice issuer's business address.
        invoicer_address: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # Emails in addition to the counterparty email to send invoice status
        # notifications to. At least one email is required if notifications are enabled
        # and the counterparty doesn't have an email.
        notification_email_addresses: nil,
        # If true, the invoice will send email notifications to the invoice recipients
        # about invoice status changes.
        notifications_enabled: nil,
        # The ID of the internal account the invoice should be paid to.
        originating_account_id: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        payment_effective_date: nil,
        # The method by which the invoice can be paid. `ui` will show the embedded payment
        # collection flow. `automatic` will automatically initiate payment based upon the
        # account details of the receiving_account id.\nIf the invoice amount is positive,
        # the automatically initiated payment order's direction will be debit. If the
        # invoice amount is negative, the automatically initiated payment order's
        # direction will be credit. One of `manual`, `ui`, or `automatic`.
        payment_method: nil,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        payment_type: nil,
        # The receiving account ID. Can be an `external_account`.
        receiving_account_id: nil,
        # The email of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_email: nil,
        # The name of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_name: nil,
        # Number of days after due date when overdue reminder emails will be sent out to
        # invoice recipients.
        remind_after_overdue_days: nil,
        # Invoice status must be updated in a `PATCH` request that does not modify any
        # other invoice attributes. Valid state transitions are `draft` to `unpaid`,
        # `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
        status: nil,
        # The ID of the virtual account the invoice should be paid to.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      # list invoices
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Time,
          created_at_start: Time,
          due_date_end: Date,
          due_date_start: Date,
          expected_payment_id: String,
          metadata: T::Hash[Symbol, String],
          number: String,
          originating_account_id: String,
          payment_order_id: String,
          per_page: Integer,
          status: ModernTreasury::InvoiceListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::Invoice])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        # An inclusive upper bound for searching created_at
        created_at_end: nil,
        # An inclusive lower bound for searching created_at
        created_at_start: nil,
        # An inclusive upper bound for searching due_date
        due_date_end: nil,
        # An inclusive lower bound for searching due_date
        due_date_start: nil,
        expected_payment_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # A unique record number assigned to each invoice that is issued.
        number: nil,
        originating_account_id: nil,
        payment_order_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      )
      end

      # Add a payment order to an invoice.
      sig do
        params(
          payment_order_id: String,
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def add_payment_order(
        # payment_order_id
        payment_order_id,
        # id
        id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
