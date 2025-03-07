# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(T::Array[T.anything])) }
        def ledger_entry_ids
        end

        sig { params(_: T.nilable(T::Array[T.anything])).returns(T.nilable(T::Array[T.anything])) }
        def ledger_entry_ids=(_)
        end

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(ledger_entry_ids:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                ledger_entry_ids: T.nilable(T::Array[T.anything]),
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
