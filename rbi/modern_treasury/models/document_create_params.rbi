# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::DocumentCreateParams,
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
            ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol
          )
        )
      end
      attr_reader :documentable_type

      sig do
        params(
          documentable_type:
            ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol
        ).void
      end
      attr_writer :documentable_type

      sig do
        params(
          file: ModernTreasury::Internal::FileInput,
          document_type: String,
          documentable_id: String,
          documentable_type:
            ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        file:,
        # A category given to the document, can be `null`.
        document_type: nil,
        # The unique identifier for the associated object.
        documentable_id: nil,
        documentable_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file: ModernTreasury::Internal::FileInput,
            document_type: String,
            documentable_id: String,
            documentable_type:
              ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
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
              ModernTreasury::DocumentCreateParams::DocumentableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTIONS =
          T.let(
            :connections,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        COUNTERPARTIES =
          T.let(
            :counterparties,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        IDENTIFICATIONS =
          T.let(
            :identifications,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAILS =
          T.let(
            :incoming_payment_details,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNTS =
          T.let(
            :internal_accounts,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        LEGAL_ENTITIES =
          T.let(
            :legal_entities,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        ORGANIZATIONS =
          T.let(
            :organizations,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        TRANSACTIONS =
          T.let(
            :transactions,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
