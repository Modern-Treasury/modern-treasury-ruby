# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              name: String,
              unit_amount: Integer,
              description: String,
              direction: String,
              metadata: T::Hash[Symbol, String],
              quantity: Integer,
              unit_amount_decimal: String
            },
            ModernTreasury::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :unit_amount

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

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
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(
          name:,
          unit_amount:,
          description: nil,
          direction: nil,
          metadata: nil,
          quantity: nil,
          unit_amount_decimal: nil,
          request_options: {}
        ); end

        sig { returns(ModernTreasury::Models::Invoices::LineItemCreateParams::Shape) }
        def to_h; end
      end
    end
  end
end
