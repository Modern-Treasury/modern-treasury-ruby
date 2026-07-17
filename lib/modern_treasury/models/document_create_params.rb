# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Documents#create
    class DocumentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute file
      #
      #   @return [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      required :file, ModernTreasury::Internal::Type::FileInput

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String, nil]
      optional :document_type, String

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String, nil]
      optional :documentable_id, String

      # @!attribute documentable_type
      #
      #   @return [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType, nil]
      optional :documentable_type, enum: -> { ModernTreasury::DocumentCreateParams::DocumentableType }

      # @!method initialize(file:, document_type: nil, documentable_id: nil, documentable_type: nil, request_options: {})
      #   @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      #
      #   @param document_type [String] A category given to the document, can be `null`.
      #
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        CONNECTIONS = :connections
        COUNTERPARTIES = :counterparties
        EXPECTED_PAYMENTS = :expected_payments
        EXTERNAL_ACCOUNTS = :external_accounts
        IDENTIFICATIONS = :identifications
        INCOMING_PAYMENT_DETAILS = :incoming_payment_details
        INTERNAL_ACCOUNTS = :internal_accounts
        LEGAL_ENTITIES = :legal_entities
        ORGANIZATIONS = :organizations
        PAYMENT_ORDERS = :payment_orders
        TRANSACTIONS = :transactions

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
