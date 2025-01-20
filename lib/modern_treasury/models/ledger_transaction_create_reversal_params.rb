# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionCreateReversalParams < ModernTreasury::BaseModel
      # @!attribute [r] description
      #   An optional free-form description for the reversal ledger transaction. Maximum of 1000 characters allowed.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the reversal ledger transaction happened for reporting purposes. It defaults to the `effective_at` of the original ledger transaction if not provided.
      #
      #   @return [Time, nil]
      optional :effective_at, Time, nil?: true

      # @!attribute [r] external_id
      #   Must be unique within the ledger.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] ledgerable_id
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledgerable_id

      # @!attribute [r] ledgerable_type
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType, nil]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType]
      #   attr_writer :ledgerable_type

      # @!attribute [r] metadata
      #   Additional data to be added to the reversal ledger transaction as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] status
      #   Status of the reversal ledger transaction. It defaults to `posted` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param description [String] An optional free-form description for the reversal ledger transaction. Maximum
      #   #   of 1000 characters allowed.
      #   #
      #   # @param effective_at [String, nil] The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #   #   for reporting purposes. It defaults to the `effective_at` of the original ledger
      #   #   transaction if not provided.
      #   #
      #   # @param external_id [String] Must be unique within the ledger.
      #   #
      #   # @param ledgerable_id [String] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   #   object like Return or Reversal.
      #   #
      #   # @param ledgerable_type [String] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   #   object like Return or Reversal.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data to be added to the reversal ledger transaction as key-value
      #   #   pairs. Both the key and value must be strings.
      #   #
      #   # @param status [String] Status of the reversal ledger transaction. It defaults to `posted` if not
      #   #   provided.
      #   #
      #   def initialize(
      #     description: nil,
      #     effective_at: nil,
      #     external_id: nil,
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      #
      # @example
      # ```ruby
      # case ledgerable_type
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

        finalize!
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not provided.
      #
      # @example
      # ```ruby
      # case status
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

        finalize!
      end
    end
  end
end
