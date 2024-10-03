# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      def initialize(client:)
        @client = client
      end

      # Create a ledger account statement.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [DateTime] :effective_at_lower_bound The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      # @option params [DateTime] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      # @option params [String] :ledger_account_id The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      # @option params [String, nil] :description The description of the ledger account statement.
      # @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/ledger_account_statements",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LedgerAccountStatementCreateResponse
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger account statement.
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_account_statements/#{id}",
          model: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
