# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account settlement.
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute status
      #   To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status }

      # To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      class Status < ModernTreasury::Enum
        POSTED = :posted
        ARCHIVED = :archived
      end
    end
  end
end
