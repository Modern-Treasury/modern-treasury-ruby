# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class InvoiceLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The total amount for this line item specified in the invoice currency's smallest
        #   unit.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # An optional free-form description of the line item.
        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        sig { returns(String) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        sig { returns(String) }
        def unit_amount_decimal
        end

        sig { params(_: String).returns(String) }
        def unit_amount_decimal=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
          amount:,
          created_at:,
          description:,
          direction:,
          live_mode:,
          metadata:,
          name:,
          object:,
          quantity:,
          unit_amount:,
          unit_amount_decimal:,
          updated_at:
        )
        end

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
        def to_hash
        end
      end
    end

    InvoiceLineItem = Invoices::InvoiceLineItem
  end
end
