# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def update(id, ledger_entry_ids:, request_options: {}); end

        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def delete(id, ledger_entry_ids:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
