# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      sig do
        params(
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ledger_account_id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse)
      end
      def create(
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ledger_account_id:,
        description: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
