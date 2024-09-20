# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItem < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] accounting
      #   @return [ModernTreasury::Models::LineItem::Accounting]
      required :accounting, -> { ModernTreasury::Models::LineItem::Accounting }

      # @!attribute [rw] accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_category_id, String

      # @!attribute [rw] accounting_ledger_class_id
      #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_ledger_class_id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] description
      #   A free-form description of the line item.
      #   @return [String]
      required :description, String

      # @!attribute [rw] itemizable_id
      #   The ID of the payment order or expected payment.
      #   @return [String]
      required :itemizable_id, String

      # @!attribute [rw] itemizable_type
      #   One of `payment_orders` or `expected_payments`.
      #   One of the constants defined in {ModernTreasury::Models::LineItem::ItemizableType}
      #   @return [Symbol]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItem::ItemizableType }

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

      # @!attribute [rw] updated_at
      #   @return [DateTime]
      required :updated_at, DateTime

      class Accounting < BaseModel
        # @!attribute [rw] account_id
        #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :account_id, String

        # @!attribute [rw] class_id
        #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :class_id, String
      end

      # One of `payment_orders` or `expected_payments`.
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder
      end
    end
  end
end
