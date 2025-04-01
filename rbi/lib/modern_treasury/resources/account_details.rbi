# typed: strong

module ModernTreasury
  module Resources
    class AccountDetails
      # Create an account detail for an external account.
      sig do
        params(
          account_id: String,
          accounts_type: ModernTreasury::Models::AccountDetailCreateParams::AccountsType::OrSymbol,
          account_number: String,
          account_number_type: ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::AccountDetail)
      end
      def create(
        # Path param: The ID of the account.
        account_id,
        # Path param:
        accounts_type:,
        # Body param: The account number for the bank account.
        account_number:,
        # Body param: One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if
        #   the bank account number is in a generic format.
        account_number_type: nil,
        request_options: {}
      )
      end

      # Get a single account detail for a single internal or external account.
      sig do
        params(
          id: String,
          accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
          account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::AccountDetail)
      end
      def retrieve(
        # The ID of the account detail.
        id,
        accounts_type:,
        # The ID of the account.
        account_id:,
        request_options: {}
      )
      end

      # Get a list of account details for a single internal or external account.
      sig do
        params(
          account_id: String,
          accounts_type: ModernTreasury::Models::AccountsType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::AccountDetail])
      end
      def list(
        # Path param: The ID of the account.
        account_id,
        # Path param:
        accounts_type:,
        # Query param:
        after_cursor: nil,
        # Query param:
        per_page: nil,
        request_options: {}
      )
      end

      # Delete a single account detail for an external account.
      sig do
        params(
          id: String,
          accounts_type: ModernTreasury::Models::AccountDetailDeleteParams::AccountsType::OrSymbol,
          account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .void
      end
      def delete(
        # The ID of the account detail.
        id,
        accounts_type:,
        # The ID of the account.
        account_id:,
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
