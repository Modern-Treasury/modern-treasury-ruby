# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LineItems#retrieve
    class LineItem < ModernTreasury::Internal::Type::BaseModel
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
      #   accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_category_id, String, nil?: true

      # @!attribute accounting_ledger_class_id
      #   The ID of one of the class objects in your accounting system. Class objects
      #   track segments of your business independent of client or project. Note that
      #   these will only be accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      required :accounting_ledger_class_id, String, nil?: true

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
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
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, accounting:, accounting_category_id:, accounting_ledger_class_id:, amount:, created_at:, description:, itemizable_id:, itemizable_type:, live_mode:, metadata:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LineItem} for more details.
      #
      #   @param id [String]
      #
      #   @param accounting [ModernTreasury::Models::LineItem::Accounting]
      #
      #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #   ...
      #
      #   @param accounting_ledger_class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects trac
      #   ...
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #   ...
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] A free-form description of the line item.
      #
      #   @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      #   @param itemizable_type [Symbol, ModernTreasury::Models::LineItem::ItemizableType] One of `payment_orders` or `expected_payments`.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #   ...
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #   ...
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::LineItem#accounting
      class Accounting < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_id
        #   The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!attribute class_id
        #   The ID of one of the class objects in your accounting system. Class objects
        #   track segments of your business independent of client or project. Note that
        #   these will only be accessible if your accounting system has been connected.
        #
        #   @return [String, nil]
        optional :class_id, String, nil?: true

        # @!method initialize(account_id: nil, class_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LineItem::Accounting} for more details.
        #
        #   @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
        #   ...
        #
        #   @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects trac
        #   ...
      end

      # One of `payment_orders` or `expected_payments`.
      #
      # @see ModernTreasury::Models::LineItem#itemizable_type
      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENT = :ExpectedPayment
        PAYMENT_ORDER = :PaymentOrder

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
