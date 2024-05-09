# frozen_string_literal: true

module ModernTreasury
  class Client < BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client options.
    attr_reader :api_key, :organization_id

    # @return [ModernTreasury::Resources::Connections]
    attr_reader :connections

    # @return [ModernTreasury::Resources::Counterparties]
    attr_reader :counterparties

    # @return [ModernTreasury::Resources::Events]
    attr_reader :events

    # @return [ModernTreasury::Resources::ExpectedPayments]
    attr_reader :expected_payments

    # @return [ModernTreasury::Resources::ExternalAccounts]
    attr_reader :external_accounts

    # @return [ModernTreasury::Resources::IncomingPaymentDetails]
    attr_reader :incoming_payment_details

    # @return [ModernTreasury::Resources::Invoices]
    attr_reader :invoices

    # @return [ModernTreasury::Resources::Documents]
    attr_reader :documents

    # @return [ModernTreasury::Resources::AccountCollectionFlows]
    attr_reader :account_collection_flows

    # @return [ModernTreasury::Resources::AccountDetails]
    attr_reader :account_details

    # @return [ModernTreasury::Resources::RoutingDetails]
    attr_reader :routing_details

    # @return [ModernTreasury::Resources::InternalAccounts]
    attr_reader :internal_accounts

    # @return [ModernTreasury::Resources::Ledgers]
    attr_reader :ledgers

    # @return [ModernTreasury::Resources::LedgerableEvents]
    attr_reader :ledgerable_events

    # @return [ModernTreasury::Resources::LedgerAccountCategories]
    attr_reader :ledger_account_categories

    # @return [ModernTreasury::Resources::LedgerAccounts]
    attr_reader :ledger_accounts

    # @return [ModernTreasury::Resources::LedgerAccountBalanceMonitors]
    attr_reader :ledger_account_balance_monitors

    # @return [ModernTreasury::Resources::LedgerAccountPayouts]
    attr_reader :ledger_account_payouts

    # @return [ModernTreasury::Resources::LedgerAccountStatements]
    attr_reader :ledger_account_statements

    # @return [ModernTreasury::Resources::LedgerEntries]
    attr_reader :ledger_entries

    # @return [ModernTreasury::Resources::LedgerEventHandlers]
    attr_reader :ledger_event_handlers

    # @return [ModernTreasury::Resources::LedgerTransactions]
    attr_reader :ledger_transactions

    # @return [ModernTreasury::Resources::LineItems]
    attr_reader :line_items

    # @return [ModernTreasury::Resources::PaymentFlows]
    attr_reader :payment_flows

    # @return [ModernTreasury::Resources::PaymentOrders]
    attr_reader :payment_orders

    # @return [ModernTreasury::Resources::PaymentReferences]
    attr_reader :payment_references

    # @return [ModernTreasury::Resources::Returns]
    attr_reader :returns

    # @return [ModernTreasury::Resources::Transactions]
    attr_reader :transactions

    # @return [ModernTreasury::Resources::Validations]
    attr_reader :validations

    # @return [ModernTreasury::Resources::PaperItems]
    attr_reader :paper_items

    # @return [ModernTreasury::Resources::VirtualAccounts]
    attr_reader :virtual_accounts

    # @return [ModernTreasury::Resources::BulkRequests]
    attr_reader :bulk_requests

    # @return [ModernTreasury::Resources::BulkResults]
    attr_reader :bulk_results

    # @return [ModernTreasury::Resources::LedgerAccountSettlements]
    attr_reader :ledger_account_settlements

    # @return [ModernTreasury::Resources::ForeignExchangeQuotes]
    attr_reader :foreign_exchange_quotes

    # @return [ModernTreasury::Resources::ConnectionLegalEntities]
    attr_reader :connection_legal_entities

    # @return [ModernTreasury::Resources::LegalEntities]
    attr_reader :legal_entities

    # @return [ModernTreasury::Resources::LegalEntityAssociations]
    attr_reader :legal_entity_associations

    # @!visibility private
    def auth_headers
      # Strict base64 encoding that ensures no control characters.
      base64_credentials = ["#{@organization_id}:#{@api_key}"].pack("m0")
      {"Authorization" => "Basic #{base64_credentials}"}
    end

    # Creates and returns a new client for interacting with the API.
    def initialize(base_url: nil, api_key: nil, organization_id: nil, max_retries: nil)
      base_url ||= "https://app.moderntreasury.com"

      max_retries ||= DEFAULT_MAX_RETRIES
      idempotency_header = "Idempotency-Key"

      @api_key = [api_key, ENV["MODERN_TREASURY_API_KEY"]].find { |v| !v.nil? }
      if @api_key.nil?
        raise ArgumentError, "api_key is required"
      end
      @organization_id = [organization_id, ENV["MODERN_TREASURY_ORGANIZATION_ID"]].find { |v| !v.nil? }
      if @organization_id.nil?
        raise ArgumentError, "organization_id is required"
      end

      super(base_url: base_url, max_retries: max_retries, idempotency_header: idempotency_header)

      @connections = ModernTreasury::Resources::Connections.new(client: self)
      @counterparties = ModernTreasury::Resources::Counterparties.new(client: self)
      @events = ModernTreasury::Resources::Events.new(client: self)
      @expected_payments = ModernTreasury::Resources::ExpectedPayments.new(client: self)
      @external_accounts = ModernTreasury::Resources::ExternalAccounts.new(client: self)
      @incoming_payment_details = ModernTreasury::Resources::IncomingPaymentDetails.new(client: self)
      @invoices = ModernTreasury::Resources::Invoices.new(client: self)
      @documents = ModernTreasury::Resources::Documents.new(client: self)
      @account_collection_flows = ModernTreasury::Resources::AccountCollectionFlows.new(client: self)
      @account_details = ModernTreasury::Resources::AccountDetails.new(client: self)
      @routing_details = ModernTreasury::Resources::RoutingDetails.new(client: self)
      @internal_accounts = ModernTreasury::Resources::InternalAccounts.new(client: self)
      @ledgers = ModernTreasury::Resources::Ledgers.new(client: self)
      @ledgerable_events = ModernTreasury::Resources::LedgerableEvents.new(client: self)
      @ledger_account_categories = ModernTreasury::Resources::LedgerAccountCategories.new(client: self)
      @ledger_accounts = ModernTreasury::Resources::LedgerAccounts.new(client: self)
      @ledger_account_balance_monitors = ModernTreasury::Resources::LedgerAccountBalanceMonitors.new(client: self)
      @ledger_account_payouts = ModernTreasury::Resources::LedgerAccountPayouts.new(client: self)
      @ledger_account_statements = ModernTreasury::Resources::LedgerAccountStatements.new(client: self)
      @ledger_entries = ModernTreasury::Resources::LedgerEntries.new(client: self)
      @ledger_event_handlers = ModernTreasury::Resources::LedgerEventHandlers.new(client: self)
      @ledger_transactions = ModernTreasury::Resources::LedgerTransactions.new(client: self)
      @line_items = ModernTreasury::Resources::LineItems.new(client: self)
      @payment_flows = ModernTreasury::Resources::PaymentFlows.new(client: self)
      @payment_orders = ModernTreasury::Resources::PaymentOrders.new(client: self)
      @payment_references = ModernTreasury::Resources::PaymentReferences.new(client: self)
      @returns = ModernTreasury::Resources::Returns.new(client: self)
      @transactions = ModernTreasury::Resources::Transactions.new(client: self)
      @validations = ModernTreasury::Resources::Validations.new(client: self)
      @paper_items = ModernTreasury::Resources::PaperItems.new(client: self)
      @virtual_accounts = ModernTreasury::Resources::VirtualAccounts.new(client: self)
      @bulk_requests = ModernTreasury::Resources::BulkRequests.new(client: self)
      @bulk_results = ModernTreasury::Resources::BulkResults.new(client: self)
      @ledger_account_settlements = ModernTreasury::Resources::LedgerAccountSettlements.new(client: self)
      @foreign_exchange_quotes = ModernTreasury::Resources::ForeignExchangeQuotes.new(client: self)
      @connection_legal_entities = ModernTreasury::Resources::ConnectionLegalEntities.new(client: self)
      @legal_entities = ModernTreasury::Resources::LegalEntities.new(client: self)
      @legal_entity_associations = ModernTreasury::Resources::LegalEntityAssociations.new(client: self)
    end

    # @!visibility private
    def make_status_error(message:, body:, response:)
      case response.code.to_i
      when 400
        ModernTreasury::HTTP::BadRequestError.new(message: message, response: response, body: body)
      when 401
        ModernTreasury::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      when 403
        ModernTreasury::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      when 404
        ModernTreasury::HTTP::NotFoundError.new(message: message, response: response, body: body)
      when 409
        ModernTreasury::HTTP::ConflictError.new(message: message, response: response, body: body)
      when 422
        ModernTreasury::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      when 429
        ModernTreasury::HTTP::RateLimitError.new(message: message, response: response, body: body)
      when 500..599
        ModernTreasury::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        ModernTreasury::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end
