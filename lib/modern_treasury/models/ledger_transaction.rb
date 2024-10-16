# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransaction < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #   @return [Time]
      required :effective_at, Time

      # @!attribute [rw] effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
      #   @return [Date]
      required :effective_date, Date

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
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerTransaction::LedgerableType }

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
      #   @return [Time]
      required :posted_at, Time

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
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerTransaction::Status }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # To post a ledger transaction at creation, use `posted`.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end

      # @!parse
      #   # Create a new instance of LedgerTransaction from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description An optional description for internal use.
      #   #   @option data [String] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   #     reporting purposes.
      #   #   @option data [String] :effective_date The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   #     purposes.
      #   #   @option data [String] :external_id A unique string to represent the ledger transaction. Only one pending or posted
      #   #     ledger transaction may have this ID in the ledger.
      #   #   @option data [Array<Object>] :ledger_entries An array of ledger entry objects.
      #   #   @option data [String] :ledger_id The ID of the ledger this ledger transaction belongs to.
      #   #   @option data [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #   #     Treasury, the id will be populated here, otherwise null.
      #   #   @option data [String] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #   #     Treasury, the type will be populated here, otherwise null. This can be one of
      #   #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   #     reversal.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :posted_at The time on which the ledger transaction posted. This is null if the ledger
      #   #     transaction is pending.
      #   #   @option data [String] :reversed_by_ledger_transaction_id The ID of the ledger transaction that reversed this ledger transaction.
      #   #   @option data [String] :reverses_ledger_transaction_id The ID of the original ledger transaction that this ledger transaction reverses.
      #   #   @option data [String] :status To post a ledger transaction at creation, use `posted`.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
