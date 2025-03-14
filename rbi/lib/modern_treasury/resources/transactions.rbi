# typed: strong

module ModernTreasury
  module Resources
    class Transactions
      sig { returns(ModernTreasury::Resources::Transactions::LineItems) }
      def line_items
      end

      # create transaction
      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type: T.nilable(Symbol),
          vendor_description: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Transaction)
      end
      def create(
        amount:,
        as_of_date:,
        direction:,
        internal_account_id:,
        vendor_code:,
        vendor_code_type:,
        metadata: nil,
        posted: nil,
        type: nil,
        vendor_description: nil,
        request_options: {}
      )
      end

      # Get details on a single transaction.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Transaction)
      end
      def retrieve(id, request_options: {})
      end

      # Update a single transaction.
      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Transaction)
      end
      def update(id, metadata: nil, request_options: {})
      end

      # Get a list of all transactions.
      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          counterparty_id: String,
          description: String,
          direction: String,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          payment_type: String,
          per_page: Integer,
          posted: T::Boolean,
          transactable_type: String,
          vendor_id: String,
          virtual_account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::Transaction])
      end
      def list(
        after_cursor: nil,
        as_of_date_end: nil,
        as_of_date_start: nil,
        counterparty_id: nil,
        description: nil,
        direction: nil,
        internal_account_id: nil,
        metadata: nil,
        payment_type: nil,
        per_page: nil,
        posted: nil,
        transactable_type: nil,
        vendor_id: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      # delete transaction
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
