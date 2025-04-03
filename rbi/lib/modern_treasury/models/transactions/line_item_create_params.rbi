# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID of the reconciled Expected Payment, otherwise `null`.
        sig { returns(String) }
        attr_accessor :expected_payment_id

        # The ID of the parent transaction.
        sig { returns(String) }
        attr_accessor :transaction_id

        sig do
          params(
            amount: Integer,
            expected_payment_id: String,
            transaction_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, expected_payment_id:, transaction_id:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                expected_payment_id: String,
                transaction_id: String,
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
