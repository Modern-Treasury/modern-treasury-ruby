# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      # Create a ledger account statement.
      #
      # @param params [ModernTreasury::Models::LedgerAccountStatementCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :effective_at_lower_bound The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #     be included in the ledger account statement.
      #
      #   @option params [Time] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #     be included in the ledger account statement.
      #
      #   @option params [String] :ledger_account_id The id of the ledger account whose ledger entries are queried against, and its
      #     balances are computed as a result.
      #
      #   @option params [String, nil] :description The description of the ledger account statement.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse]
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountStatementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_statements",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountStatementCreateResponse,
          options: options
        )
      end

      # Get details on a single ledger account statement.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountStatementRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_statements/%0s", id],
          model: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
