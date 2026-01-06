# typed: strong

module ModernTreasury
  module Models
    class DocumentCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::DocumentCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The unique identifier for the associated object.
      sig { returns(String) }
      attr_accessor :documentable_id

      sig do
        returns(ModernTreasury::DocumentCreate::DocumentableType::OrSymbol)
      end
      attr_accessor :documentable_type

      sig { returns(ModernTreasury::Internal::FileInput) }
      attr_accessor :file

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :document_type

      sig { params(document_type: String).void }
      attr_writer :document_type

      sig do
        params(
          documentable_id: String,
          documentable_type:
            ModernTreasury::DocumentCreate::DocumentableType::OrSymbol,
          file: ModernTreasury::Internal::FileInput,
          document_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the associated object.
        documentable_id:,
        documentable_type:,
        file:,
        # A category given to the document, can be `null`.
        document_type: nil
      )
      end

      sig do
        override.returns(
          {
            documentable_id: String,
            documentable_type:
              ModernTreasury::DocumentCreate::DocumentableType::OrSymbol,
            file: ModernTreasury::Internal::FileInput,
            document_type: String
          }
        )
      end
      def to_hash
      end

      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::DocumentCreate::DocumentableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTERPARTIES =
          T.let(
            :counterparties,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        IDENTIFICATIONS =
          T.let(
            :identifications,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAILS =
          T.let(
            :incoming_payment_details,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNTS =
          T.let(
            :internal_accounts,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        ORGANIZATIONS =
          T.let(
            :organizations,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        TRANSACTIONS =
          T.let(
            :transactions,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )
        CONNECTIONS =
          T.let(
            :connections,
            ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::DocumentCreate::DocumentableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
