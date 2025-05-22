# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#create_reversal
    class LedgerTransactionCreateReversalParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute description
      #   An optional free-form description for the reversal ledger transaction. Maximum
      #   of 1000 characters allowed.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #   for reporting purposes. It defaults to the `effective_at` of the original ledger
      #   transaction if not provided.
      #
      #   @return [Time, nil]
      optional :effective_at, Time, nil?: true

      # @!attribute external_id
      #   Must be unique within the ledger.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute ledgerable_id
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType, nil]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::LedgerTransactionCreateReversalParams::LedgerableType }

      # @!attribute metadata
      #   Additional data to be added to the reversal ledger transaction as key-value
      #   pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute status
      #   Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::LedgerTransactionCreateReversalParams::Status }

      # @!method initialize(description: nil, effective_at: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransactionCreateReversalParams} for more
      #   details.
      #
      #   @param description [String] An optional free-form description for the reversal ledger transaction. Maximum o
      #
      #   @param effective_at [Time, nil] The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #
      #   @param external_id [String] Must be unique within the ledger.
      #
      #   @param ledgerable_id [String] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #
      #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data to be added to the reversal ledger transaction as key-value pair
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status] Status of the reversal ledger transaction. It defaults to `posted` if not provid
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      # object like Return or Reversal.
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

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      # provided.
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
