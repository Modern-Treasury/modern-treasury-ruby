# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The unique identifier for the associated object.
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

      sig { returns(T.any(IO, StringIO)) }
      def file
      end

      sig { params(_: T.any(IO, StringIO)).returns(T.any(IO, StringIO)) }
      def file=(_)
      end

      # A category given to the document, can be `null`.
      sig { returns(T.nilable(String)) }
      def document_type
      end

      sig { params(_: String).returns(String) }
      def document_type=(_)
      end

      sig do
        params(
          documentable_id: String,
          documentable_type: Symbol,
          file: T.any(IO, StringIO),
          document_type: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
              documentable_type: Symbol,
              file: T.any(IO, StringIO),
              document_type: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class DocumentableType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CASES = :cases
        COUNTERPARTIES = :counterparties
        EXPECTED_PAYMENTS = :expected_payments
        EXTERNAL_ACCOUNTS = :external_accounts
        INCOMING_PAYMENT_DETAILS = :incoming_payment_details
        INTERNAL_ACCOUNTS = :internal_accounts
        ORGANIZATIONS = :organizations
        PAPER_ITEMS = :paper_items
        PAYMENT_ORDERS = :payment_orders
        TRANSACTIONS = :transactions
        DECISIONS = :decisions
        CONNECTIONS = :connections
      end
    end
  end
end
