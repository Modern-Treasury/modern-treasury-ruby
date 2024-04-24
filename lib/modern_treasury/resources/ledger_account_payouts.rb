# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountPayouts
      def initialize(client:)
        @client = client
      end

      # Create a ledger account payout.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :funding_ledger_account_id The id of the funding ledger account that sends to or receives funds from the
      #   payout ledger account.
      # @option params [String] :payout_ledger_account_id The id of the payout ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
      # @option params [Boolean] :allow_either_direction If true, the payout amount and payout_entry_direction will bring the payout
      #   ledger account's balance closer to zero, even if the balance is negative.
      # @option params [String] :description The description of the ledger account payout.
      # @option params [String] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account payout. The default value is the created_at
      #   timestamp of the ledger account payout.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Boolean] :skip_payout_ledger_transaction It is set to `false` by default. It should be set to `true` when migrating
      #   existing payouts.
      # @option params [Symbol] :status The status of the ledger account payout. It is set to `pending` by default. To
      #   post a ledger account payout at creation, use `posted`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountPayout]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledger_account_payouts"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccountPayout
        @client.request(req, opts)
      end

      # Get details on a single ledger account payout.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountPayout]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_account_payouts/#{id}"
        req[:model] = ModernTreasury::Models::LedgerAccountPayout
        @client.request(req, opts)
      end

      # Update the details of a ledger account payout.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description The description of the ledger account payout.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Symbol] :status To post a pending ledger account payout, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountPayout]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledger_account_payouts/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccountPayout
        @client.request(req, opts)
      end

      # Get a list of ledger account payouts.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [String] :payout_entry_direction
      # @option params [String] :payout_ledger_account_id
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountPayout>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_account_payouts"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LedgerAccountPayout
        @client.request(req, opts)
      end

      # Get details on a single ledger account payout.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountPayout]
      def retireve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_account_payouts/#{id}"
        req[:model] = ModernTreasury::Models::LedgerAccountPayout
        @client.request(req, opts)
      end
    end
  end
end
