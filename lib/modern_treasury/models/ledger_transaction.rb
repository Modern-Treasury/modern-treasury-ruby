# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransaction < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for
      #     reporting purposes.
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #     purposes.
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted
      #     ledger transaction may have this ID in the ledger.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerEntry>]
      required :ledger_entries, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerEntry] }

      # @!attribute ledger_id
      #   The ID of the ledger this ledger transaction belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String, nil]
      required :ledgerable_id, String, nil?: true

      # @!attribute ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the type will be populated here, otherwise null. This can be one of
      #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #     reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType, nil]
      required :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransaction::LedgerableType },
               nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute partially_posts_ledger_transaction_id
      #   The ID of the ledger transaction that this ledger transaction partially posts.
      #
      #   @return [String, nil]
      required :partially_posts_ledger_transaction_id, String, nil?: true

      # @!attribute posted_at
      #   The time on which the ledger transaction posted. This is null if the ledger
      #     transaction is pending.
      #
      #   @return [Time, nil]
      required :posted_at, Time, nil?: true

      # @!attribute reversed_by_ledger_transaction_id
      #   The ID of the ledger transaction that reversed this ledger transaction.
      #
      #   @return [String, nil]
      required :reversed_by_ledger_transaction_id, String, nil?: true

      # @!attribute reverses_ledger_transaction_id
      #   The ID of the original ledger transaction that this ledger transaction reverses.
      #
      #   @return [String, nil]
      required :reverses_ledger_transaction_id, String, nil?: true

      # @!attribute status
      #   To post a ledger transaction at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerTransaction::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param effective_at [Time]
      #   # @param effective_date [Date]
      #   # @param external_id [String, nil]
      #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerEntry>]
      #   # @param ledger_id [String]
      #   # @param ledgerable_id [String, nil]
      #   # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param partially_posts_ledger_transaction_id [String, nil]
      #   # @param posted_at [Time, nil]
      #   # @param reversed_by_ledger_transaction_id [String, nil]
      #   # @param reverses_ledger_transaction_id [String, nil]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerTransaction::Status]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     description:,
      #     effective_at:,
      #     effective_date:,
      #     external_id:,
      #     ledger_entries:,
      #     ledger_id:,
      #     ledgerable_id:,
      #     ledgerable_type:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     partially_posts_ledger_transaction_id:,
      #     posted_at:,
      #     reversed_by_ledger_transaction_id:,
      #     reverses_ledger_transaction_id:,
      #     status:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      module LedgerableType
        extend ModernTreasury::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # To post a ledger transaction at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
