# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

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
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(amount:, expected_payment_id:, transaction_id:, request_options: {}); end

        sig do
          override.returns(
            {
              amount: Integer,
              expected_payment_id: String,
              transaction_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
