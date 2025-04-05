# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      # Create a ledger account statement.
      sig do
        params(
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ledger_account_id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse)
      end
      def create(
        # The inclusive lower bound of the effective_at timestamp of the ledger entries to
        #   be included in the ledger account statement.
        effective_at_lower_bound:,
        # The exclusive upper bound of the effective_at timestamp of the ledger entries to
        #   be included in the ledger account statement.
        effective_at_upper_bound:,
        # The id of the ledger account whose ledger entries are queried against, and its
        #   balances are computed as a result.
        ledger_account_id:,
        # The description of the ledger account statement.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      ); end
      # Get details on a single ledger account statement.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
