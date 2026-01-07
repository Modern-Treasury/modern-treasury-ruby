# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Invoices::LineItemCreateParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        attr_accessor :name

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :unit_amount

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

        # The number of units of a product or service that this line item is for. Must be
        # a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit. Accepts decimal strings with
        # up to 12 decimals
        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal

        sig { params(unit_amount_decimal: String).void }
        attr_writer :unit_amount_decimal

        sig do
          params(
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String,
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the line item, typically a product or SKU name.
          name:,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit.
          unit_amount:,
          # An optional free-form description of the line item.
          description: nil,
          # Either `debit` or `credit`. `debit` indicates that a client owes the business
          # money and increases the invoice's `total_amount` due. `credit` has the opposite
          # intention and effect.
          direction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # The number of units of a product or service that this line item is for. Must be
          # a whole number. Defaults to 1 if not provided.
          quantity: nil,
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
              name: String,
              unit_amount: Integer,
              description: String,
              direction: String,
              metadata: T::Hash[Symbol, String],
              quantity: Integer,
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
