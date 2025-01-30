# typed: strong

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        sig do
          params(
            params: T.any(
              ModernTreasury::Models::Transactions::LineItemCreateParams,
              T::Hash[Symbol, T.anything]
            ),
            amount: Integer,
            expected_payment_id: String,
            transaction_id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def create(params, amount:, expected_payment_id:, transaction_id:, request_options: {}); end

        sig do
          params(
            id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def retrieve(id, request_options: {}); end

        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(Symbol),
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Page[ModernTreasury::Models::Transactions::TransactionLineItem])
        end
        def list(id:, after_cursor:, per_page:, transaction_id:, type:, request_options: {}); end

        sig { params(id: String, request_options: ModernTreasury::RequestOpts).void }
        def delete(id, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
