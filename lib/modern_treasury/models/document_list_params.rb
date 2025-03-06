# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String, nil]
      optional :documentable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :documentable_id

      # @!attribute [r] documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`,
      #     `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #     `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType, nil]
      optional :documentable_type, enum: -> { ModernTreasury::Models::DocumentListParams::DocumentableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType]
      #   attr_writer :documentable_type

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param documentable_id [String]
      #   # @param documentable_type [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
