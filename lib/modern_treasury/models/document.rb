# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # document => {
    #   id: String,
    #   created_at: Time,
    #   discarded_at: Time,
    #   document_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::Document::DocumentDetail] === _1 },
    #   document_type: String,
    #   **_
    # }
    # ```
    class Document < ModernTreasury::BaseModel
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
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::Document::DocumentDetail] }

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
      #     `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #     `case`, `internal_account`, `decision`, or `external_account`.
      #
      #   @return [Symbol, ModernTreasury::Models::Document::DocumentableType]
      required :documentable_type, enum: -> { ModernTreasury::Models::Document::DocumentableType }

      # @!attribute file
      #
      #   @return [ModernTreasury::Models::Document::File]
      required :file, -> { ModernTreasury::Models::Document::File }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

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

      # @!parse
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param document_details [Array<ModernTreasury::Models::Document::DocumentDetail>]
      #   # @param document_type [String, nil]
      #   # @param documentable_id [String]
      #   # @param documentable_type [Symbol, ModernTreasury::Models::Document::DocumentableType]
      #   # @param file [ModernTreasury::Models::Document::File]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param source [String]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     discarded_at:,
      #     document_details:,
      #     document_type:,
      #     documentable_id:,
      #     documentable_type:,
      #     file:,
      #     live_mode:,
      #     object:,
      #     source:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # document_detail => {
      #   id: String,
      #   created_at: Time,
      #   discarded_at: Time,
      #   document_identifier: String,
      #   document_identifier_type: String,
      #   **_
      # }
      # ```
      class DocumentDetail < ModernTreasury::BaseModel
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
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param created_at [Time]
        #   # @param discarded_at [Time, nil]
        #   # @param document_identifier [String]
        #   # @param document_identifier_type [String]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(
        #     id:,
        #     created_at:,
        #     discarded_at:,
        #     document_identifier:,
        #     document_identifier_type:,
        #     live_mode:,
        #     object:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      #
      # @example
      # ```ruby
      # case documentable_type
      # in :case
      #   # ...
      # in :counterparty
      #   # ...
      # in :expected_payment
      #   # ...
      # in :external_account
      #   # ...
      # in :incoming_payment_detail
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # @example
      # ```ruby
      # file => {
      #   content_type: String,
      #   filename: String,
      #   size: Integer
      # }
      # ```
      class File < ModernTreasury::BaseModel
        # @!attribute [r] content_type
        #   The MIME content type of the document.
        #
        #   @return [String, nil]
        optional :content_type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :content_type

        # @!attribute [r] filename
        #   The original filename of the document.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!parse
        #   # @return [String]
        #   attr_writer :filename

        # @!attribute [r] size
        #   The size of the document in bytes.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :size

        # @!parse
        #   # @param content_type [String]
        #   # @param filename [String]
        #   # @param size [Integer]
        #   #
        #   def initialize(content_type: nil, filename: nil, size: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
