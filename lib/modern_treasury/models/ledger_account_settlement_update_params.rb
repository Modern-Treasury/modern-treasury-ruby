# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute status
      #   To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status }

      # @!parse
      #   # @param description [String, nil] The description of the ledger account settlement.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param status [String, nil] To post a pending ledger account settlement, use `posted`. To archive a pending
      #   #   ledger transaction, use `archived`.
      #   #
      #   def initialize(description: nil, metadata: nil, status: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :posted
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        POSTED = :posted
        ARCHIVED = :archived
      end
    end
  end
end
