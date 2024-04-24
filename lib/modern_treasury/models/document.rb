# frozen_string_literal: true

module ModernTreasury
  module Models
    class Document < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

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
      #   @return [Symbol]
      required :documentable_type,
               ModernTreasury::Enum.new(
                 :case,
                 :counterparty,
                 :expected_payment,
                 :external_account,
                 :incoming_payment_detail,
                 :internal_account,
                 :organization,
                 :paper_item,
                 :payment_order,
                 :transaction,
                 :decision,
                 :connection
               )

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
      #   @return [String]
      required :updated_at, String

      class DocumentDetail < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        required :discarded_at, String

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
        #   @return [String]
        required :updated_at, String
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
      end
    end
  end
end
