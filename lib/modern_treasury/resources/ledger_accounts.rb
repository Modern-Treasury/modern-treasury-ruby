# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccounts
      # Create a ledger account.
      #
      # @overload create(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, request_options: {})
      #
      # @param currency [String]
      # @param ledger_id [String]
      # @param name [String]
      # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param currency_exponent [Integer, nil]
      # @param description [String, nil]
      # @param ledger_account_category_ids [Array<String>]
      # @param ledgerable_id [String]
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      # @see ModernTreasury::Models::LedgerAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_accounts",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Get details on a single ledger account.
      #
      # @overload retrieve(id, balances: nil, request_options: {})
      #
      # @param id [String]
      # @param balances [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      # @see ModernTreasury::Models::LedgerAccountRetrieveParams
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_accounts/%1$s", id],
          query: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Update the details of a ledger account.
      #
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      # @see ModernTreasury::Models::LedgerAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Get a list of ledger accounts.
      #
      # @overload list(id: nil, after_cursor: nil, available_balance_amount: nil, balances: nil, created_at: nil, currency: nil, ledger_account_category_id: nil, ledger_id: nil, metadata: nil, name: nil, pending_balance_amount: nil, per_page: nil, posted_balance_amount: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param available_balance_amount [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      # @param balances [ModernTreasury::Models::LedgerAccountListParams::Balances]
      # @param created_at [Hash{Symbol=>Time}]
      # @param currency [String]
      # @param ledger_account_category_id [String]
      # @param ledger_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [Array<String>]
      # @param pending_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      # @param per_page [Integer]
      # @param posted_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      # @param updated_at [Hash{Symbol=>Time}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccount>]
      #
      # @see ModernTreasury::Models::LedgerAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Delete a ledger account.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      # @see ModernTreasury::Models::LedgerAccountDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_accounts/%1$s", id],
          model: ModernTreasury::Models::LedgerAccount,
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
