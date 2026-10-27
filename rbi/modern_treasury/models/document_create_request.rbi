# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::DocumentCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(ModernTreasury::Internal::FileInput) }
      attr_accessor :file

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :document_type

      sig { params(document_type: String).void }
      attr_writer :document_type

      # The unique identifier for the associated object.
      sig { returns(T.nilable(String)) }
      attr_reader :documentable_id

      sig { params(documentable_id: String).void }
      attr_writer :documentable_id

      sig do
        returns(
          T.nilable(
            ModernTreasury::DocumentCreateRequest::DocumentableType::OrSymbol
          )
        )
      end
      attr_reader :documentable_type

      sig do
        params(
          documentable_type:
            ModernTreasury::DocumentCreateRequest::DocumentableType::OrSymbol
        ).void
      end
      attr_writer :documentable_type

      sig do
        params(
          file: ModernTreasury::Internal::FileInput,
          document_type: String,
          documentable_id: String,
          documentable_type:
            ModernTreasury::DocumentCreateRequest::DocumentableType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        file:,
        # A category given to the document, can be `null`.
        document_type: nil,
        # The unique identifier for the associated object.
        documentable_id: nil,
        documentable_type: nil
      )
      end

      sig do
        override.returns(
          {
            file: ModernTreasury::Internal::FileInput,
            document_type: String,
            documentable_id: String,
            documentable_type:
              ModernTreasury::DocumentCreateRequest::DocumentableType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::DocumentCreateRequest::DocumentableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTION =
          T.let(
            :connection,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        COUNTERPARTY =
          T.let(
            :counterparty,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        IDENTIFICATION =
          T.let(
            :identification,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNT =
          T.let(
            :internal_account,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        LEGAL_ENTITY =
          T.let(
            :legal_entity,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::DocumentCreateRequest::DocumentableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
