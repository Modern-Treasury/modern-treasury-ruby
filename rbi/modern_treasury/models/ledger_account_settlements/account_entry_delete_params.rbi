# typed: strong

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountSettlements::AccountEntryDeleteParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The ids of the ledger entries that are to be added or removed from the ledger
        # account settlement.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :ledger_entry_ids

        sig do
          params(
            id: String,
            ledger_entry_ids: T.nilable(T::Array[String]),
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The ids of the ledger entries that are to be added or removed from the ledger
          # account settlement.
          ledger_entry_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              ledger_entry_ids: T.nilable(T::Array[String]),
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
