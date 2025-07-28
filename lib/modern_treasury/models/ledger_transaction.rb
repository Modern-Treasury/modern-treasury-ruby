# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#create
    class LedgerTransaction < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute archived_reason
      #   System-set reason why the ledger transaction was archived; currently only
      #   'balance_lock_failure' for transactions that violated balance constraints. Only
      #   populated when archive_on_balance_lock_failure is true and a balance lock
      #   violation occurs, otherwise null.
      #
      #   @return [String, nil]
      required :archived_reason, String, nil?: true

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
      #   reporting purposes.
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   purposes.
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted
      #   ledger transaction may have this ID in the ledger.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerEntry>]
      required :ledger_entries, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry] }

      # @!attribute ledger_id
      #   The ID of the ledger this ledger transaction belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String, nil]
      required :ledgerable_id, String, nil?: true

      # @!attribute ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType, nil]
      required :ledgerable_type, enum: -> { ModernTreasury::LedgerTransaction::LedgerableType }, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

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
      #   transaction is pending.
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
      required :status, enum: -> { ModernTreasury::LedgerTransaction::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, archived_reason:, created_at:, description:, effective_at:, effective_date:, external_id:, ledger_entries:, ledger_id:, ledgerable_id:, ledgerable_type:, live_mode:, metadata:, object:, partially_posts_ledger_transaction_id:, posted_at:, reversed_by_ledger_transaction_id:, reverses_ledger_transaction_id:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransaction} for more details.
      #
      #   @param id [String]
      #
      #   @param archived_reason [String, nil] System-set reason why the ledger transaction was archived; currently only 'balan
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
      #
      #   @param effective_date [Date] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting pur
      #
      #   @param external_id [String, nil] A unique string to represent the ledger transaction. Only one pending or posted
      #
      #   @param ledger_entries [Array<ModernTreasury::Models::LedgerEntry>] An array of ledger entry objects.
      #
      #   @param ledger_id [String] The ID of the ledger this ledger transaction belongs to.
      #
      #   @param ledgerable_id [String, nil] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType, nil] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param partially_posts_ledger_transaction_id [String, nil] The ID of the ledger transaction that this ledger transaction partially posts.
      #
      #   @param posted_at [Time, nil] The time on which the ledger transaction posted. This is null if the ledger tran
      #
      #   @param reversed_by_ledger_transaction_id [String, nil] The ID of the ledger transaction that reversed this ledger transaction.
      #
      #   @param reverses_ledger_transaction_id [String, nil] The ID of the original ledger transaction that this ledger transaction reverses.
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerTransaction::Status] To post a ledger transaction at creation, use `posted`.
      #
      #   @param updated_at [Time]

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the type will be populated here, otherwise null. This can be one of
      # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      # reversal.
      #
      # @see ModernTreasury::Models::LedgerTransaction#ledgerable_type
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # To post a ledger transaction at creation, use `posted`.
      #
      # @see ModernTreasury::Models::LedgerTransaction#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
