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
      #   @return [Time]
      required :created_at, Time

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
      #   @return [Symbol, ModernTreasury::Models::LineItem::ItemizableType]
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
      #   @return [Time]
      required :updated_at, Time

      class Accounting < BaseModel
        # @!attribute [rw] account_id
        #   The ID of one of your accounting categories. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :account_id, String

        # @!attribute [rw] class_id
        #   The ID of one of the class objects in your accounting system. Class objects track segments of your business independent of client or project. Note that these will only be accessible if your accounting system has been connected.
        #   @return [String]
        optional :class_id, String

        # Create a new instance of Accounting from a Hash of raw data.
        #
        # @overload initialize(account_id: nil, class_id: nil)
        # @param account_id [String] The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        # @param class_id [String] The ID of one of the class objects in your accounting system. Class objects
        #   track segments of your business independent of client or project. Note that
        #   these will only be accessible if your accounting system has been connected.
        def initialize(data = {})
          super
        end
      end

      # One of `payment_orders` or `expected_payments`.
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder
      end

      # Create a new instance of LineItem from a Hash of raw data.
      #
      # @overload initialize(id: nil, accounting: nil, accounting_category_id: nil, accounting_ledger_class_id: nil, amount: nil, created_at: nil, description: nil, itemizable_id: nil, itemizable_type: nil, live_mode: nil, metadata: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param accounting [Object]
      # @param accounting_category_id [String] The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      # @param accounting_ledger_class_id [String] The ID of one of the class objects in your accounting system. Class objects
      #   track segments of your business independent of client or project. Note that
      #   these will only be accessible if your accounting system has been connected.
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      # @param created_at [String]
      # @param description [String] A free-form description of the line item.
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      # @param itemizable_type [String] One of `payment_orders` or `expected_payments`.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
