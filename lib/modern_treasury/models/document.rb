# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Documents#create
    class Document < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute document_details
      #
      #   @return [Array<ModernTreasury::Models::Document::DocumentDetail>]
      required :document_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document::DocumentDetail] }

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #
      #   @return [String, nil]
      required :document_type, String, nil?: true

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #
      #   @return [String]
      required :documentable_id, String

      # @!attribute documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @return [Symbol, ModernTreasury::Models::Document::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::Document::DocumentableType }

      # @!attribute file
      #
      #   @return [ModernTreasury::Models::Document::File]
      required :file, -> { ModernTreasury::Document::File }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute source
      #   The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      #
      #   @return [String]
      required :source, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, discarded_at:, document_details:, document_type:, documentable_id:, documentable_type:, file:, live_mode:, object:, source:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Document} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param document_details [Array<ModernTreasury::Models::Document::DocumentDetail>]
      #
      #   @param document_type [String, nil] A category given to the document, can be `null`.
      #
      #   @param documentable_id [String] The unique identifier for the associated object.
      #
      #   @param documentable_type [Symbol, ModernTreasury::Models::Document::DocumentableType] The type of the associated object. Currently can be one of `payment_order`, `tra
      #
      #   @param file [ModernTreasury::Models::Document::File]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param source [String] The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      #
      #   @param updated_at [Time]

      class DocumentDetail < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute document_identifier
        #
        #   @return [String]
        required :document_identifier, String

        # @!attribute document_identifier_type
        #
        #   @return [String]
        required :document_identifier_type, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, discarded_at:, document_identifier:, document_identifier_type:, live_mode:, object:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Document::DocumentDetail} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param discarded_at [Time, nil]
        #
        #   @param document_identifier [String]
        #
        #   @param document_identifier_type [String]
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param updated_at [Time]
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      #
      # @see ModernTreasury::Models::Document#documentable_type
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        COUNTERPARTY = :counterparty
        EXPECTED_PAYMENT = :expected_payment
        EXTERNAL_ACCOUNT = :external_account
        IDENTIFICATION = :identification
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        INTERNAL_ACCOUNT = :internal_account
        ORGANIZATION = :organization
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        TRANSACTION = :transaction
        CONNECTION = :connection
        CONVERSATION = :conversation

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ModernTreasury::Models::Document#file
      class File < ModernTreasury::Internal::Type::BaseModel
        # @!attribute content_type
        #   The MIME content type of the document.
        #
        #   @return [String, nil]
        optional :content_type, String

        # @!attribute filename
        #   The original filename of the document.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!attribute size
        #   The size of the document in bytes.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(content_type: nil, filename: nil, size: nil)
        #   @param content_type [String] The MIME content type of the document.
        #
        #   @param filename [String] The original filename of the document.
        #
        #   @param size [Integer] The size of the document in bytes.
      end
    end
  end
end
