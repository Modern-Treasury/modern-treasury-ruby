# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting
      #
      #   @return [ModernTreasury::Models::LineItem::Accounting]
      required :accounting, -> { ModernTreasury::Models::LineItem::Accounting }

      # @!attribute accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be
      #     accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_category_id, String, nil?: true

      # @!attribute accounting_ledger_class_id
      #   The ID of one of the class objects in your accounting system. Class objects
      #     track segments of your business independent of client or project. Note that
      #     these will only be accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_ledger_class_id, String, nil?: true

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A free-form description of the line item.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute itemizable_id
      #   The ID of the payment order or expected payment.
      #
      #   @return [String]
      required :itemizable_id, String

      # @!attribute itemizable_type
      #   One of `payment_orders` or `expected_payments`.
      #
      #   @return [Symbol, ModernTreasury::Models::LineItem::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItem::ItemizableType }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param accounting [ModernTreasury::Models::LineItem::Accounting]
      #   # @param accounting_category_id [String, nil]
      #   # @param accounting_ledger_class_id [String, nil]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param itemizable_id [String]
      #   # @param itemizable_type [Symbol, ModernTreasury::Models::LineItem::ItemizableType]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     accounting:,
      #     accounting_category_id:,
      #     accounting_ledger_class_id:,
      #     amount:,
      #     created_at:,
      #     description:,
      #     itemizable_id:,
      #     itemizable_type:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Accounting < ModernTreasury::BaseModel
        # @!attribute account_id
        #   The ID of one of your accounting categories. Note that these will only be
        #     accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!attribute class_id
        #   The ID of one of the class objects in your accounting system. Class objects
        #     track segments of your business independent of client or project. Note that
        #     these will only be accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :class_id, String, nil?: true

        # @!parse
        #   # @param account_id [String, nil]
        #   # @param class_id [String, nil]
        #   #
        #   def initialize(account_id: nil, class_id: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # One of `payment_orders` or `expected_payments`.
      module ItemizableType
        extend ModernTreasury::Enum

        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
