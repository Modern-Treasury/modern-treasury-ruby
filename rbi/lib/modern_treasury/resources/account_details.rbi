# typed: strong

module ModernTreasury
  module Resources
    class AccountDetails
      # Create an account detail for an external account.
      sig do
        params(
          account_id: String,
          accounts_type: Symbol,
          account_number: String,
          account_number_type: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::AccountDetail)
      end
      def create(account_id, accounts_type:, account_number:, account_number_type: nil, request_options: {})
      end

      # Get a single account detail for a single internal or external account.
      sig do
        params(
          id: String,
          accounts_type: Symbol,
          account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::AccountDetail)
      end
      def retrieve(id, accounts_type:, account_id:, request_options: {})
      end

      # Get a list of account details for a single internal or external account.
      sig do
        params(
          account_id: String,
          accounts_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::AccountDetail])
      end
      def list(account_id, accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      end

      # Delete a single account detail for an external account.
      sig do
        params(
          id: String,
          accounts_type: Symbol,
          account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def delete(id, accounts_type:, account_id:, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
