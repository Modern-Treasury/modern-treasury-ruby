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

      sig { returns(T.nilable(String)) }
      def document_type
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def document_type=(_)
      end

      sig { returns(String) }
      def documentable_id
      end

      sig { params(_: String).returns(String) }
      def documentable_id=(_)
      end

      sig { returns(Symbol) }
      def documentable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def documentable_type=(_)
      end

      sig { returns(ModernTreasury::Models::Document::File) }
      def file
      end

      sig { params(_: ModernTreasury::Models::Document::File).returns(ModernTreasury::Models::Document::File) }
      def file=(_)
      end

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
          documentable_type: Symbol,
          file: ModernTreasury::Models::Document::File,
          live_mode: T::Boolean,
          object: String,
          source: String,
          updated_at: Time
        )
          .void
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
              documentable_type: Symbol,
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
            .void
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class File < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        def content_type
        end

        sig { params(_: String).returns(String) }
        def content_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def filename
        end

        sig { params(_: String).returns(String) }
        def filename=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def size
        end

        sig { params(_: Integer).returns(Integer) }
        def size=(_)
        end

        sig { params(content_type: String, filename: String, size: Integer).void }
        def initialize(content_type: nil, filename: nil, size: nil)
        end

        sig { override.returns({content_type: String, filename: String, size: Integer}) }
        def to_hash
        end
      end
    end
  end
end
