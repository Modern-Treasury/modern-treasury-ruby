# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String]
      optional :documentable_id, String

      # @!attribute documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType]
      optional :documentable_type, enum: -> { ModernTreasury::Models::DocumentListParams::DocumentableType }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param documentable_id [String, nil] The unique identifier for the associated object.
      #   #
      #   # @param documentable_type [String, nil] The type of the associated object. Currently can be one of `payment_order`,
      #   #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   #   `case`, `internal_account`, `decision`, or `external_account`.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      class DocumentableType < ModernTreasury::Enum
        CASES = :cases
        COUNTERPARTIES = :counterparties
        EXPECTED_PAYMENTS = :expected_payments
        EXTERNAL_ACCOUNTS = :external_accounts
        INCOMING_PAYMENT_DETAILS = :incoming_payment_details
        INTERNAL_ACCOUNTS = :internal_accounts
        ORGANIZATIONS = :organizations
        PAPER_ITEMS = :paper_items
        PAYMENT_ORDERS = :payment_orders
        TRANSACTIONS = :transactions
        DECISIONS = :decisions
        CONNECTIONS = :connections
      end
    end
  end
end
