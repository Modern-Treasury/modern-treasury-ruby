# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      class Reversal < ModernTreasury::BaseModel
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
        #   @return [String]
        required :ledger_transaction_id, String

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

        # @!attribute payment_order_id
        #   The ID of the relevant Payment Order.
        #
        #   @return [String]
        required :payment_order_id, String

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

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param ledger_transaction_id [String, nil] The ID of the ledger transaction linked to the reversal.
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   # @param object [String]
        #   #
        #   # @param payment_order_id [String, nil] The ID of the relevant Payment Order.
        #   #
        #   # @param reason [String] The reason for the reversal.
        #   #
        #   # @param status [String] The current status of the reversal.
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     created_at:,
        #     ledger_transaction_id:,
        #     live_mode:,
        #     metadata:,
        #     object:,
        #     payment_order_id:,
        #     reason:,
        #     status:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The reason for the reversal.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :duplicate
        #   # ...
        # in :incorrect_amount
        #   # ...
        # in :incorrect_receiving_account
        #   # ...
        # in :date_earlier_than_intended
        #   # ...
        # in :date_later_than_intended
        #   # ...
        # end
        # ```
        class Reason < ModernTreasury::Enum
          DUPLICATE = :duplicate
          INCORRECT_AMOUNT = :incorrect_amount
          INCORRECT_RECEIVING_ACCOUNT = :incorrect_receiving_account
          DATE_EARLIER_THAN_INTENDED = :date_earlier_than_intended
          DATE_LATER_THAN_INTENDED = :date_later_than_intended
        end

        # The current status of the reversal.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :completed
        #   # ...
        # in :failed
        #   # ...
        # in :pending
        #   # ...
        # in :processing
        #   # ...
        # in :returned
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < ModernTreasury::Enum
          COMPLETED = :completed
          FAILED = :failed
          PENDING = :pending
          PROCESSING = :processing
          RETURNED = :returned
          SENT = :sent
        end
      end
    end
  end
end
