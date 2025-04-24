# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryUpdateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # The ids of the ledger entries that are to be added or removed from the ledger
        # account settlement.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :ledger_entry_ids

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The ids of the ledger entries that are to be added or removed from the ledger
          # account settlement.
          ledger_entry_ids:,
          request_options: {}
        ); end
        sig do
          override
            .returns({
                       ledger_entry_ids: T.nilable(T::Array[String]),
                       request_options: ModernTreasury::RequestOptions
                     })
        end
        def to_hash; end
      end
    end
  end
end
