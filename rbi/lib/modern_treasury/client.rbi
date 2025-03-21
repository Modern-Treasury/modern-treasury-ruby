# typed: strong

module ModernTreasury
  class Client < ModernTreasury::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def api_key
    end

    sig { returns(String) }
    def organization_id
    end

    sig { returns(ModernTreasury::Resources::Connections) }
    def connections
    end

    sig { returns(ModernTreasury::Resources::Counterparties) }
    def counterparties
    end

    sig { returns(ModernTreasury::Resources::Events) }
    def events
    end

    sig { returns(ModernTreasury::Resources::ExpectedPayments) }
    def expected_payments
    end

    sig { returns(ModernTreasury::Resources::ExternalAccounts) }
    def external_accounts
    end

    sig { returns(ModernTreasury::Resources::IncomingPaymentDetails) }
    def incoming_payment_details
    end

    sig { returns(ModernTreasury::Resources::Invoices) }
    def invoices
    end

    sig { returns(ModernTreasury::Resources::Documents) }
    def documents
    end

    sig { returns(ModernTreasury::Resources::AccountCollectionFlows) }
    def account_collection_flows
    end

    sig { returns(ModernTreasury::Resources::AccountDetails) }
    def account_details
    end

    sig { returns(ModernTreasury::Resources::RoutingDetails) }
    def routing_details
    end

    sig { returns(ModernTreasury::Resources::InternalAccounts) }
    def internal_accounts
    end

    sig { returns(ModernTreasury::Resources::Ledgers) }
    def ledgers
    end

    sig { returns(ModernTreasury::Resources::LedgerableEvents) }
    def ledgerable_events
    end

    sig { returns(ModernTreasury::Resources::LedgerAccountCategories) }
    def ledger_account_categories
    end

    sig { returns(ModernTreasury::Resources::LedgerAccounts) }
    def ledger_accounts
    end

    sig { returns(ModernTreasury::Resources::LedgerAccountBalanceMonitors) }
    def ledger_account_balance_monitors
    end

    sig { returns(ModernTreasury::Resources::LedgerAccountStatements) }
    def ledger_account_statements
    end

    sig { returns(ModernTreasury::Resources::LedgerEntries) }
    def ledger_entries
    end

    sig { returns(ModernTreasury::Resources::LedgerEventHandlers) }
    def ledger_event_handlers
    end

    sig { returns(ModernTreasury::Resources::LedgerTransactions) }
    def ledger_transactions
    end

    sig { returns(ModernTreasury::Resources::LineItems) }
    def line_items
    end

    sig { returns(ModernTreasury::Resources::PaymentFlows) }
    def payment_flows
    end

    sig { returns(ModernTreasury::Resources::PaymentOrders) }
    def payment_orders
    end

    sig { returns(ModernTreasury::Resources::PaymentReferences) }
    def payment_references
    end

    sig { returns(ModernTreasury::Resources::Returns) }
    def returns
    end

    sig { returns(ModernTreasury::Resources::Transactions) }
    def transactions
    end

    sig { returns(ModernTreasury::Resources::Validations) }
    def validations
    end

    sig { returns(ModernTreasury::Resources::PaperItems) }
    def paper_items
    end

    sig { returns(ModernTreasury::Resources::VirtualAccounts) }
    def virtual_accounts
    end

    sig { returns(ModernTreasury::Resources::BulkRequests) }
    def bulk_requests
    end

    sig { returns(ModernTreasury::Resources::BulkResults) }
    def bulk_results
    end

    sig { returns(ModernTreasury::Resources::LedgerAccountSettlements) }
    def ledger_account_settlements
    end

    sig { returns(ModernTreasury::Resources::ForeignExchangeQuotes) }
    def foreign_exchange_quotes
    end

    sig { returns(ModernTreasury::Resources::ConnectionLegalEntities) }
    def connection_legal_entities
    end

    sig { returns(ModernTreasury::Resources::LegalEntities) }
    def legal_entities
    end

    sig { returns(ModernTreasury::Resources::LegalEntityAssociations) }
    def legal_entity_associations
    end

    # A test endpoint often used to confirm credentials and headers are being passed
    #   in correctly.
    sig do
      params(request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)))
        .returns(ModernTreasury::Models::PingResponse)
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
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        organization_id: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Defaults to `ENV["MODERN_TREASURY_API_KEY"]`
      api_key: ENV["MODERN_TREASURY_API_KEY"],
      # Defaults to `ENV["MODERN_TREASURY_ORGANIZATION_ID"]`
      organization_id: ENV["MODERN_TREASURY_ORGANIZATION_ID"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
