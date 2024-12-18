# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute accounting
      #   @return [ModernTreasury::Models::LineItem::Accounting]
      required :accounting, -> { ModernTreasury::Models::LineItem::Accounting }

      # @!attribute accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_category_id, String

      # @!attribute accounting_ledger_class_id
      #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
      #   @return [String]
      required :accounting_ledger_class_id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A free-form description of the line item.
      #   @return [String]
      required :description, String

      # @!attribute itemizable_id
      #   The ID of the payment order or expected payment.
      #   @return [String]
      required :itemizable_id, String

      # @!attribute itemizable_type
      #   One of `payment_orders` or `expected_payments`.
      #   @return [Symbol, ModernTreasury::Models::LineItem::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItem::ItemizableType }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      class Accounting < ModernTreasury::BaseModel
        # @!attribute account_id
        #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :account_id, String

        # @!attribute class_id
        #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :class_id, String

        # @!parse
        #   # Create a new instance of Accounting from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :account_id The ID of one of your accounting categories. Note that these will only be
        #   #     accessible if your accounting system has been connected.
        #   #   @option data [String, nil] :class_id The ID of one of the class objects in your accounting system. Class objects
        #   #     track segments of your business independent of client or project. Note that
        #   #     these will only be accessible if your accounting system has been connected.
        #   def initialize(data = {}) = super
      end

      # One of `payment_orders` or `expected_payments`.
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder
      end

      # @!parse
      #   # Create a new instance of LineItem from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :accounting
      #   #   @option data [String] :accounting_category_id The ID of one of your accounting categories. Note that these will only be
      #   #     accessible if your accounting system has been connected.
      #   #   @option data [String] :accounting_ledger_class_id The ID of one of the class objects in your accounting system. Class objects
      #   #     track segments of your business independent of client or project. Note that
      #   #     these will only be accessible if your accounting system has been connected.
      #   #   @option data [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
      #   #     as 1000.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description A free-form description of the line item.
      #   #   @option data [String] :itemizable_id The ID of the payment order or expected payment.
      #   #   @option data [String] :itemizable_type One of `payment_orders` or `expected_payments`.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
