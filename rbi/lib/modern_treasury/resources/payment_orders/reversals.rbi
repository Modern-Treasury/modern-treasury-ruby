# typed: strong

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # Create a reversal for a payment order.
        sig do
          params(
            payment_order_id: String,
            reason: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
            ledger_transaction: T.any(
              ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
              ModernTreasury::Internal::Util::AnyHash
            ),
            metadata: T::Hash[Symbol, String],
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def create(
          # The id of the payment order being reversed.
          payment_order_id,
          # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
          #   `incorrect_receiving_account`, `date_earlier_than_intended`,
          #   `date_later_than_intended`.
          reason:,
          # Specifies a ledger transaction object that will be created with the reversal. If
          #   the ledger transaction cannot be created, then the reversal creation will fail.
          #   The resulting ledger transaction will mirror the status of the reversal.
          ledger_transaction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          metadata: nil,
          request_options: {}
        )
        end

        # Get details on a single reversal of a payment order.
        sig do
          params(
            reversal_id: String,
            payment_order_id: String,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Models::PaymentOrders::Reversal)
        end
        def retrieve(
          # The ID of the reversal.
          reversal_id,
          # The id of the payment order being reversed.
          payment_order_id:,
          request_options: {}
        )
        end

        # Get a list of all reversals of a payment order.
        sig do
          params(
            payment_order_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: T.nilable(
              T.any(
                ModernTreasury::RequestOptions,
                ModernTreasury::Internal::Util::AnyHash
              )
            )
          )
            .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::PaymentOrders::Reversal])
        end
        def list(
          # The ID of the relevant Payment Order.
          payment_order_id,
          after_cursor: nil,
          per_page: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
