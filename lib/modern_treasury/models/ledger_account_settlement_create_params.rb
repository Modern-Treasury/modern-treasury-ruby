# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementCreateParams < ModernTreasury::BaseModel
      # @!attribute contra_ledger_account_id
      #   The id of the contra ledger account that sends to or receives funds from the settled ledger account.
      #
      #   @return [String]
      required :contra_ledger_account_id, String

      # @!attribute settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against, and its balance is reduced as a result.
      #
      #   @return [String]
      required :settled_ledger_account_id, String

      # @!attribute allow_either_direction
      #   If true, the settlement amount and settlement_entry_direction will bring the settlement ledger account's balance closer to zero, even if the balance is negative.
      #
      #   @return [Boolean, nil]
      optional :allow_either_direction, ModernTreasury::BooleanModel, nil?: true

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account settlement. The default value is the created_at timestamp of the ledger account settlement.
      #
      #   @return [Time, nil]
      optional :effective_at_upper_bound, Time, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute skip_settlement_ledger_transaction
      #   It is set to `false` by default. It should be set to `true` when migrating existing settlements.
      #
      #   @return [Boolean, nil]
      optional :skip_settlement_ledger_transaction, ModernTreasury::BooleanModel, nil?: true

      # @!attribute status
      #   The status of the ledger account settlement. It is set to `pending` by default. To post a ledger account settlement at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil]
      optional :status,
               enum: -> { ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status },
               nil?: true

      # @!parse
      #   # @param contra_ledger_account_id [String] The id of the contra ledger account that sends to or receives funds from the
      #   #   settled ledger account.
      #   #
      #   # @param settled_ledger_account_id [String] The id of the settled ledger account whose ledger entries are queried against,
      #   #   and its balance is reduced as a result.
      #   #
      #   # @param allow_either_direction [Boolean, nil] If true, the settlement amount and settlement_entry_direction will bring the
      #   #   settlement ledger account's balance closer to zero, even if the balance is
      #   #   negative.
      #   #
      #   # @param description [String, nil] The description of the ledger account settlement.
      #   #
      #   # @param effective_at_upper_bound [String, nil] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   #   be included in the ledger account settlement. The default value is the
      #   #   created_at timestamp of the ledger account settlement.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param skip_settlement_ledger_transaction [Boolean, nil] It is set to `false` by default. It should be set to `true` when migrating
      #   #   existing settlements.
      #   #
      #   # @param status [String, nil] The status of the ledger account settlement. It is set to `pending` by default.
      #   #   To post a ledger account settlement at creation, use `posted`.
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the ledger account settlement. It is set to `pending` by default. To post a ledger account settlement at creation, use `posted`.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :posted
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        PENDING = :pending
        POSTED = :posted

        finalize!
      end
    end
  end
end
