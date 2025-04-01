# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountSettlements#create
    class LedgerAccountSettlementCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute contra_ledger_account_id
      #   The id of the contra ledger account that sends to or receives funds from the
      #     settled ledger account.
      #
      #   @return [String]
      required :contra_ledger_account_id, String

      # @!attribute settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against,
      #     and its balance is reduced as a result.
      #
      #   @return [String]
      required :settled_ledger_account_id, String

      # @!attribute allow_either_direction
      #   If true, the settlement amount and settlement_entry_direction will bring the
      #     settlement ledger account's balance closer to zero, even if the balance is
      #     negative.
      #
      #   @return [Boolean, nil]
      optional :allow_either_direction, ModernTreasury::BooleanModel, nil?: true

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #     be included in the ledger account settlement. The default value is the
      #     created_at timestamp of the ledger account settlement.
      #
      #   @return [Time, nil]
      optional :effective_at_upper_bound, Time, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute skip_settlement_ledger_transaction
      #   It is set to `false` by default. It should be set to `true` when migrating
      #     existing settlements.
      #
      #   @return [Boolean, nil]
      optional :skip_settlement_ledger_transaction, ModernTreasury::BooleanModel, nil?: true

      # @!attribute status
      #   The status of the ledger account settlement. It is set to `pending` by default.
      #     To post a ledger account settlement at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil]
      optional :status,
               enum: -> { ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status },
               nil?: true

      # @!parse
      #   # @param contra_ledger_account_id [String]
      #   # @param settled_ledger_account_id [String]
      #   # @param allow_either_direction [Boolean, nil]
      #   # @param description [String, nil]
      #   # @param effective_at_upper_bound [Time, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param skip_settlement_ledger_transaction [Boolean, nil]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     contra_ledger_account_id:,
      #     settled_ledger_account_id:,
      #     allow_either_direction: nil,
      #     description: nil,
      #     effective_at_upper_bound: nil,
      #     metadata: nil,
      #     skip_settlement_ledger_transaction: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the ledger account settlement. It is set to `pending` by default.
      #   To post a ledger account settlement at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        PENDING = :pending
        POSTED = :posted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
