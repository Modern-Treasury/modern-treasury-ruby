# frozen_string_literal: true

module ModernTreasury
  module Models
    class DocumentCreateRequest < ModernTreasury::Internal::Type::BaseModel
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
      #   @return [Symbol, ModernTreasury::Models::DocumentCreateRequest::DocumentableType, nil]
      optional :documentable_type, enum: -> { ModernTreasury::DocumentCreateRequest::DocumentableType }

      # @!method initialize(file:, document_type: nil, documentable_id: nil, documentable_type: nil)
      #   @param file [Pathname, StringIO, IO, String, ModernTreasury::FilePart]
      #
      #   @param document_type [String] A category given to the document, can be `null`.
      #
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::Models::DocumentCreateRequest::DocumentableType]

      # @see ModernTreasury::Models::DocumentCreateRequest#documentable_type
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        CONNECTION = :connection
        COUNTERPARTY = :counterparty
        EXPECTED_PAYMENT = :expected_payment
        IDENTIFICATION = :identification
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        INTERNAL_ACCOUNT = :internal_account
        LEGAL_ENTITY = :legal_entity
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        TRANSACTION = :transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
