# typed: strong

module ModernTreasury
  module Resources
    class ExpectedPayments
      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(Symbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(Symbol),
          internal_account_id: T.nilable(String),
          ledger_transaction: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          type: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExpectedPayment)
      end
      def create(
        amount_lower_bound:,
        amount_upper_bound:,
        counterparty_id:,
        currency:,
        date_lower_bound:,
        date_upper_bound:,
        description:,
        direction:,
        internal_account_id:,
        ledger_transaction:,
        ledger_transaction_id:,
        line_items:,
        metadata:,
        reconciliation_filters:,
        reconciliation_groups:,
        reconciliation_rule_variables:,
        remittance_information:,
        statement_descriptor:,
        type:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExpectedPayment)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(Symbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(Symbol),
          internal_account_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: T.nilable(Symbol),
          type: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExpectedPayment)
      end
      def update(
        id,
        amount_lower_bound:,
        amount_upper_bound:,
        counterparty_id:,
        currency:,
        date_lower_bound:,
        date_upper_bound:,
        description:,
        direction:,
        internal_account_id:,
        metadata:,
        reconciliation_filters:,
        reconciliation_groups:,
        reconciliation_rule_variables:,
        remittance_information:,
        statement_descriptor:,
        status:,
        type:,
        request_options: {}
      ); end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: Symbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: Symbol,
          type: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ExpectedPayment])
      end
      def list(
        after_cursor:,
        counterparty_id:,
        created_at_lower_bound:,
        created_at_upper_bound:,
        direction:,
        internal_account_id:,
        metadata:,
        per_page:,
        status:,
        type:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExpectedPayment)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
