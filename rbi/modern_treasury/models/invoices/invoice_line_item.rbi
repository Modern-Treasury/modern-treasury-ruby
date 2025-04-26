# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class InvoiceLineItem < ModernTreasury::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The total amount for this line item specified in the invoice currency's smallest
        # unit.
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        # An optional free-form description of the line item.
        sig { returns(String) }
        attr_accessor :description

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        # money and increases the invoice's `total_amount` due. `credit` has the opposite
        # intention and effect.
        sig { returns(String) }
        attr_accessor :direction

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object

        # The number of units of a product or service that this line item is for. Must be
        # a whole number. Defaults to 1 if not provided.
        sig { returns(Integer) }
        attr_accessor :quantity

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :unit_amount

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit. Accepts decimal strings with
        # up to 12 decimals
        sig { returns(String) }
        attr_accessor :unit_amount_decimal

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Time,
            description: String,
            direction: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: String,
            object: String,
            quantity: Integer,
            unit_amount: Integer,
            unit_amount_decimal: String,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          # The total amount for this line item specified in the invoice currency's smallest
          # unit.
          amount:,
          created_at:,
          # An optional free-form description of the line item.
          description:,
          # Either `debit` or `credit`. `debit` indicates that a client owes the business
          # money and increases the invoice's `total_amount` due. `credit` has the opposite
          # intention and effect.
          direction:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata:,
          # The name of the line item, typically a product or SKU name.
          name:,
          object:,
          # The number of units of a product or service that this line item is for. Must be
          # a whole number. Defaults to 1 if not provided.
          quantity:,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit.
          unit_amount:,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit. Accepts decimal strings with
          # up to 12 decimals
          unit_amount_decimal:,
          updated_at:
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                amount: Integer,
                created_at: Time,
                description: String,
                direction: String,
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                name: String,
                object: String,
                quantity: Integer,
                unit_amount: Integer,
                unit_amount_decimal: String,
                updated_at: Time
              }
            )
        end
        def to_hash; end
      end
    end

    InvoiceLineItem = Invoices::InvoiceLineItem
  end
end
