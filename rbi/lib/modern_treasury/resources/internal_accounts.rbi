# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      sig { returns(ModernTreasury::Resources::InternalAccounts::BalanceReports) }
      def balance_reports
      end

      # create internal account
      sig do
        params(
          connection_id: String,
          currency: ModernTreasury::Models::InternalAccountCreateParams::Currency::OrSymbol,
          name: String,
          party_name: String,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
          vendor_attributes: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def create(
        # The identifier of the financial institution the account belongs to.
        connection_id:,
        # Either "USD" or "CAD". Internal accounts created at Increase only supports
        #   "USD".
        currency:,
        # The nickname of the account.
        name:,
        # The legal name of the entity which owns the account.
        party_name:,
        # The Counterparty associated to this account.
        counterparty_id: nil,
        # The LegalEntity associated to this account.
        legal_entity_id: nil,
        # The parent internal account of this new account.
        parent_account_id: nil,
        # The address associated with the owner or null.
        party_address: nil,
        # A hash of vendor specific attributes that will be used when creating the account
        #   at the vendor specified by the given connection.
        vendor_attributes: nil,
        request_options: {}
      )
      end

      # get internal account
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def retrieve(
        # Unique identifier for the account.
        id,
        request_options: {}
      )
      end

      # update internal account
      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def update(
        # Unique identifier for the account.
        id,
        # The Counterparty associated to this account.
        counterparty_id: nil,
        # The Ledger Account associated to this account.
        ledger_account_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        #   an empty string or `null` as the value.
        metadata: nil,
        # The nickname for the internal account.
        name: nil,
        # The parent internal account for this account.
        parent_account_id: nil,
        request_options: {}
      )
      end

      # list internal accounts
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          payment_direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          payment_type: ModernTreasury::Models::InternalAccountListParams::PaymentType::OrSymbol,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccount])
      end
      def list(
        after_cursor: nil,
        # Only return internal accounts associated with this counterparty.
        counterparty_id: nil,
        # Only return internal accounts with this currency.
        currency: nil,
        # Only return internal accounts associated with this legal entity.
        legal_entity_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        # Only return internal accounts that can originate payments with this direction.
        payment_direction: nil,
        # Only return internal accounts that can make this type of payment.
        payment_type: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
