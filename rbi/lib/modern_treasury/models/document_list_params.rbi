# typed: strong

module ModernTreasury
  module Models
    class DocumentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :documentable_id

      sig { params(documentable_id: String).void }
      attr_writer :documentable_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :documentable_type

      sig { params(documentable_type: Symbol).void }
      attr_writer :documentable_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          documentable_id: String,
          documentable_type: Symbol,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        after_cursor: nil,
        documentable_id: nil,
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
            documentable_type: Symbol,
            per_page: Integer,
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
