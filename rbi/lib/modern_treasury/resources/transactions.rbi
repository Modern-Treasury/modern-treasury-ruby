# typed: strong

module ModernTreasury
  module Resources
    class Transactions
      sig { returns(ModernTreasury::Resources::Transactions::LineItems) }
      attr_reader :line_items

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Transaction)
      end
      def create(
        amount:,
        as_of_date:,
        direction:,
        internal_account_id:,
        vendor_code:,
        vendor_code_type:,
        metadata:,
        posted:,
        type:,
        vendor_description:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Transaction)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Transaction)
      end
      def update(id, metadata:, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Transaction])
      end
      def list(
        after_cursor:,
        as_of_date_end:,
        as_of_date_start:,
        counterparty_id:,
        description:,
        direction:,
        internal_account_id:,
        metadata:,
        payment_type:,
        per_page:,
        posted:,
        transactable_type:,
        vendor_id:,
        virtual_account_id:,
        request_options: {}
      ); end

      sig { params(id: String, request_options: ModernTreasury::RequestOpts).void }
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
