# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] status
      #   To post a pending ledger account settlement, use `posted`. To archive a pending
      #     ledger transaction, use `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param description [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(description: nil, metadata: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      module Status
        extend ModernTreasury::Enum

        POSTED = :posted
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
