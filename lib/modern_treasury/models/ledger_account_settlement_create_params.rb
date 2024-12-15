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
      #   @return [Boolean]
      optional :allow_either_direction, ModernTreasury::BooleanModel

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String]
      optional :description, String

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account settlement. The default value is the created_at timestamp of the ledger account settlement.
      #
      #   @return [Time]
      optional :effective_at_upper_bound, Time

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute skip_settlement_ledger_transaction
      #   It is set to `false` by default. It should be set to `true` when migrating existing settlements.
      #
      #   @return [Boolean]
      optional :skip_settlement_ledger_transaction, ModernTreasury::BooleanModel

      # @!attribute status
      #   The status of the ledger account settlement. It is set to `pending` by default. To post a ledger account settlement at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status }

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
      #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
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
      #     status: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the ledger account settlement. It is set to `pending` by default. To post a ledger account settlement at creation, use `posted`.
      class Status < ModernTreasury::Enum
        PENDING = :pending
        POSTED = :posted
      end
    end
  end
end
