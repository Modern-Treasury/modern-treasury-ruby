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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   If no matching object is found, `description` will be a free-form text field describing the line item. This field may contain personally identifiable information (PII) and is not included in API responses by default. Learn more about changing your settings at https://docs.moderntreasury.com/reference/personally-identifiable-information.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

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
      #   @return [Symbol]
      required :transactable_type,
               ModernTreasury::Enum.new(
                 :incoming_payment_detail,
                 :paper_item,
                 :payment_order,
                 :payment_order_attempt,
                 :return,
                 :reversal
               )

      # @!attribute [rw] transaction_id
      #   The ID of the parent transaction.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   Indicates whether the line item is `originating` or `receiving` (see https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
      #   @return [Symbol]
      required :type, ModernTreasury::Enum.new(:originating, :receiving)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
