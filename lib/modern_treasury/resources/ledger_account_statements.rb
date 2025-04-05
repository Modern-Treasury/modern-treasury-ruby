# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountStatements
      # Create a ledger account statement.
      #
      # @overload create(effective_at_lower_bound:, effective_at_upper_bound:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #
      # @param effective_at_lower_bound [Time]
      # @param effective_at_upper_bound [Time]
      # @param ledger_account_id [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse]
      #
      # @see ModernTreasury::Models::LedgerAccountStatementCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse]
      #
      # @see ModernTreasury::Models::LedgerAccountStatementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_statements/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse,
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
