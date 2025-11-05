# typed: strong

module ModernTreasury
  class Client < ModernTreasury::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(String) }
    attr_reader :organization_id

    sig { returns(ModernTreasury::Resources::Connections) }
    attr_reader :connections

    sig { returns(ModernTreasury::Resources::Counterparties) }
    attr_reader :counterparties

    sig { returns(ModernTreasury::Resources::Events) }
    attr_reader :events

    sig { returns(ModernTreasury::Resources::ExpectedPayments) }
    attr_reader :expected_payments

    sig { returns(ModernTreasury::Resources::ExternalAccounts) }
    attr_reader :external_accounts

    sig { returns(ModernTreasury::Resources::IncomingPaymentDetails) }
    attr_reader :incoming_payment_details

    sig { returns(ModernTreasury::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(ModernTreasury::Resources::Documents) }
    attr_reader :documents

    sig { returns(ModernTreasury::Resources::AccountCollectionFlows) }
    attr_reader :account_collection_flows

    sig { returns(ModernTreasury::Resources::AccountDetails) }
    attr_reader :account_details

    sig { returns(ModernTreasury::Resources::RoutingDetails) }
    attr_reader :routing_details

    sig { returns(ModernTreasury::Resources::InternalAccounts) }
    attr_reader :internal_accounts

    sig { returns(ModernTreasury::Resources::Ledgers) }
    attr_reader :ledgers

    sig { returns(ModernTreasury::Resources::LedgerAccountCategories) }
    attr_reader :ledger_account_categories

    sig { returns(ModernTreasury::Resources::LedgerAccounts) }
    attr_reader :ledger_accounts

    sig { returns(ModernTreasury::Resources::LedgerAccountBalanceMonitors) }
    attr_reader :ledger_account_balance_monitors

    sig { returns(ModernTreasury::Resources::LedgerAccountStatements) }
    attr_reader :ledger_account_statements

    sig { returns(ModernTreasury::Resources::LedgerEntries) }
    attr_reader :ledger_entries

    sig { returns(ModernTreasury::Resources::LedgerTransactions) }
    attr_reader :ledger_transactions

    sig { returns(ModernTreasury::Resources::LineItems) }
    attr_reader :line_items

    sig { returns(ModernTreasury::Resources::PaymentFlows) }
    attr_reader :payment_flows

    sig { returns(ModernTreasury::Resources::PaymentOrders) }
    attr_reader :payment_orders

    sig { returns(ModernTreasury::Resources::PaymentReferences) }
    attr_reader :payment_references

    sig { returns(ModernTreasury::Resources::Returns) }
    attr_reader :returns

    sig { returns(ModernTreasury::Resources::Transactions) }
    attr_reader :transactions

    sig { returns(ModernTreasury::Resources::Validations) }
    attr_reader :validations

    sig { returns(ModernTreasury::Resources::VirtualAccounts) }
    attr_reader :virtual_accounts

    sig { returns(ModernTreasury::Resources::BulkRequests) }
    attr_reader :bulk_requests

    sig { returns(ModernTreasury::Resources::BulkResults) }
    attr_reader :bulk_results

    sig { returns(ModernTreasury::Resources::LedgerAccountSettlements) }
    attr_reader :ledger_account_settlements

    sig { returns(ModernTreasury::Resources::ForeignExchangeQuotes) }
    attr_reader :foreign_exchange_quotes

    sig { returns(ModernTreasury::Resources::ConnectionLegalEntities) }
    attr_reader :connection_legal_entities

    sig { returns(ModernTreasury::Resources::LegalEntities) }
    attr_reader :legal_entities

    sig { returns(ModernTreasury::Resources::LegalEntityAssociations) }
    attr_reader :legal_entity_associations

    sig { returns(ModernTreasury::Resources::PaymentActions) }
    attr_reader :payment_actions

    sig { returns(ModernTreasury::Resources::JournalEntries) }
    attr_reader :journal_entries

    sig { returns(ModernTreasury::Resources::JournalReports) }
    attr_reader :journal_reports

    sig { returns(ModernTreasury::Resources::Holds) }
    attr_reader :holds

    # A test endpoint often used to confirm credentials and headers are being passed
    # in correctly.
    sig do
      params(request_options: ModernTreasury::RequestOptions::OrHash).returns(
        ModernTreasury::PingResponse
      )
    end
    def ping(request_options: {})
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        organization_id: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["MODERN_TREASURY_API_KEY"]`
      api_key: ENV["MODERN_TREASURY_API_KEY"],
      # Defaults to `ENV["MODERN_TREASURY_ORGANIZATION_ID"]`
      organization_id: ENV["MODERN_TREASURY_ORGANIZATION_ID"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["MODERN_TREASURY_BASE_URL"]`
      base_url: ENV["MODERN_TREASURY_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: ModernTreasury::Client::DEFAULT_MAX_RETRIES,
      timeout: ModernTreasury::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: ModernTreasury::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: ModernTreasury::Client::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
