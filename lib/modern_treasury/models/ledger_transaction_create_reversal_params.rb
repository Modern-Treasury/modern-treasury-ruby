# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionCreateReversalParams < ModernTreasury::BaseModel
      # @!attribute description
      #   An optional free-form description for the reversal ledger transaction. Maximum of 1000 characters allowed.
      #
      #   @return [String]
      optional :description, String

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the reversal ledger transaction happened for reporting purposes. It defaults to the `effective_at` of the original ledger transaction if not provided.
      #
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute external_id
      #   Must be unique within the ledger.
      #
      #   @return [String]
      optional :external_id, String

      # @!attribute ledgerable_id
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      #
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType }

      # @!attribute metadata
      #   Additional data to be added to the reversal ledger transaction as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute status
      #   Status of the reversal ledger transaction. It defaults to `posted` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status }

      # Specify this if you'd like to link the reversal ledger transaction to a Payment object like Return or Reversal.
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not provided.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end
    end
  end
end
