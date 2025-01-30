# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all({ledger_entry_ids: T.nilable(T::Array[T.anything])}, ModernTreasury::RequestParameters::Shape)
        end

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_accessor :ledger_entry_ids

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(ledger_entry_ids:, request_options: {}); end

        sig { returns(ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams::Shape) }
        def to_h; end
      end
    end
  end
end
