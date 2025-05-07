# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemUpdateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :invoice_id

        # An optional free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        # money and increases the invoice's `total_amount` due. `credit` has the opposite
        # intention and effect.
        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
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
        # a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit.
        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_amount

        sig { params(unit_amount: Integer).void }
        attr_writer :unit_amount

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit. Accepts decimal strings with
        # up to 12 decimals
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
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          invoice_id:,
          # An optional free-form description of the line item.
          description: nil,
          # Either `debit` or `credit`. `debit` indicates that a client owes the business
          # money and increases the invoice's `total_amount` due. `credit` has the opposite
          # intention and effect.
          direction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # The name of the line item, typically a product or SKU name.
          name: nil,
          # The number of units of a product or service that this line item is for. Must be
          # a whole number. Defaults to 1 if not provided.
          quantity: nil,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit.
          unit_amount: nil,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit. Accepts decimal strings with
          # up to 12 decimals
          unit_amount_decimal: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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
