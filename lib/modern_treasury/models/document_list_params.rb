# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Documents#list
    class DocumentListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String, nil]
      optional :documentable_id, String

      # @!attribute documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType, nil]
      optional :documentable_type, enum: -> { ModernTreasury::DocumentListParams::DocumentableType }

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::DocumentListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType] The type of the associated object. Currently can be one of `payment_order`, `tra
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
