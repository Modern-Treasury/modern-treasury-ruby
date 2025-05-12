# typed: strong

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::DocumentListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      sig do
        returns(
          T.nilable(
            ModernTreasury::DocumentListParams::DocumentableType::OrSymbol
          )
        )
      end
      attr_reader :documentable_type

      sig do
        params(
          documentable_type:
            ModernTreasury::DocumentListParams::DocumentableType::OrSymbol
        ).void
      end
      attr_writer :documentable_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type:
            ModernTreasury::DocumentListParams::DocumentableType::OrSymbol,
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
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
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            documentable_id: String,
            documentable_type:
              ModernTreasury::DocumentListParams::DocumentableType::OrSymbol,
            per_page: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of the associated object. Currently can be one of `payment_order`,
      # `transaction`, `paper_item`, `expected_payment`, `counterparty`, `organization`,
      # `case`, `internal_account`, `decision`, or `external_account`.
      module DocumentableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::DocumentListParams::DocumentableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CASES =
          T.let(
            :cases,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        COUNTERPARTIES =
          T.let(
            :counterparties,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        EXPECTED_PAYMENTS =
          T.let(
            :expected_payments,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAILS =
          T.let(
            :incoming_payment_details,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        INTERNAL_ACCOUNTS =
          T.let(
            :internal_accounts,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        ORGANIZATIONS =
          T.let(
            :organizations,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        PAPER_ITEMS =
          T.let(
            :paper_items,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        PAYMENT_ORDERS =
          T.let(
            :payment_orders,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        TRANSACTIONS =
          T.let(
            :transactions,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        DECISIONS =
          T.let(
            :decisions,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )
        CONNECTIONS =
          T.let(
            :connections,
            ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::DocumentListParams::DocumentableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
