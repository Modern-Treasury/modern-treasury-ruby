# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentCreate < ModernTreasury::Internal::Type::BaseModel
      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String]
      required :documentable_id, String

      # @!attribute documentable_type
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentCreate::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::DocumentCreate::DocumentableType }

      # @!attribute file
      #
      #   @return [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      required :file, ModernTreasury::Internal::Type::FileInput

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String, nil]
      optional :document_type, String

      # @!method initialize(documentable_id:, documentable_type:, file:, document_type: nil)
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::Models::DocumentCreate::DocumentableType]
      #
      #   @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      #
      #   @param document_type [String] A category given to the document, can be `null`.

      # @see ModernTreasury::Models::DocumentCreate#documentable_type
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        COUNTERPARTIES = :counterparties
        EXPECTED_PAYMENTS = :expected_payments
        EXTERNAL_ACCOUNTS = :external_accounts
        IDENTIFICATIONS = :identifications
        INCOMING_PAYMENT_DETAILS = :incoming_payment_details
        INTERNAL_ACCOUNTS = :internal_accounts
        ORGANIZATIONS = :organizations
        PAYMENT_ORDERS = :payment_orders
        TRANSACTIONS = :transactions
        CONNECTIONS = :connections

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
