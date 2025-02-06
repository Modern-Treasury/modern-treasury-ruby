# typed: strong

module ModernTreasury
  module Resources
    class LedgerTransactions
      class Versions
        sig do
          params(
            after_cursor: T.nilable(String),
            created_at: T::Hash[Symbol, Time],
            ledger_account_statement_id: String,
            ledger_transaction_id: String,
            per_page: Integer,
            version: T::Hash[Symbol, Integer],
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion])
        end
        def list(
          after_cursor: nil,
          created_at: nil,
          ledger_account_statement_id: nil,
          ledger_transaction_id: nil,
          per_page: nil,
          version: nil,
          request_options: {}
        ); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
