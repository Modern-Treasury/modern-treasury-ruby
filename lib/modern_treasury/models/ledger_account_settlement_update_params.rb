# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] status
      #   To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param description [String, nil] The description of the ledger account settlement.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param status [String] To post a pending ledger account settlement, use `posted`. To archive a pending
      #   #   ledger transaction, use `archived`.
      #   #
      #   def initialize(description: nil, metadata: nil, status: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # To post a pending ledger account settlement, use `posted`. To archive a pending ledger transaction, use `archived`.
      #
      # @example
      # ```ruby
      # case status
      # in :posted
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        POSTED = :posted
        ARCHIVED = :archived

        finalize!
      end
    end
  end
end
