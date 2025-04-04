# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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
      #   @return [IO, StringIO]
      required :file, IO

      # @!attribute [r] document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String, nil]
      optional :document_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :document_type

      # @!parse
      #   # @param documentable_id [String]
      #   # @param documentable_type [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType]
      #   # @param file [IO, StringIO]
      #   # @param document_type [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      module DocumentableType
        extend ModernTreasury::Enum

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
        #   def self.values; end
      end
    end
  end
end
