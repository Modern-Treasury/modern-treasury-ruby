# typed: strong

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # The unique identifier for the associated object.
      sig { returns(T.nilable(String)) }
      attr_reader :documentable_id

      sig { params(documentable_id: String).void }
      attr_writer :documentable_id

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      sig { returns(T.nilable(ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol)) }
      attr_reader :documentable_type

      sig { params(documentable_type: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol).void }
      attr_writer :documentable_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # The unique identifier for the associated object.
        documentable_id: nil,
        # The type of the associated object. Currently can be one of `payment_order`,
        # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
        # `case`, `internal_account`, `decision`, or `external_account`.
        documentable_type: nil,
        per_page: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              documentable_id: String,
              documentable_type: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CASES = T.let(:cases, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        COUNTERPARTIES =
          T.let(:counterparties, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        EXPECTED_PAYMENTS =
          T.let(:expected_payments, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        INCOMING_PAYMENT_DETAILS =
          T.let(
            :incoming_payment_details,
            ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNTS =
          T.let(:internal_accounts, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        ORGANIZATIONS =
          T.let(:organizations, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        PAPER_ITEMS =
          T.let(:paper_items, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        PAYMENT_ORDERS =
          T.let(:payment_orders, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        TRANSACTIONS =
          T.let(:transactions, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        DECISIONS = T.let(:decisions, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)
        CONNECTIONS =
          T.let(:connections, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
