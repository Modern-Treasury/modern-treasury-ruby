# typed: strong

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # The unique identifier for the associated object.
      sig { returns(T.nilable(String)) }
      def documentable_id
      end

      sig { params(_: String).returns(String) }
      def documentable_id=(_)
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      sig { returns(T.nilable(ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol)) }
      def documentable_type
      end

      sig do
        params(_: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol)
          .returns(ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol)
      end
      def documentable_type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: ModernTreasury::Models::DocumentListParams::DocumentableType::OrSymbol,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after_cursor: nil, documentable_id: nil, documentable_type: nil, per_page: nil, request_options: {})
      end

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
      def to_hash
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      #   `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      #   `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol) }

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

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::DocumentListParams::DocumentableType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
