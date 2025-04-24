# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccounts
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountCreateParams} for more details.
      #
      # Create a ledger account.
      #
      # @overload create(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, request_options: {})
      #
      # @param currency [String] The currency of the ledger account.
      #
      # @param ledger_id [String] The id of the ledger that this account belongs to.
      #
      # @param name [String] The name of the ledger account.
      #
      # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection] The normal balance of the ledger account.
      #
      # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
      #
      # @param description [String, nil] The description of the ledger account.
      #
      # @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account should be a ch
      # ...
      #
      # @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
      # ...
      #
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType] If the ledger account links to another object in Modern Treasury, the type will
      # ...
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      # ...
      #
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

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountRetrieveParams} for more details.
      #
      # Get details on a single ledger account.
      #
      # @overload retrieve(id, balances: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param balances [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances] Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]
      # ...
      #
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

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountUpdateParams} for more details.
      #
      # Update the details of a ledger account.
      #
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param description [String, nil] The description of the ledger account.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      # ...
      #
      # @param name [String] The name of the ledger account.
      #
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

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountListParams} for more details.
      #
      # Get a list of ledger accounts.
      #
      # @overload list(id: nil, after_cursor: nil, available_balance_amount: nil, balances: nil, created_at: nil, currency: nil, ledger_account_category_id: nil, ledger_id: nil, metadata: nil, name: nil, pending_balance_amount: nil, per_page: nil, posted_balance_amount: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      # ...
      #
      # @param after_cursor [String, nil]
      #
      # @param available_balance_amount [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      # ...
      #
      # @param balances [ModernTreasury::Models::LedgerAccountListParams::Balances] Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]
      # ...
      #
      # @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the cre
      # ...
      #
      # @param currency [String]
      #
      # @param ledger_account_category_id [String]
      #
      # @param ledger_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      # ...
      #
      # @param name [Array<String>] If you have specific names to retrieve in bulk, you can pass them as query param
      # ...
      #
      # @param pending_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      # ...
      #
      # @param per_page [Integer]
      #
      # @param posted_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      # ...
      #
      # @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the upd
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccount>]
      #
      # @see ModernTreasury::Models::LedgerAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Delete a ledger account.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
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
