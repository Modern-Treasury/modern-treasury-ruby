# typed: strong

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      # Get an existing Incoming Payment Detail.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::IncomingPaymentDetail)
      end
      def retrieve(
        # The unique identifier of the incoming payment detail.
        id,
        request_options: {}
      ); end
      # Update an existing Incoming Payment Detail.
      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::IncomingPaymentDetail)
      end
      def update(
        # The unique identifier of the incoming payment detail.
        id,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        #   an empty string or `null` as the value.
        metadata: nil,
        request_options: {}
      ); end
      # Get a list of Incoming Payment Details.
      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::Models::IncomingPaymentDetailListParams::Status::OrSymbol,
          type: ModernTreasury::Models::IncomingPaymentDetailListParams::Type::OrSymbol,
          virtual_account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::IncomingPaymentDetail])
      end
      def list(
        after_cursor: nil,
        # Filters incoming payment details with an as_of_date starting on or before the
        #   specified date (YYYY-MM-DD).
        as_of_date_end: nil,
        # Filters incoming payment details with an as_of_date starting on or after the
        #   specified date (YYYY-MM-DD).
        as_of_date_start: nil,
        # One of `credit` or `debit`.
        direction: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        per_page: nil,
        # The current status of the incoming payment order. One of `pending`, `completed`,
        #   or `returned`.
        status: nil,
        # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
        #   `wire`.
        type: nil,
        # If the incoming payment detail is in a virtual account, the ID of the Virtual
        #   Account.
        virtual_account_id: nil,
        request_options: {}
      ); end
      # Simulate Incoming Payment Detail
      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
          data: T.nilable(T.anything),
          description: T.nilable(String),
          direction: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
          internal_account_id: String,
          type: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
          virtual_account_id: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::AsyncResponse)
      end
      def create_async(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000.
        amount: nil,
        # Defaults to today.
        as_of_date: nil,
        # Defaults to the currency of the originating account.
        currency: nil,
        # An object passed through to the simulated IPD that could reflect what a vendor
        #   would pass.
        data: nil,
        # Defaults to a random description.
        description: nil,
        # One of `credit`, `debit`.
        direction: nil,
        # The ID of one of your internal accounts.
        internal_account_id: nil,
        # One of `ach`, `wire`, `check`.
        type: nil,
        # An optional parameter to associate the incoming payment detail to a virtual
        #   account.
        virtual_account_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
