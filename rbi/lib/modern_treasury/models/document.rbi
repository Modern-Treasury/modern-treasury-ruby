# typed: strong

module ModernTreasury
  module Models
    class Document < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          document_details: T::Array[ModernTreasury::Models::Document::DocumentDetail],
          document_type: T.nilable(String),
          documentable_id: String,
          documentable_type: Symbol,
          file: ModernTreasury::Models::Document::File,
          live_mode: T::Boolean,
          object: String,
          source: String,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[ModernTreasury::Models::Document::DocumentDetail]) }
      attr_accessor :document_details

      sig { returns(T.nilable(String)) }
      attr_accessor :document_type

      sig { returns(String) }
      attr_accessor :documentable_id

      sig { returns(Symbol) }
      attr_accessor :documentable_type

      sig { returns(ModernTreasury::Models::Document::File) }
      attr_accessor :file

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :source

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          document_details: T::Array[ModernTreasury::Models::Document::DocumentDetail],
          document_type: T.nilable(String),
          documentable_id: String,
          documentable_type: Symbol,
          file: ModernTreasury::Models::Document::File,
          live_mode: T::Boolean,
          object: String,
          source: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        discarded_at:,
        document_details:,
        document_type:,
        documentable_id:,
        documentable_type:,
        file:,
        live_mode:,
        object:,
        source:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::Document::Shape) }
      def to_h; end

      class DocumentDetail < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            document_identifier: String,
            document_identifier_type: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(String) }
        attr_accessor :document_identifier

        sig { returns(String) }
        attr_accessor :document_identifier_type

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            document_identifier: String,
            document_identifier_type: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          created_at:,
          discarded_at:,
          document_identifier:,
          document_identifier_type:,
          live_mode:,
          object:,
          updated_at:
        ); end

        sig { returns(ModernTreasury::Models::Document::DocumentDetail::Shape) }
        def to_h; end
      end

      class DocumentableType < ModernTreasury::Enum
        abstract!

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

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class File < ModernTreasury::BaseModel
        Shape = T.type_alias { {content_type: String, filename: String, size: Integer} }

        sig { returns(T.nilable(String)) }
        attr_reader :content_type

        sig { params(content_type: String).void }
        attr_writer :content_type

        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { params(content_type: String, filename: String, size: Integer).void }
        def initialize(content_type: nil, filename: nil, size: nil); end

        sig { returns(ModernTreasury::Models::Document::File::Shape) }
        def to_h; end
      end
    end
  end
end
