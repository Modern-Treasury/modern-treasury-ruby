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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def create(
        amount:,
        counterparty_id:,
        currency:,
        direction:,
        originating_account_id:,
        due_date:,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::PaymentFlow)
      end
      def update(id, status:, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::PaymentFlow])
      end
      def list(
        after_cursor:,
        client_token:,
        counterparty_id:,
        originating_account_id:,
        payment_order_id:,
        per_page:,
        receiving_account_id:,
        status:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
