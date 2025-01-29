# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all(
            {amount: Integer, expected_payment_id: String, transaction_id: String},
            ModernTreasury::RequestParameters::Shape
          )
        end

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :expected_payment_id

        sig { returns(String) }
        attr_accessor :transaction_id

        sig do
          params(
            amount: Integer,
            expected_payment_id: String,
            transaction_id: String,
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(amount:, expected_payment_id:, transaction_id:, request_options: {}); end

        sig { returns(ModernTreasury::Models::Transactions::LineItemCreateParams::Shape) }
        def to_h; end
      end
    end
  end
end
