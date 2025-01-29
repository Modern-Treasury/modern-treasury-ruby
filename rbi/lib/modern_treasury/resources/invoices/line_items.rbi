# typed: strong

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        sig do
          params(
            invoice_id: String,
            params: T.any(
              ModernTreasury::Models::Invoices::LineItemCreateParams,
              T::Hash[Symbol, T.anything]
            ),
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def create(
          invoice_id,
          params,
          name:,
          unit_amount:,
          description:,
          direction:,
          metadata:,
          quantity:,
          unit_amount_decimal:,
          request_options: {}
        ); end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::Invoices::LineItemRetrieveParams,
              T::Hash[Symbol, T.anything]
            ),
            invoice_id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def retrieve(id, params, invoice_id:, request_options: {}); end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::Invoices::LineItemUpdateParams,
              T::Hash[Symbol, T.anything]
            ),
            invoice_id: String,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            quantity: Integer,
            unit_amount: Integer,
            unit_amount_decimal: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def update(
          id,
          params,
          invoice_id:,
          description:,
          direction:,
          metadata:,
          name:,
          quantity:,
          unit_amount:,
          unit_amount_decimal:,
          request_options: {}
        ); end

        sig do
          params(
            invoice_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Page[ModernTreasury::Models::Invoices::InvoiceLineItem])
        end
        def list(invoice_id, after_cursor:, per_page:, request_options: {}); end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::Invoices::LineItemDeleteParams,
              T::Hash[Symbol, T.anything]
            ),
            invoice_id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def delete(id, params, invoice_id:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
