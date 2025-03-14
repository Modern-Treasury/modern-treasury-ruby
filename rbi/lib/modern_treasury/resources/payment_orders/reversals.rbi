# typed: strong

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # Create a reversal for a payment order.
        sig do
          params(
            payment_order_id: String,
            reason: Symbol,
            ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
            metadata: T::Hash[Symbol, String],
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def create(payment_order_id, reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        end

        # Get details on a single reversal of a payment order.
        sig do
          params(
            reversal_id: String,
            payment_order_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def retrieve(reversal_id, payment_order_id:, request_options: {})
        end

        # Get a list of all reversals of a payment order.
        sig do
          params(
            payment_order_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(ModernTreasury::Page[ModernTreasury::Models::PaymentOrders::Reversal])
        end
        def list(payment_order_id, after_cursor: nil, per_page: nil, request_options: {})
        end

        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
