# typed: strong

module ModernTreasury
  module Resources
    class PaymentFlows
      # create payment_flow
      sig do
        params(
          amount: Integer,
          counterparty_id: String,
          currency: String,
          direction: ModernTreasury::Models::PaymentFlowCreateParams::Direction::OrSymbol,
          originating_account_id: String,
          due_date: Date,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::PaymentFlow)
      end
      def create(
        # Required. Value in specified currency's smallest unit. e.g. $10 would be
        #   represented as 1000. Can be any integer up to 36 digits.
        amount:,
        # Required. The ID of a counterparty associated with the payment. As part of the
        #   payment workflow an external account will be associated with this model.
        counterparty_id:,
        # Required. The currency of the payment.
        currency:,
        # Required. Describes the direction money is flowing in the transaction. Can only
        #   be `debit`. A `debit` pulls money from someone else's account to your own.
        direction:,
        # Required. The ID of one of your organization's internal accounts.
        originating_account_id:,
        # Optional. Can only be passed in when `effective_date_selection_enabled` is
        #   `true`. When set, the due date is shown to your end-user in the pre-built UI as
        #   they are selecting a payment `effective_date`.
        due_date: nil,
        request_options: {}
      ); end
      # get payment_flow
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::PaymentFlow)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      ); end
      # update payment_flow
      sig do
        params(
          id: String,
          status: ModernTreasury::Models::PaymentFlowUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::PaymentFlow)
      end
      def update(
        # id
        id,
        # Required. The updated status of the payment flow. Can only be used to mark a
        #   flow as `cancelled`.
        status:,
        request_options: {}
      ); end
      # list payment_flows
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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::PaymentFlow])
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
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
