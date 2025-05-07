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
            request_options: ModernTreasury::RequestOptions::OrHash
          ).void
        end
        def update(
          # id
          id,
          # The ids of the ledger entries that are to be added or removed from the ledger
          # account settlement.
          ledger_entry_ids:,
          request_options: {}
        )
        end

        # Remove ledger entries from a draft ledger account settlement.
        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: ModernTreasury::RequestOptions::OrHash
          ).void
        end
        def delete(
          # id
          id,
          # The ids of the ledger entries that are to be added or removed from the ledger
          # account settlement.
          ledger_entry_ids:,
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
end
