# frozen_string_literal: true

module ModernTreasury
  module Models
    class Document < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] document_details
      #   @return [Array<ModernTreasury::Models::Document::DocumentDetail>]
      required :document_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::Document::DocumentDetail })

      # @!attribute [rw] document_type
      #   A category given to the document, can be `null`.
      #   @return [String]
      required :document_type, String

      # @!attribute [rw] documentable_id
      #   The unique identifier for the associated object.
      #   @return [String]
      required :documentable_id, String

      # @!attribute [rw] documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      #   @return [Symbol, ModernTreasury::Models::Document::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::Models::Document::DocumentableType }

      # @!attribute [rw] file
      #   @return [ModernTreasury::Models::Document::File]
      required :file, -> { ModernTreasury::Models::Document::File }

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] source
      #   The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      #   @return [String]
      required :source, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class DocumentDetail < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute [rw] document_identifier
        #   @return [String]
        required :document_identifier, String

        # @!attribute [rw] document_identifier_type
        #   @return [String]
        required :document_identifier_type, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        # Create a new instance of DocumentDetail from a Hash of raw data.
        #
        # @overload initialize(id: nil, created_at: nil, discarded_at: nil, document_identifier: nil, document_identifier_type: nil, live_mode: nil, object: nil, updated_at: nil)
        # @param id [String]
        # @param created_at [String]
        # @param discarded_at [String]
        # @param document_identifier [String]
        # @param document_identifier_type [String]
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param object [String]
        # @param updated_at [String]
        def initialize(data = {})
          super
        end
      end

      # The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      class DocumentableType < ModernTreasury::Enum
        CASE = :case
        COUNTERPARTY = :counterparty
        EXPECTED_PAYMENT = :expected_payment
        EXTERNAL_ACCOUNT = :external_account
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        INTERNAL_ACCOUNT = :internal_account
        ORGANIZATION = :organization
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        TRANSACTION = :transaction
        DECISION = :decision
        CONNECTION = :connection
      end

      class File < BaseModel
        # @!attribute [rw] content_type
        #   The MIME content type of the document.
        #   @return [String]
        optional :content_type, String

        # @!attribute [rw] filename
        #   The original filename of the document.
        #   @return [String]
        optional :filename, String

        # @!attribute [rw] size
        #   The size of the document in bytes.
        #   @return [Integer]
        optional :size, Integer

        # Create a new instance of File from a Hash of raw data.
        #
        # @overload initialize(content_type: nil, filename: nil, size: nil)
        # @param content_type [String] The MIME content type of the document.
        # @param filename [String] The original filename of the document.
        # @param size [Integer] The size of the document in bytes.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of Document from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, discarded_at: nil, document_details: nil, document_type: nil, documentable_id: nil, documentable_type: nil, file: nil, live_mode: nil, object: nil, source: nil, updated_at: nil)
      # @param id [String]
      # @param created_at [String]
      # @param discarded_at [String]
      # @param document_details [Array<Object>]
      # @param document_type [String] A category given to the document, can be `null`.
      # @param documentable_id [String] The unique identifier for the associated object.
      # @param documentable_type [String] The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      # @param file [Object]
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param object [String]
      # @param source [String] The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
