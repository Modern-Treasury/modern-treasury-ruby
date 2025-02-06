# typed: strong

module ModernTreasury
  module Models
    InvoiceLineItem = T.type_alias { Invoices::InvoiceLineItem }

    module Invoices
      class InvoiceLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :direction

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { returns(Integer) }
        attr_accessor :unit_amount

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
          ).void
        end
        def initialize(
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
          override.returns(
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
