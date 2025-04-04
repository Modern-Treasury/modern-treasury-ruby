# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # The ids of the ledger entries that are to be added or removed from the ledger
        #   account settlement.
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_accessor :ledger_entry_ids

        sig do
          params(
            ledger_entry_ids: T.nilable(T::Array[T.anything]),
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
