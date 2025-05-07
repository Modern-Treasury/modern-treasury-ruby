# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @see ModernTreasury::Resources::Transactions::LineItems#create
      class TransactionLineItem < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
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
        #   describing the line item. This field may contain personally identifiable
        #   information (PII) and is not included in API responses by default. Learn more
        #   about changing your settings at
        #   https://docs.moderntreasury.com/reference/personally-identifiable-information.
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
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute reconcilable
        #   Describes whether this line item should be counted towards the corresponding
        #   transaction’s reconciliation.
        #
        #   @return [Boolean]
        required :reconcilable, ModernTreasury::Internal::Type::Boolean

        # @!attribute transactable_id
        #   If a matching object exists in Modern Treasury, the ID will be populated here,
        #   otherwise `null`.
        #
        #   @return [String, nil]
        required :transactable_id, String, nil?: true

        # @!attribute transactable_type
        #   If a matching object exists in Modern Treasury, the type will be populated here,
        #   otherwise `null`.
        #
        #   @return [Symbol, ModernTreasury::Transactions::TransactionLineItem::TransactableType, nil]
        required :transactable_type,
                 enum: -> { ModernTreasury::Transactions::TransactionLineItem::TransactableType },
                 nil?: true

        # @!attribute transaction_id
        #   The ID of the parent transaction.
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute type
        #   Indicates whether the line item is `originating` or `receiving` (see
        #   https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        #
        #   @return [Symbol, ModernTreasury::Transactions::TransactionLineItem::Type]
        required :type, enum: -> { ModernTreasury::Transactions::TransactionLineItem::Type }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, amount:, counterparty_id:, created_at:, description:, discarded_at:, expected_payment_id:, live_mode:, object:, reconcilable:, transactable_id:, transactable_type:, transaction_id:, type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Transactions::TransactionLineItem} for more details.
        #
        #   @param id [String]
        #
        #   @param amount [Integer] If a matching object exists in Modern Treasury, `amount` will be populated. Valu
        #
        #   @param counterparty_id [String, nil] The ID for the counterparty for this transaction line item.
        #
        #   @param created_at [Time]
        #
        #   @param description [String] If no matching object is found, `description` will be a free-form text field des
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param expected_payment_id [String, nil] The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment, or false
        #
        #   @param object [String]
        #
        #   @param reconcilable [Boolean] Describes whether this line item should be counted towards the corresponding tra
        #
        #   @param transactable_id [String, nil] If a matching object exists in Modern Treasury, the ID will be populated here, o
        #
        #   @param transactable_type [Symbol, ModernTreasury::Transactions::TransactionLineItem::TransactableType, nil] If a matching object exists in Modern Treasury, the type will be populated here,
        #
        #   @param transaction_id [String] The ID of the parent transaction.
        #
        #   @param type [Symbol, ModernTreasury::Transactions::TransactionLineItem::Type] Indicates whether the line item is `originating` or `receiving` (see https://www
        #
        #   @param updated_at [Time]

        # If a matching object exists in Modern Treasury, the type will be populated here,
        # otherwise `null`.
        #
        # @see ModernTreasury::Transactions::TransactionLineItem#transactable_type
        module TransactableType
          extend ModernTreasury::Internal::Type::Enum

          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          PAYMENT_ORDER_ATTEMPT = :payment_order_attempt
          RETURN = :return
          REVERSAL = :reversal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates whether the line item is `originating` or `receiving` (see
        # https://www.moderntreasury.com/journal/beginners-guide-to-ach for more).
        #
        # @see ModernTreasury::Transactions::TransactionLineItem#type
        module Type
          extend ModernTreasury::Internal::Type::Enum

          ORIGINATING = :originating
          RECEIVING = :receiving

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    TransactionLineItem = Transactions::TransactionLineItem
  end
end
