# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionLineItem < BaseModel
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

      # Create a new instance of TransactionLineItem from a Hash of raw data.
      #
      # @overload initialize(id: nil, amount: nil, counterparty_id: nil, created_at: nil, description: nil, discarded_at: nil, expected_payment_id: nil, live_mode: nil, object: nil, reconcilable: nil, transactable_id: nil, transactable_type: nil, transaction_id: nil, type: nil, updated_at: nil)
      # @param id [String]
      # @param amount [Integer] If a matching object exists in Modern Treasury, `amount` will be populated.
      #   Value in specified currency's smallest unit (taken from parent Transaction).
      # @param counterparty_id [String] The ID for the counterparty for this transaction line item.
      # @param created_at [String]
      # @param description [String] If no matching object is found, `description` will be a free-form text field
      #   describing the line item. This field may contain personally identifiable
      #   information (PII) and is not included in API responses by default. Learn more
      #   about changing your settings at
      #   https://docs.moderntreasury.com/reference/personally-identifiable-information.
      # @param discarded_at [String]
      # @param expected_payment_id [String] The ID of the reconciled Expected Payment, otherwise `null`.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment, or false
      #   if it exists in the test environment.
      # @param object [String]
      # @param reconcilable [Hash] Describes whether this line item should be counted towards the corresponding
      #   transaction’s reconciliation.
      # @param transactable_id [String] If a matching object exists in Modern Treasury, the ID will be populated here,
      #   otherwise `null`.
      # @param transactable_type [String] If a matching object exists in Modern Treasury, the type will be populated here,
      #   otherwise `null`.
      # @param transaction_id [String] The ID of the parent transaction.
      # @param type [String] Indicates whether the line item is `originating` or `receiving` (see
      #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
