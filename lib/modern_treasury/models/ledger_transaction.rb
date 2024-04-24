# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransaction < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #   @return [String]
      required :effective_at, String

      # @!attribute [rw] effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
      #   @return [String]
      required :effective_date, String

      # @!attribute [rw] external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
      #   @return [String]
      required :external_id, String

      # @!attribute [rw] ledger_entries
      #   An array of ledger entry objects.
      #   @return [Array<ModernTreasury::Models::LedgerEntry>]
      required :ledger_entries, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::LedgerEntry })

      # @!attribute [rw] ledger_id
      #   The ID of the ledger this ledger transaction belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
      #   @return [String]
      required :ledgerable_id, String

      # @!attribute [rw] ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      #   @return [Symbol]
      required :ledgerable_type,
               ModernTreasury::Enum.new(
                 :counterparty,
                 :expected_payment,
                 :incoming_payment_detail,
                 :internal_account,
                 :line_item,
                 :paper_item,
                 :payment_order,
                 :payment_order_attempt,
                 :return,
                 :reversal
               )

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] posted_at
      #   The time on which the ledger transaction posted. This is null if the ledger transaction is pending.
      #   @return [String]
      required :posted_at, String

      # @!attribute [rw] reversed_by_ledger_transaction_id
      #   The ID of the ledger transaction that reversed this ledger transaction.
      #   @return [String]
      required :reversed_by_ledger_transaction_id, String

      # @!attribute [rw] reverses_ledger_transaction_id
      #   The ID of the original ledger transaction that this ledger transaction reverses.
      #   @return [String]
      required :reverses_ledger_transaction_id, String

      # @!attribute [rw] status
      #   To post a ledger transaction at creation, use `posted`.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:archived, :pending, :posted)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
