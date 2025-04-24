# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountSettlements#update
    class LedgerAccountSettlementUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute status
      #   To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status }

      # @!method initialize(description: nil, metadata: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountSettlementUpdateParams} for more details.
      #
      #   @param description [String, nil] The description of the ledger account settlement.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #   ...
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status] To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      # ledger transaction, use `archived`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        POSTED = :posted
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
