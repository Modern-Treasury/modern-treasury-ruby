# typed: strong

module ModernTreasury
  module Resources
    class PaymentFlows
      sig do
        params(
          amount: Integer,
          counterparty_id: String,
          currency: String,
          direction: Symbol,
          originating_account_id: String,
          due_date: Date,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def create(
        amount:,
        counterparty_id:,
        currency:,
        direction:,
        originating_account_id:,
        due_date: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def update(id, status:, request_options: {})
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          client_token: String,
          counterparty_id: String,
          originating_account_id: String,
          payment_order_id: String,
          per_page: Integer,
          receiving_account_id: String,
          status: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::PaymentFlow])
      end
      def list(
        after_cursor: nil,
        client_token: nil,
        counterparty_id: nil,
        originating_account_id: nil,
        payment_order_id: nil,
        per_page: nil,
        receiving_account_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
