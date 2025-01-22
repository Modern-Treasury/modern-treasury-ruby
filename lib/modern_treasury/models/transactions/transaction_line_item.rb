# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @example
      # ```ruby
      # transaction_line_item => {
      #   id: String,
      #   amount: Integer,
      #   counterparty_id: String,
      #   created_at: Time,
      #   description: String,
      #   **_
      # }
      # ```
      class TransactionLineItem < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   If a matching object exists in Modern Treasury, `amount` will be populated.
        #     Value in specified currency's smallest unit (taken from parent Transaction).
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute counterparty_id
        #   The ID for the counterparty for this transaction line item.
        #
        #   @return [String, nil]
        required :counterparty_id, String, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute description
        #   If no matching object is found, `description` will be a free-form text field
        #     describing the line item. This field may contain personally identifiable
        #     information (PII) and is not included in API responses by default. Learn more
        #     about changing your settings at
        #     https://docs.moderntreasury.com/reference/personally-identifiable-information.
        #
        #   @return [String]
        required :description, String

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute expected_payment_id
        #   The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @return [String, nil]
        required :expected_payment_id, String, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment, or false
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute reconcilable
        #   Describes whether this line item should be counted towards the corresponding
        #     transaction’s reconciliation.
        #
        #   @return [Boolean]
        required :reconcilable, ModernTreasury::BooleanModel

        # @!attribute transactable_id
        #   If a matching object exists in Modern Treasury, the ID will be populated here,
        #     otherwise `null`.
        #
        #   @return [String, nil]
        required :transactable_id, String, nil?: true

        # @!attribute transactable_type
        #   If a matching object exists in Modern Treasury, the type will be populated here,
        #     otherwise `null`.
        #
        #   @return [Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType, nil]
        required :transactable_type,
                 enum: -> { ModernTreasury::Models::Transactions::TransactionLineItem::TransactableType },
                 nil?: true

        # @!attribute transaction_id
        #   The ID of the parent transaction.
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute type
        #   Indicates whether the line item is `originating` or `receiving` (see
        #     https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        #
        #   @return [Symbol, ModernTreasury::Models::Transactions::TransactionLineItem::Type]
        required :type, enum: -> { ModernTreasury::Models::Transactions::TransactionLineItem::Type }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param counterparty_id [String, nil]
        #   # @param created_at [String]
        #   # @param description [String]
        #   # @param discarded_at [String, nil]
        #   # @param expected_payment_id [String, nil]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param reconcilable [Boolean]
        #   # @param transactable_id [String, nil]
        #   # @param transactable_type [String, nil]
        #   # @param transaction_id [String]
        #   # @param type [String]
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     counterparty_id:,
        #     created_at:,
        #     description:,
        #     discarded_at:,
        #     expected_payment_id:,
        #     live_mode:,
        #     object:,
        #     reconcilable:,
        #     transactable_id:,
        #     transactable_type:,
        #     transaction_id:,
        #     type:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # If a matching object exists in Modern Treasury, the type will be populated here,
        #   otherwise `null`.
        #
        # @example
        # ```ruby
        # case transactable_type
        # in :incoming_payment_detail
        #   # ...
        # in :paper_item
        #   # ...
        # in :payment_order
        #   # ...
        # in :payment_order_attempt
        #   # ...
        # in :return
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class TransactableType < ModernTreasury::Enum
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          PAYMENT_ORDER_ATTEMPT = :payment_order_attempt
          RETURN = :return
          REVERSAL = :reversal

          finalize!
        end

        # Indicates whether the line item is `originating` or `receiving` (see
        #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        #
        # @example
        # ```ruby
        # case type
        # in :originating
        #   # ...
        # in :receiving
        #   # ...
        # end
        # ```
        class Type < ModernTreasury::Enum
          ORIGINATING = :originating
          RECEIVING = :receiving

          finalize!
        end
      end
    end

    TransactionLineItem = Transactions::TransactionLineItem
  end
end
