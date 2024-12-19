# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String]
      required :documentable_id, String

      # @!attribute documentable_type
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::Models::DocumentCreateParams::DocumentableType }

      # @!attribute file
      #
      #   @return [String]
      required :file, String

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String]
      optional :document_type, String

      # @!parse
      #   # @param documentable_id [String] The unique identifier for the associated object.
      #   #
      #   # @param documentable_type [String]
      #   #
      #   # @param file [String]
      #   #
      #   # @param document_type [String, nil] A category given to the document, can be `null`.
      #   #
      #   def initialize(documentable_id:, documentable_type:, file:, document_type: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :cases
      #   # ...
      # in :counterparties
      #   # ...
      # in :expected_payments
      #   # ...
      # in :external_accounts
      #   # ...
      # in :incoming_payment_details
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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
