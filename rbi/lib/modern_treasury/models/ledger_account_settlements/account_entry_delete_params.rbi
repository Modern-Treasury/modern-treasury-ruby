# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_accessor :ledger_entry_ids

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(ledger_entry_ids:, request_options: {}); end

        sig do
          override.returns(
            {
              ledger_entry_ids: T.nilable(T::Array[T.anything]),
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
