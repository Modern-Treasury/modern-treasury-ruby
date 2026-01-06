# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountStatementCreateParams} for more details.
      #
      # Create a ledger account statement.
      #
      # @overload create(effective_at_lower_bound:, effective_at_upper_bound:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #
      # @param effective_at_lower_bound [Time] The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #
      # @param effective_at_upper_bound [Time] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      # @param ledger_account_id [String] The id of the ledger account whose ledger entries are queried against, and its b
      #
      # @param description [String, nil] The description of the ledger account statement.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountStatement]
      #
      # @see ModernTreasury::Models::LedgerAccountStatementCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerAccountStatementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_statements",
          body: parsed,
          model: ModernTreasury::LedgerAccountStatement,
          options: options
        )
      end

      # Get details on a single ledger account statement.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountStatement]
      #
      # @see ModernTreasury::Models::LedgerAccountStatementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_statements/%1$s", id],
          model: ModernTreasury::LedgerAccountStatement,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
