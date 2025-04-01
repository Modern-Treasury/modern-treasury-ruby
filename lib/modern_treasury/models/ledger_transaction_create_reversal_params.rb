# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#create_reversal
    class LedgerTransactionCreateReversalParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] description
      #   An optional free-form description for the reversal ledger transaction. Maximum
      #     of 1000 characters allowed.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute effective_at
      #   The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #     for reporting purposes. It defaults to the `effective_at` of the original ledger
      #     transaction if not provided.
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
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment
      #     object like Return or Reversal.
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledgerable_id

      # @!attribute [r] ledgerable_type
      #   Specify this if you'd like to link the reversal ledger transaction to a Payment
      #     object like Return or Reversal.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType, nil]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType]
      #   attr_writer :ledgerable_type

      # @!attribute [r] metadata
      #   Additional data to be added to the reversal ledger transaction as key-value
      #     pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] status
      #   Status of the reversal ledger transaction. It defaults to `posted` if not
      #     provided.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param description [String]
      #   # @param effective_at [Time, nil]
      #   # @param external_id [String]
      #   # @param ledgerable_id [String]
      #   # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     description: nil,
      #     effective_at: nil,
      #     external_id: nil,
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      module LedgerableType
        extend ModernTreasury::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      module Status
        extend ModernTreasury::Enum

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
