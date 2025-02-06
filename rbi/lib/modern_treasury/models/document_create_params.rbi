# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      attr_accessor :documentable_id

      sig { returns(Symbol) }
      attr_accessor :documentable_type

      sig { returns(T.any(IO, StringIO)) }
      attr_accessor :file

      sig { returns(T.nilable(String)) }
      attr_reader :document_type

      sig { params(document_type: String).void }
      attr_writer :document_type

      sig do
        params(
          documentable_id: String,
          documentable_type: Symbol,
          file: T.any(IO, StringIO),
          document_type: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            documentable_id: String,
            documentable_type: Symbol,
            file: T.any(IO, StringIO),
            document_type: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class DocumentableType < ModernTreasury::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
