# typed: strong

module ModernTreasury
  module Resources
    class Transactions
      class LineItems
        # create transaction line items
        sig do
          params(
            amount: Integer,
            expected_payment_id: String,
            transaction_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def create(amount:, expected_payment_id:, transaction_id:, request_options: {})
        end

        # get transaction line item
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def retrieve(id, request_options: {})
        end

        # list transaction_line_items
        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(Symbol),
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Page[ModernTreasury::Models::Transactions::TransactionLineItem])
        end
        def list(
          id: nil,
          after_cursor: nil,
          per_page: nil,
          transaction_id: nil,
          type: nil,
          request_options: {}
        )
        end

        # delete transaction line item
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def delete(id, request_options: {})
        end

        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
