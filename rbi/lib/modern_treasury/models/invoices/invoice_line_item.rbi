# typed: strong

module ModernTreasury
  module Models
    InvoiceLineItem = T.type_alias { Invoices::InvoiceLineItem }

    module Invoices
      class InvoiceLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

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

        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(String) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

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

        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { returns(Integer) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

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
  end
end
