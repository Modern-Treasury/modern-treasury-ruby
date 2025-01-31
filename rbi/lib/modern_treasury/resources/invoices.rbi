# typed: strong

module ModernTreasury
  module Resources
    class Invoices
      sig { returns(ModernTreasury::Resources::Invoices::LineItems) }
      attr_reader :line_items

      sig do
        params(
          counterparty_id: String,
          due_date: Time,
          originating_account_id: String,
          auto_advance: T.nilable(T::Boolean),
          contact_details: T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress),
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress),
          currency: Symbol,
          description: String,
          fallback_payment_method: T.nilable(String),
          ingest_ledger_entries: T.nilable(T::Boolean),
          invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem]),
          invoicer_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          payment_effective_date: Date,
          payment_method: Symbol,
          payment_type: Symbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Invoice)
      end
      def create(
        counterparty_id:,
        due_date:,
        originating_account_id:,
        auto_advance:,
        contact_details:,
        counterparty_billing_address:,
        counterparty_shipping_address:,
        currency:,
        description:,
        fallback_payment_method:,
        ingest_ledger_entries:,
        invoice_line_items:,
        invoicer_address:,
        ledger_account_settlement_id:,
        metadata:,
        notification_email_addresses:,
        notifications_enabled:,
        payment_effective_date:,
        payment_method:,
        payment_type:,
        receiving_account_id:,
        recipient_email:,
        recipient_name:,
        remind_after_overdue_days:,
        virtual_account_id:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Invoice)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          contact_details: T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress),
          counterparty_id: String,
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress),
          currency: Symbol,
          description: String,
          due_date: Time,
          fallback_payment_method: T.nilable(String),
          ingest_ledger_entries: T.nilable(T::Boolean),
          invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem]),
          invoicer_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          originating_account_id: String,
          payment_effective_date: Date,
          payment_method: Symbol,
          payment_type: Symbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: String,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Invoice)
      end
      def update(
        id,
        contact_details:,
        counterparty_billing_address:,
        counterparty_id:,
        counterparty_shipping_address:,
        currency:,
        description:,
        due_date:,
        fallback_payment_method:,
        ingest_ledger_entries:,
        invoice_line_items:,
        invoicer_address:,
        ledger_account_settlement_id:,
        metadata:,
        notification_email_addresses:,
        notifications_enabled:,
        originating_account_id:,
        payment_effective_date:,
        payment_method:,
        payment_type:,
        receiving_account_id:,
        recipient_email:,
        recipient_name:,
        remind_after_overdue_days:,
        status:,
        virtual_account_id:,
        request_options: {}
      ); end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          due_date_end: Date,
          due_date_start: Date,
          expected_payment_id: String,
          metadata: T::Hash[Symbol, String],
          number: String,
          originating_account_id: String,
          payment_order_id: String,
          per_page: Integer,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Invoice])
      end
      def list(
        after_cursor:,
        counterparty_id:,
        due_date_end:,
        due_date_start:,
        expected_payment_id:,
        metadata:,
        number:,
        originating_account_id:,
        payment_order_id:,
        per_page:,
        status:,
        request_options: {}
      ); end

      sig { params(payment_order_id: String, id: String, request_options: ModernTreasury::RequestOpts).void }
      def add_payment_order(payment_order_id, id:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
