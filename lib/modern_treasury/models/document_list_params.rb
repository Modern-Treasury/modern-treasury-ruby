# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] documentable_id
      #   The unique identifier for the associated object.
      #   @return [String]
      optional :documentable_id, String

      # @!attribute [rw] documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      #   @return [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType]
      optional :documentable_type, enum: -> { ModernTreasury::Models::DocumentListParams::DocumentableType }

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

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
