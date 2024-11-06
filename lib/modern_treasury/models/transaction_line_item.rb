# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionLineItem < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   If a matching object exists in Modern Treasury, `amount` will be populated. Value in specified currency's smallest unit (taken from parent Transaction).
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] counterparty_id
      #   The ID for the counterparty for this transaction line item.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   If no matching object is found, `description` will be a free-form text field describing the line item. This field may contain personally identifiable information (PII) and is not included in API responses by default. Learn more about changing your settings at https://docs.moderntreasury.com/reference/personally-identifiable-information.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] expected_payment_id
      #   The ID of the reconciled Expected Payment, otherwise `null`.
      #   @return [String]
      required :expected_payment_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment, or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] reconcilable
      #   Describes whether this line item should be counted towards the corresponding transaction’s reconciliation.
      #   @return [Boolean]
      required :reconcilable, ModernTreasury::BooleanModel

      # @!attribute [rw] transactable_id
      #   If a matching object exists in Modern Treasury, the ID will be populated here, otherwise `null`.
      #   @return [String]
      required :transactable_id, String

      # @!attribute [rw] transactable_type
      #   If a matching object exists in Modern Treasury, the type will be populated here, otherwise `null`.
      #   @return [Symbol, ModernTreasury::Models::TransactionLineItem::TransactableType]
      required :transactable_type, enum: -> { ModernTreasury::Models::TransactionLineItem::TransactableType }

      # @!attribute [rw] transaction_id
      #   The ID of the parent transaction.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   Indicates whether the line item is `originating` or `receiving` (see https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
      #   @return [Symbol, ModernTreasury::Models::TransactionLineItem::Type]
      required :type, enum: -> { ModernTreasury::Models::TransactionLineItem::Type }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # If a matching object exists in Modern Treasury, the type will be populated here, otherwise `null`.
      class TransactableType < ModernTreasury::Enum
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        PAYMENT_ORDER_ATTEMPT = :payment_order_attempt
        RETURN = :return
        REVERSAL = :reversal
      end

      # Indicates whether the line item is `originating` or `receiving` (see https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
      class Type < ModernTreasury::Enum
        ORIGINATING = :originating
        RECEIVING = :receiving
      end

      # @!parse
      #   # Create a new instance of TransactionLineItem from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :amount If a matching object exists in Modern Treasury, `amount` will be populated.
      #   #     Value in specified currency's smallest unit (taken from parent Transaction).
      #   #   @option data [String] :counterparty_id The ID for the counterparty for this transaction line item.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description If no matching object is found, `description` will be a free-form text field
      #   #     describing the line item. This field may contain personally identifiable
      #   #     information (PII) and is not included in API responses by default. Learn more
      #   #     about changing your settings at
      #   #     https://docs.moderntreasury.com/reference/personally-identifiable-information.
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :expected_payment_id The ID of the reconciled Expected Payment, otherwise `null`.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment, or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [Hash] :reconcilable Describes whether this line item should be counted towards the corresponding
      #   #     transaction’s reconciliation.
      #   #   @option data [String] :transactable_id If a matching object exists in Modern Treasury, the ID will be populated here,
      #   #     otherwise `null`.
      #   #   @option data [String] :transactable_type If a matching object exists in Modern Treasury, the type will be populated here,
      #   #     otherwise `null`.
      #   #   @option data [String] :transaction_id The ID of the parent transaction.
      #   #   @option data [String] :type Indicates whether the line item is `originating` or `receiving` (see
      #   #     https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
