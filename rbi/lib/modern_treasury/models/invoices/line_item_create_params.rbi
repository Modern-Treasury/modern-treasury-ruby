# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

        # An optional free-form description of the line item.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        sig { returns(T.nilable(String)) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal
        end

        sig { params(_: String).returns(String) }
        def unit_amount_decimal=(_)
        end

        sig do
          params(
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          name:,
          unit_amount:,
          description: nil,
          direction: nil,
          metadata: nil,
          quantity: nil,
          unit_amount_decimal: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
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
