# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryUpdateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(T::Array[String])) }
        def ledger_entry_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def ledger_entry_ids=(_)
        end

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(ledger_entry_ids:, request_options: {})
        end

        sig do
          override
            .returns({
                       ledger_entry_ids: T.nilable(T::Array[String]),
                       request_options: ModernTreasury::RequestOptions
                     })
        end
        def to_hash
        end
      end
    end
  end
end
