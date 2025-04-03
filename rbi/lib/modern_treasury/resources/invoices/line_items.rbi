# typed: strong

module ModernTreasury
  module Resources
    class Invoices
      class LineItems
        # create invoice_line_item
        sig do
          params(
            invoice_id: String,
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def create(
          # invoice_id
          invoice_id,
          # The name of the line item, typically a product or SKU name.
          name:,
          # The cost per unit of the product or service that this line item is for,
          #   specified in the invoice currency's smallest unit.
          unit_amount:,
          # An optional free-form description of the line item.
          description: nil,
          # Either `debit` or `credit`. `debit` indicates that a client owes the business
          #   money and increases the invoice's `total_amount` due. `credit` has the opposite
          #   intention and effect.
          direction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          metadata: nil,
          # The number of units of a product or service that this line item is for. Must be
          #   a whole number. Defaults to 1 if not provided.
          quantity: nil,
          # The cost per unit of the product or service that this line item is for,
          #   specified in the invoice currency's smallest unit. Accepts decimal strings with
          #   up to 12 decimals
          unit_amount_decimal: nil,
          request_options: {}
        )
        end

        # get invoice_line_item
        sig do
          params(
            id: String,
            invoice_id: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def retrieve(
          # id
          id,
          # invoice_id
          invoice_id:,
          request_options: {}
        )
        end

        # update invoice_line_item
        sig do
          params(
            id: String,
            invoice_id: String,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            quantity: Integer,
            unit_amount: Integer,
            unit_amount_decimal: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def update(
          # Path param: id
          id,
          # Path param: invoice_id
          invoice_id:,
          # Body param: An optional free-form description of the line item.
          description: nil,
          # Body param: Either `debit` or `credit`. `debit` indicates that a client owes the
          #   business money and increases the invoice's `total_amount` due. `credit` has the
          #   opposite intention and effect.
          direction: nil,
          # Body param: Additional data represented as key-value pairs. Both the key and
          #   value must be strings.
          metadata: nil,
          # Body param: The name of the line item, typically a product or SKU name.
          name: nil,
          # Body param: The number of units of a product or service that this line item is
          #   for. Must be a whole number. Defaults to 1 if not provided.
          quantity: nil,
          # Body param: The cost per unit of the product or service that this line item is
          #   for, specified in the invoice currency's smallest unit.
          unit_amount: nil,
          # Body param: The cost per unit of the product or service that this line item is
          #   for, specified in the invoice currency's smallest unit. Accepts decimal strings
          #   with up to 12 decimals
          unit_amount_decimal: nil,
          request_options: {}
        )
        end

        # list invoice_line_items
        sig do
          params(
            invoice_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::Invoices::InvoiceLineItem])
        end
        def list(
          # invoice_id
          invoice_id,
          after_cursor: nil,
          per_page: nil,
          request_options: {}
        )
        end

        # delete invoice_line_item
        sig do
          params(
            id: String,
            invoice_id: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Invoices::InvoiceLineItem)
        end
        def delete(
          # id
          id,
          # invoice_id
          invoice_id:,
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
end
