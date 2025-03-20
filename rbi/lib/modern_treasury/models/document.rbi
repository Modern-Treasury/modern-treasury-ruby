# typed: strong

module ModernTreasury
  module Models
    class Document < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::Document::DocumentDetail]) }
      def document_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::Document::DocumentDetail])
          .returns(T::Array[ModernTreasury::Models::Document::DocumentDetail])
      end
      def document_details=(_)
      end

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      def document_type
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def document_type=(_)
      end

      # The unique identifier for the associated object.
      sig { returns(String) }
      def documentable_id
      end

      sig { params(_: String).returns(String) }
      def documentable_id=(_)
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      sig { returns(ModernTreasury::Models::Document::DocumentableType::TaggedSymbol) }
      def documentable_type
      end

      sig do
        params(_: ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
          .returns(ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
      end
      def documentable_type=(_)
      end

      sig { returns(ModernTreasury::Models::Document::File) }
      def file
      end

      sig { params(_: ModernTreasury::Models::Document::File).returns(ModernTreasury::Models::Document::File) }
      def file=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      sig { returns(String) }
      def source
      end

      sig { params(_: String).returns(String) }
      def source=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          document_details: T::Array[ModernTreasury::Models::Document::DocumentDetail],
          document_type: T.nilable(String),
          documentable_id: String,
          documentable_type: ModernTreasury::Models::Document::DocumentableType::TaggedSymbol,
          file: ModernTreasury::Models::Document::File,
          live_mode: T::Boolean,
          object: String,
          source: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              document_details: T::Array[ModernTreasury::Models::Document::DocumentDetail],
              document_type: T.nilable(String),
              documentable_id: String,
              documentable_type: ModernTreasury::Models::Document::DocumentableType::TaggedSymbol,
              file: ModernTreasury::Models::Document::File,
              live_mode: T::Boolean,
              object: String,
              source: String,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class DocumentDetail < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def discarded_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def discarded_at=(_)
        end

        sig { returns(String) }
        def document_identifier
        end

        sig { params(_: String).returns(String) }
        def document_identifier=(_)
        end

        sig { returns(String) }
        def document_identifier_type
        end

        sig { params(_: String).returns(String) }
        def document_identifier_type=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          discarded_at:,
          document_identifier:,
          document_identifier_type:,
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override
            .returns(
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
            )
        end
        def to_hash
        end
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Document::DocumentableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol) }

        CASE = T.let(:case, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        COUNTERPARTY = T.let(:counterparty, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        EXTERNAL_ACCOUNT =
          T.let(:external_account, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        INTERNAL_ACCOUNT =
          T.let(:internal_account, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        ORGANIZATION = T.let(:organization, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        TRANSACTION = T.let(:transaction, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        DECISION = T.let(:decision, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
        CONNECTION = T.let(:connection, ModernTreasury::Models::Document::DocumentableType::TaggedSymbol)
      end

      class File < ModernTreasury::BaseModel
        # The MIME content type of the document.
        sig { returns(T.nilable(String)) }
        def content_type
        end

        sig { params(_: String).returns(String) }
        def content_type=(_)
        end

        # The original filename of the document.
        sig { returns(T.nilable(String)) }
        def filename
        end

        sig { params(_: String).returns(String) }
        def filename=(_)
        end

        # The size of the document in bytes.
        sig { returns(T.nilable(Integer)) }
        def size
        end

        sig { params(_: Integer).returns(Integer) }
        def size=(_)
        end

        sig { params(content_type: String, filename: String, size: Integer).returns(T.attached_class) }
        def self.new(content_type: nil, filename: nil, size: nil)
        end

        sig { override.returns({content_type: String, filename: String, size: Integer}) }
        def to_hash
        end
      end
    end
  end
end
