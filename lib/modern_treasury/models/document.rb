# frozen_string_literal: true

module ModernTreasury
  module Models
    class Document < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute document_details
      #   @return [Array<ModernTreasury::Models::Document::DocumentDetail>]
      required :document_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::Document::DocumentDetail })

      # @!attribute document_type
      #   A category given to the document, can be `null`.
      #   @return [String]
      required :document_type, String

      # @!attribute documentable_id
      #   The unique identifier for the associated object.
      #   @return [String]
      required :documentable_id, String

      # @!attribute documentable_type
      #   The type of the associated object. Currently can be one of `payment_order`, `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`, `case`, `internal_account`, `decision`, or `external_account`.
      #   @return [Symbol, ModernTreasury::Models::Document::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::Models::Document::DocumentableType }

      # @!attribute file
      #   @return [ModernTreasury::Models::Document::File]
      required :file, -> { ModernTreasury::Models::Document::File }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute source
      #   The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      #   @return [String]
      required :source, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      class DocumentDetail < ModernTreasury::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute document_identifier
        #   @return [String]
        required :document_identifier, String

        # @!attribute document_identifier_type
        #   @return [String]
        required :document_identifier_type, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # Create a new instance of DocumentDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :created_at
        #   #   @option data [String] :discarded_at
        #   #   @option data [String] :document_identifier
        #   #   @option data [String] :document_identifier_type
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :object
        #   #   @option data [String] :updated_at
        #   def initialize(data = {}) = super
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

      class File < ModernTreasury::BaseModel
        # @!attribute content_type
        #   The MIME content type of the document.
        #   @return [String]
        optional :content_type, String

        # @!attribute filename
        #   The original filename of the document.
        #   @return [String]
        optional :filename, String

        # @!attribute size
        #   The size of the document in bytes.
        #   @return [Integer]
        optional :size, Integer

        # @!parse
        #   # Create a new instance of File from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :content_type The MIME content type of the document.
        #   #   @option data [String, nil] :filename The original filename of the document.
        #   #   @option data [Integer, nil] :size The size of the document in bytes.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of Document from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Array<Object>] :document_details
      #   #   @option data [String] :document_type A category given to the document, can be `null`.
      #   #   @option data [String] :documentable_id The unique identifier for the associated object.
      #   #   @option data [String] :documentable_type The type of the associated object. Currently can be one of `payment_order`,
      #   #     `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   #     `case`, `internal_account`, `decision`, or `external_account`.
      #   #   @option data [Object] :file
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :source The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
