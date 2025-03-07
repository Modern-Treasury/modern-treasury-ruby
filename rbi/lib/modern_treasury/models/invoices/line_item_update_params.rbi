# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemUpdateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        def invoice_id
        end

        sig { params(_: String).returns(String) }
        def invoice_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def unit_amount_decimal
        end

        sig { params(_: String).returns(String) }
        def unit_amount_decimal=(_)
        end

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
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
