# typed: strong

module ModernTreasury
  module Models
    class DocumentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {documentable_id: String, documentable_type: Symbol, file: String, document_type: String},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :documentable_id

      sig { returns(Symbol) }
      attr_accessor :documentable_type

      sig { returns(String) }
      attr_accessor :file

      sig { returns(T.nilable(String)) }
      attr_reader :document_type

      sig { params(document_type: String).void }
      attr_writer :document_type

      sig do
        params(
          documentable_id: String,
          documentable_type: Symbol,
          file: String,
          document_type: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(documentable_id:, documentable_type:, file:, document_type: nil, request_options: {})
      end

      sig { returns(ModernTreasury::Models::DocumentCreateParams::Shape) }
      def to_h; end

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
