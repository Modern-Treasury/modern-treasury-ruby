# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountSettlements#create
    class LedgerAccountSettlementCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute contra_ledger_account_id
      #   The id of the contra ledger account that sends to or receives funds from the
      #   settled ledger account.
      #
      #   @return [String]
      required :contra_ledger_account_id, String

      # @!attribute settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
      #
      #   @return [String]
      required :settled_ledger_account_id, String

      # @!attribute allow_either_direction
      #   If true, the settlement amount and settlement_entry_direction will bring the
      #   settlement ledger account's balance closer to zero, even if the balance is
      #   negative.
      #
      #   @return [Boolean, nil]
      optional :allow_either_direction, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account settlement. The default value is the
      #   created_at timestamp of the ledger account settlement.
      #
      #   @return [Time, nil]
      optional :effective_at_upper_bound, Time, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute skip_settlement_ledger_transaction
      #   It is set to `false` by default. It should be set to `true` when migrating
      #   existing settlements.
      #
      #   @return [Boolean, nil]
      optional :skip_settlement_ledger_transaction, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute status
      #   The status of the ledger account settlement. It is set to `pending` by default.
      #   To post a ledger account settlement at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::LedgerAccountSettlementCreateParams::Status }, nil?: true

      # @!method initialize(contra_ledger_account_id:, settled_ledger_account_id:, allow_either_direction: nil, description: nil, effective_at_upper_bound: nil, metadata: nil, skip_settlement_ledger_transaction: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountSettlementCreateParams} for more details.
      #
      #   @param contra_ledger_account_id [String] The id of the contra ledger account that sends to or receives funds from the set
      #
      #   @param settled_ledger_account_id [String] The id of the settled ledger account whose ledger entries are queried against, a
      #
      #   @param allow_either_direction [Boolean, nil] If true, the settlement amount and settlement_entry_direction will bring the set
      #
      #   @param description [String, nil] The description of the ledger account settlement.
      #
      #   @param effective_at_upper_bound [Time, nil] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param skip_settlement_ledger_transaction [Boolean, nil] It is set to `false` by default. It should be set to `true` when migrating exist
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil] The status of the ledger account settlement. It is set to `pending` by default.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The status of the ledger account settlement. It is set to `pending` by default.
      # To post a ledger account settlement at creation, use `posted`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        POSTED = :posted
        DRAFTING = :drafting

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
