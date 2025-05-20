# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Documents#create
    class DocumentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String]
      required :documentable_id, String

      # @!attribute documentable_type
      #
      #   @return [Symbol, ModernTreasury::DocumentCreateParams::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::DocumentCreateParams::DocumentableType }

      # @!attribute file
      #
      #   @return [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      required :file, ModernTreasury::Internal::Type::FileInput

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String, nil]
      optional :document_type, String

      # @!method initialize(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::DocumentCreateParams::DocumentableType]
      #
      #   @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      #
      #   @param document_type [String] A category given to the document, can be `null`.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

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
