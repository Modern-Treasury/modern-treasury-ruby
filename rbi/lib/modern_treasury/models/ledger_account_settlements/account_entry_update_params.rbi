# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryUpdateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all({ledger_entry_ids: T::Array[String]}, ModernTreasury::RequestParameters::Shape)
        end

        sig { returns(T::Array[String]) }
        attr_accessor :ledger_entry_ids

        sig { params(ledger_entry_ids: T::Array[String], request_options: ModernTreasury::RequestOpts).void }
        def initialize(ledger_entry_ids:, request_options: {}); end

        sig { returns(ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams::Shape) }
        def to_h; end
      end
    end
  end
end
