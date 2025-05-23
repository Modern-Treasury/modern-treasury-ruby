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

      # The unique identifier for the associated object.
      sig { returns(String) }
      attr_accessor :documentable_id

      sig do
        returns(
          ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol
        )
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
            ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol,
          file: ModernTreasury::Internal::FileInput,
          document_type: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the associated object.
        documentable_id:,
        documentable_type:,
        file:,
        # A category given to the document, can be `null`.
        document_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            documentable_id: String,
            documentable_type:
              ModernTreasury::DocumentCreateParams::DocumentableType::OrSymbol,
            file: ModernTreasury::Internal::FileInput,
            document_type: String,
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
        ORGANIZATIONS =
          T.let(
            :organizations,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        PAPER_ITEMS =
          T.let(
            :paper_items,
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
        CONNECTIONS =
          T.let(
            :connections,
            ModernTreasury::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        CONVERSATIONS =
          T.let(
            :conversations,
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
