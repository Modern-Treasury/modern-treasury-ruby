# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemUpdateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_amount

        sig { params(unit_amount: Integer).void }
        attr_writer :unit_amount

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
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          invoice_id:,
          description: nil,
          direction: nil,
          metadata: nil,
          name: nil,
          quantity: nil,
          unit_amount: nil,
          unit_amount_decimal: nil,
          request_options: {}
        ); end

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
        def to_hash; end
      end
    end
  end
end
