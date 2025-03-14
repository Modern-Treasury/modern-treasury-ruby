# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        # Add ledger entries to a draft ledger account settlement.
        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def update(id, ledger_entry_ids:, request_options: {})
        end

        # Remove ledger entries from a draft ledger account settlement.
        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def delete(id, ledger_entry_ids:, request_options: {})
        end

        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
