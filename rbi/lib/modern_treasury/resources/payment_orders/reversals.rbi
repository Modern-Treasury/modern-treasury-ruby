# typed: strong

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        sig do
          params(
            payment_order_id: String,
            reason: Symbol,
            ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def create(payment_order_id, reason:, ledger_transaction:, metadata:, request_options: {}); end

        sig do
          params(
            reversal_id: String,
            payment_order_id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def retrieve(reversal_id, payment_order_id:, request_options: {}); end

        sig do
          params(
            payment_order_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Page[ModernTreasury::Models::PaymentOrders::Reversal])
        end
        def list(payment_order_id, after_cursor:, per_page:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
