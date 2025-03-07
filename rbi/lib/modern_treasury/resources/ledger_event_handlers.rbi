# typed: strong

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      sig do
        params(
          ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
          name: String,
          conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def create(
        ledger_transaction_template:,
        name:,
        conditions: nil,
        description: nil,
        ledger_id: nil,
        metadata: nil,
        variables: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerEventHandler])
      end
      def list(
        after_cursor: nil,
        created_at: nil,
        metadata: nil,
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def delete(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
