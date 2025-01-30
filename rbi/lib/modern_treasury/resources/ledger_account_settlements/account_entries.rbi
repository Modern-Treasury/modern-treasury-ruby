# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams,
              T::Hash[Symbol, T.anything]
            ),
            ledger_entry_ids: T::Array[String],
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def update(id, params, ledger_entry_ids:, request_options: {}); end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams,
              T::Hash[Symbol, T.anything]
            ),
            ledger_entry_ids: T::Array[T.anything],
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def delete(id, params, ledger_entry_ids:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
