# typed: strong

module ModernTreasury
  module Models
    class Document < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[ModernTreasury::Models::Document::DocumentDetail]) }
      attr_accessor :document_details

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :document_type

      # The unique identifier for the associated object.
      sig { returns(String) }
      attr_accessor :documentable_id

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      sig { returns(ModernTreasury::Models::Document::DocumentableType::TaggedSymbol) }
      attr_accessor :documentable_type

      sig { returns(ModernTreasury::Models::Document::File) }
      attr_reader :file

      sig { params(file: T.any(ModernTreasury::Models::Document::File, ModernTreasury::Internal::AnyHash)).void }
      attr_writer :file

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
      sig { returns(String) }
      attr_accessor :source

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          document_details: T::Array[T.any(ModernTreasury::Models::Document::DocumentDetail, ModernTreasury::Internal::AnyHash)],
          document_type: T.nilable(String),
          documentable_id: String,
          documentable_type: ModernTreasury::Models::Document::DocumentableType::OrSymbol,
          file: T.any(ModernTreasury::Models::Document::File, ModernTreasury::Internal::AnyHash),
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
      ); end
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
      def to_hash; end

      class DocumentDetail < ModernTreasury::Internal::Type::BaseModel
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

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
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
        ); end
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
        def to_hash; end
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Document::DocumentableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

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

        sig { override.returns(T::Array[ModernTreasury::Models::Document::DocumentableType::TaggedSymbol]) }
        def self.values; end
      end

      class File < ModernTreasury::Internal::Type::BaseModel
        # The MIME content type of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :content_type

        sig { params(content_type: String).void }
        attr_writer :content_type

        # The original filename of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        # The size of the document in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { params(content_type: String, filename: String, size: Integer).returns(T.attached_class) }
        def self.new(content_type: nil, filename: nil, size: nil); end

        sig { override.returns({content_type: String, filename: String, size: Integer}) }
        def to_hash; end
      end
    end
  end
end
