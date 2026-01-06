# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionUpdate < ModernTreasury::Internal::Type::BaseModel
      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   reporting purposes.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!attribute ledger_entries
      #   An array of ledger entry objects.
      #
      #   @return [Array<ModernTreasury::Models::LedgerEntryCreateRequest>, nil]
      optional :ledger_entries,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntryCreateRequest] }

      # @!attribute ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdate::LedgerableType, nil]
      optional :ledgerable_type, enum: -> { ModernTreasury::LedgerTransactionUpdate::LedgerableType }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute status
      #   To post a ledger transaction at creation, use `posted`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionUpdate::Status, nil]
      optional :status, enum: -> { ModernTreasury::LedgerTransactionUpdate::Status }

      # @!method initialize(description: nil, effective_at: nil, ledger_entries: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransactionUpdate} for more details.
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
      #
      #   @param ledger_entries [Array<ModernTreasury::Models::LedgerEntryCreateRequest>] An array of ledger entry objects.
      #
      #   @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionUpdate::LedgerableType] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerTransactionUpdate::Status] To post a ledger transaction at creation, use `posted`.

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the type will be populated here, otherwise null. This can be one of
      # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      #
      # @see ModernTreasury::Models::LedgerTransactionUpdate#ledgerable_type
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # To post a ledger transaction at creation, use `posted`.
      #
      # @see ModernTreasury::Models::LedgerTransactionUpdate#status
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
