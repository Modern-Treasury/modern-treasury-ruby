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
      #   @return [String]
      required :description, String

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerEntry>]
      required :ledger_entries, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::LedgerEntry }]

      # @!attribute ledger_id
      #   The ID of the ledger this ledger transaction belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String]
      required :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerTransaction::LedgerableType }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute posted_at
      #   The time on which the ledger transaction posted. This is null if the ledger transaction is pending.
      #
      #   @return [Time]
      required :posted_at, Time

      # @!attribute reversed_by_ledger_transaction_id
      #   The ID of the ledger transaction that reversed this ledger transaction.
      #
      #   @return [String]
      required :reversed_by_ledger_transaction_id, String

      # @!attribute reverses_ledger_transaction_id
      #   The ID of the original ledger transaction that this ledger transaction reverses.
      #
      #   @return [String]
      required :reverses_ledger_transaction_id, String

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
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param description [String, nil] An optional description for internal use.
      #   #
      #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   #   reporting purposes.
      #   #
      #   # @param effective_date [String] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   #   purposes.
      #   #
      #   # @param external_id [String, nil] A unique string to represent the ledger transaction. Only one pending or posted
      #   #   ledger transaction may have this ID in the ledger.
      #   #
      #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerEntry>] An array of ledger entry objects.
      #   #
      #   # @param ledger_id [String] The ID of the ledger this ledger transaction belongs to.
      #   #
      #   # @param ledgerable_id [String, nil] If the ledger transaction can be reconciled to another object in Modern
      #   #   Treasury, the id will be populated here, otherwise null.
      #   #
      #   # @param ledgerable_type [String, nil] If the ledger transaction can be reconciled to another object in Modern
      #   #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   #   reversal.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param object [String]
      #   #
      #   # @param posted_at [String, nil] The time on which the ledger transaction posted. This is null if the ledger
      #   #   transaction is pending.
      #   #
      #   # @param reversed_by_ledger_transaction_id [String, nil] The ID of the ledger transaction that reversed this ledger transaction.
      #   #
      #   # @param reverses_ledger_transaction_id [String, nil] The ID of the original ledger transaction that this ledger transaction reverses.
      #   #
      #   # @param status [String] To post a ledger transaction at creation, use `posted`.
      #   #
      #   # @param updated_at [String]
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

      # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, paper_item, or reversal.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :expected_payment
      #   # ...
      # in :incoming_payment_detail
      #   # ...
      # in :paper_item
      #   # ...
      # in :payment_order
      #   # ...
      # in :return
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # To post a ledger transaction at creation, use `posted`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :archived
      #   # ...
      # in :pending
      #   # ...
      # in :posted
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end
    end
  end
end
