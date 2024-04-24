# frozen_string_literal: true

module ModernTreasury
  module Models
    class Reversal < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :reason,
               ModernTreasury::Enum.new(
                 :duplicate,
                 :incorrect_amount,
                 :incorrect_receiving_account,
                 :date_earlier_than_intended,
                 :date_later_than_intended
               )

      # @!attribute [rw] status
      #   The current status of the reversal.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:completed, :failed, :pending, :processing, :returned, :sent)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
