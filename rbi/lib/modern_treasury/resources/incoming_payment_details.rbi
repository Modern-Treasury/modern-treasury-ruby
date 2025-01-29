# typed: strong

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::IncomingPaymentDetail)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::IncomingPaymentDetail)
      end
      def update(id, metadata:, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          direction: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: Symbol,
          type: Symbol,
          virtual_account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::IncomingPaymentDetail])
      end
      def list(
        after_cursor:,
        as_of_date_end:,
        as_of_date_start:,
        direction:,
        metadata:,
        per_page:,
        status:,
        type:,
        virtual_account_id:,
        request_options: {}
      ); end

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency: T.nilable(Symbol),
          description: T.nilable(String),
          direction: Symbol,
          internal_account_id: String,
          type: Symbol,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AsyncResponse)
      end
      def create_async(
        amount:,
        as_of_date:,
        currency:,
        description:,
        direction:,
        internal_account_id:,
        type:,
        virtual_account_id:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
