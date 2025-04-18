# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      # @see ModernTreasury::Resources::PaymentOrders::Reversals#create
      class Reversal < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute ledger_transaction_id
        #   The ID of the ledger transaction linked to the reversal.
        #
        #   @return [String, nil]
        required :ledger_transaction_id, String, nil?: true

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

        # @!attribute payment_order_id
        #   The ID of the relevant Payment Order.
        #
        #   @return [String, nil]
        required :payment_order_id, String, nil?: true

        # @!attribute reason
        #   The reason for the reversal.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Reason]
        required :reason, enum: -> { ModernTreasury::Models::PaymentOrders::Reversal::Reason }

        # @!attribute status
        #   The current status of the reversal.
        #
        #   @return [Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Status]
        required :status, enum: -> { ModernTreasury::Models::PaymentOrders::Reversal::Status }

        # @!attribute transaction_ids
        #
        #   @return [Array<Object, nil>]
        required :transaction_ids,
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Internal::Type::Unknown, nil?: true]

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, ledger_transaction_id:, live_mode:, metadata:, object:, payment_order_id:, reason:, status:, transaction_ids:, updated_at:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param ledger_transaction_id [String, nil]
        #   @param live_mode [Boolean]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param object [String]
        #   @param payment_order_id [String, nil]
        #   @param reason [Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Reason]
        #   @param status [Symbol, ModernTreasury::Models::PaymentOrders::Reversal::Status]
        #   @param transaction_ids [Array<Object, nil>]
        #   @param updated_at [Time]

        # The reason for the reversal.
        #
        # @see ModernTreasury::Models::PaymentOrders::Reversal#reason
        module Reason
          extend ModernTreasury::Internal::Type::Enum

          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the reversal.
        #
        # @see ModernTreasury::Models::PaymentOrders::Reversal#status
        module Status
          extend ModernTreasury::Internal::Type::Enum

          COMPLETED = :completed
          FAILED = :failed
          PENDING = :pending
          PROCESSING = :processing
          RETURNED = :returned
          SENT = :sent

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
