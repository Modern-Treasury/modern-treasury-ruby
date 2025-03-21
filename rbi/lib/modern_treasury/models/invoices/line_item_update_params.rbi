# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemUpdateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :invoice_id

        # An optional free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # The name of the line item, typically a product or SKU name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_amount

        sig { params(unit_amount: Integer).void }
        attr_writer :unit_amount

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal

        sig { params(unit_amount_decimal: String).void }
        attr_writer :unit_amount_decimal

        sig do
          params(
            invoice_id: String,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            quantity: Integer,
            unit_amount: Integer,
            unit_amount_decimal: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          invoice_id:,
          description: nil,
          direction: nil,
          metadata: nil,
          name: nil,
          quantity: nil,
          unit_amount: nil,
          unit_amount_decimal: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                invoice_id: String,
                description: String,
                direction: String,
                metadata: T::Hash[Symbol, String],
                name: String,
                quantity: Integer,
                unit_amount: Integer,
                unit_amount_decimal: String,
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
