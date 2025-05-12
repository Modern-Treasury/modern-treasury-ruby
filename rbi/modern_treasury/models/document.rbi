# typed: strong

module ModernTreasury
  module Models
    class Document < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Document, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[ModernTreasury::Document::DocumentDetail]) }
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
      sig { returns(ModernTreasury::Document::DocumentableType::TaggedSymbol) }
      attr_accessor :documentable_type

      sig { returns(ModernTreasury::Document::File) }
      attr_reader :file

      sig { params(file: ModernTreasury::Document::File::OrHash).void }
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
          document_details:
            T::Array[ModernTreasury::Document::DocumentDetail::OrHash],
          document_type: T.nilable(String),
          documentable_id: String,
          documentable_type:
            ModernTreasury::Document::DocumentableType::OrSymbol,
          file: ModernTreasury::Document::File::OrHash,
          live_mode: T::Boolean,
          object: String,
          source: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        discarded_at:,
        document_details:,
        # A category given to the document, can be `null`.
        document_type:,
        # The unique identifier for the associated object.
        documentable_id:,
        # The type of the associated object. Currently can be one of `payment_order`,
        # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
        # `case`, `internal_account`, `decision`, or `external_account`.
        documentable_type:,
        file:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The source of the document. Can be `vendor`, `customer`, or `modern_treasury`.
        source:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            document_details:
              T::Array[ModernTreasury::Document::DocumentDetail],
            document_type: T.nilable(String),
            documentable_id: String,
            documentable_type:
              ModernTreasury::Document::DocumentableType::TaggedSymbol,
            file: ModernTreasury::Document::File,
            live_mode: T::Boolean,
            object: String,
            source: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class DocumentDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Document::DocumentDetail,
              ModernTreasury::Internal::AnyHash
            )
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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          discarded_at:,
          document_identifier:,
          document_identifier_type:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override.returns(
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
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::Document::DocumentableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CASE =
          T.let(:case, ModernTreasury::Document::DocumentableType::TaggedSymbol)
        COUNTERPARTY =
          T.let(
            :counterparty,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNT =
          T.let(
            :external_account,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNT =
          T.let(
            :internal_account,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        ORGANIZATION =
          T.let(
            :organization,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        DECISION =
          T.let(
            :decision,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )
        CONNECTION =
          T.let(
            :connection,
            ModernTreasury::Document::DocumentableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::Document::DocumentableType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class File < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Document::File,
              ModernTreasury::Internal::AnyHash
            )
          end

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

        sig do
          params(content_type: String, filename: String, size: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The MIME content type of the document.
          content_type: nil,
          # The original filename of the document.
          filename: nil,
          # The size of the document in bytes.
          size: nil
        )
        end

        sig do
          override.returns(
            { content_type: String, filename: String, size: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
