# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The unique identifier for the associated object.
      sig { returns(String) }
      attr_accessor :documentable_id

      sig { returns(ModernTreasury::Models::DocumentCreateParams::DocumentableType::OrSymbol) }
      attr_accessor :documentable_type

      sig { returns(T.any(IO, StringIO)) }
      attr_accessor :file

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :document_type

      sig { params(document_type: String).void }
      attr_writer :document_type

      sig do
        params(
          documentable_id: String,
          documentable_type: ModernTreasury::Models::DocumentCreateParams::DocumentableType::OrSymbol,
          file: T.any(IO, StringIO),
          document_type: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              documentable_id: String,
              documentable_type: ModernTreasury::Models::DocumentCreateParams::DocumentableType::OrSymbol,
              file: T.any(IO, StringIO),
              document_type: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module DocumentableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol) }

        CASES = T.let(:cases, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        COUNTERPARTIES =
          T.let(:counterparties, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        INCOMING_PAYMENT_DETAILS =
          T.let(
            :incoming_payment_details,
            ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNTS =
          T.let(:internal_accounts, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        ORGANIZATIONS =
          T.let(:organizations, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        PAPER_ITEMS =
          T.let(:paper_items, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        TRANSACTIONS =
          T.let(:transactions, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        DECISIONS =
          T.let(:decisions, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)
        CONNECTIONS =
          T.let(:connections, ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::DocumentCreateParams::DocumentableType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
