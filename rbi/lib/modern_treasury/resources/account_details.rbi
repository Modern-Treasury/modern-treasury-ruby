# typed: strong

module ModernTreasury
  module Resources
    class AccountDetails
      sig do
        params(
          account_id: String,
          accounts_type: Symbol,
          account_number: String,
          account_number_type: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AccountDetail)
      end
      def create(account_id, accounts_type:, account_number:, account_number_type:, request_options: {}); end

      sig do
        params(
          id: String,
          accounts_type: Symbol,
          account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AccountDetail)
      end
      def retrieve(id, accounts_type:, account_id:, request_options: {}); end

      sig do
        params(
          account_id: String,
          accounts_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::AccountDetail])
      end
      def list(account_id, accounts_type:, after_cursor:, per_page:, request_options: {}); end

      sig do
        params(
          id: String,
          accounts_type: Symbol,
          account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def delete(id, accounts_type:, account_id:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
