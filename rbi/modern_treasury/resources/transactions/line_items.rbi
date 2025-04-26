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
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def create(
          # If a matching object exists in Modern Treasury, `amount` will be populated.
          # Value in specified currency's smallest unit (taken from parent Transaction).
          amount:,
          # The ID of the reconciled Expected Payment, otherwise `null`.
          expected_payment_id:,
          # The ID of the parent transaction.
          transaction_id:,
          request_options: {}
        ); end
        # get transaction line item
        sig do
          params(
            id: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::Transactions::TransactionLineItem)
        end
        def retrieve(
          # id
          id,
          request_options: {}
        ); end
        # list transaction_line_items
        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol),
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::Transactions::TransactionLineItem])
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
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::AnyHash
              )
            )
          )
            .void
        end
        def delete(
          # id
          id,
          request_options: {}
        ); end
        # @api private
        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
