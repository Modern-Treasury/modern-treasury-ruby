# frozen_string_literal: true

module ModernTreasury
  module Resources
    class VirtualAccounts
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create virtual_account
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :internal_account_id The ID of the internal account that this virtual account is associated with.
      #   @option params [String] :name The name of the virtual account.
      #   @option params [Array<AccountDetail>, nil] :account_details An array of account detail objects.
      #   @option params [String, nil] :counterparty_id The ID of the counterparty that the virtual account belongs to.
      #   @option params [String, nil] :credit_ledger_account_id The ID of a credit normal ledger account. When money leaves the virtual account,
      #     this ledger account will be credited. Must be accompanied by a
      #     debit_ledger_account_id if present.
      #   @option params [String, nil] :debit_ledger_account_id The ID of a debit normal ledger account. When money enters the virtual account,
      #     this ledger account will be debited. Must be accompanied by a
      #     credit_ledger_account_id if present.
      #   @option params [String, nil] :description An optional description for internal use.
      #   @option params [LedgerAccount, nil] :ledger_account Specifies a ledger account object that will be created with the virtual account.
      #     The resulting ledger account is linked to the virtual account for auto-ledgering
      #     IPDs.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [Array<RoutingDetail>, nil] :routing_details An array of routing detail objects.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/virtual_accounts",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::VirtualAccount
        }
        @client.request(req, opts)
      end

      # get virtual_account
      #
      # @param id [String] Virtual Acccount ID
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/virtual_accounts/#{id}",
          model: ModernTreasury::Models::VirtualAccount
        }
        @client.request(req, opts)
      end

      # update virtual_account
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :counterparty_id
      #   @option params [String, nil] :ledger_account_id The ledger account that you'd like to link to the virtual account.
      #   @option params [Hash, nil] :metadata
      #   @option params [String, nil] :name
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/virtual_accounts/#{id}",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::VirtualAccount
        }
        @client.request(req, opts)
      end

      # Get a list of virtual accounts.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :counterparty_id
      #   @option params [String, nil] :internal_account_id
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::VirtualAccount>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/virtual_accounts",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::VirtualAccount
        }
        @client.request(req, opts)
      end

      # delete virtual_account
      #
      # @param id [String] Virtual Acccount ID
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/virtual_accounts/#{id}",
          model: ModernTreasury::Models::VirtualAccount
        }
        @client.request(req, opts)
      end
    end
  end
end
