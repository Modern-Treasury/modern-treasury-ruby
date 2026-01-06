# typed: strong

module ModernTreasury
  module Resources
    class AccountDetails
      # Create an account detail for an external account.
      sig do
        params(
          account_id: String,
          accounts_type:
            ModernTreasury::AccountDetailCreateParams::AccountsType::OrSymbol,
          account_number: String,
          account_number_type:
            ModernTreasury::AccountDetailCreate::AccountNumberType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::AccountDetail)
      end
      def create(
        # Path param: The ID of the account.
        account_id,
        # Path param:
        accounts_type:,
        # Body param: The account number for the bank account.
        account_number:,
        # Body param: One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if
        # the bank account number is in a generic format.
        account_number_type: nil,
        request_options: {}
      )
      end

      # Get a single account detail for a single internal or external account.
      sig do
        params(
          id: String,
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::AccountDetail)
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
          accounts_type: ModernTreasury::AccountsType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::AccountDetail])
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
          accounts_type:
            ModernTreasury::AccountDetailDeleteParams::AccountsType::OrSymbol,
          account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
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
