# frozen_string_literal: true

module ModernTreasury
  module Models
    class Reversal < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the reversal.
      #   @return [String]
      required :ledger_transaction_id, String

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

      # @!attribute [rw] payment_order_id
      #   The ID of the relevant Payment Order.
      #   @return [String]
      required :payment_order_id, String

      # @!attribute [rw] reason
      #   The reason for the reversal.
      #   @return [Symbol, ModernTreasury::Models::Reversal::Reason]
      required :reason, enum: -> { ModernTreasury::Models::Reversal::Reason }

      # @!attribute [rw] status
      #   The current status of the reversal.
      #   @return [Symbol, ModernTreasury::Models::Reversal::Status]
      required :status, enum: -> { ModernTreasury::Models::Reversal::Status }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # The reason for the reversal.
      class Reason < ModernTreasury::Enum
        DUPLICATE = :duplicate
        INCORRECT_AMOUNT = :incorrect_amount
        INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
        DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
        DATE_LATER_THAN_INTENDED = :date_later_than_intended
      end

      # The current status of the reversal.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        FAILED = :failed
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        SENT = :sent
      end

      # @!parse
      #   # Create a new instance of Reversal from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :ledger_transaction_id The ID of the ledger transaction linked to the reversal.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :payment_order_id The ID of the relevant Payment Order.
      #   #   @option data [String] :reason The reason for the reversal.
      #   #   @option data [String] :status The current status of the reversal.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
