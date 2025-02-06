# frozen_string_literal: true

module ModernTreasury
  module Resources
    class VirtualAccounts
      # create virtual_account
      #
      # @param params [ModernTreasury::Models::VirtualAccountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :internal_account_id The ID of the internal account that this virtual account is associated with.
      #
      #   @option params [String] :name The name of the virtual account.
      #
      #   @option params [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>] :account_details An array of account detail objects.
      #
      #   @option params [String] :counterparty_id The ID of the counterparty that the virtual account belongs to.
      #
      #   @option params [String] :credit_ledger_account_id The ID of a credit normal ledger account. When money leaves the virtual account,
      #     this ledger account will be credited. Must be accompanied by a
      #     debit_ledger_account_id if present.
      #
      #   @option params [String] :debit_ledger_account_id The ID of a debit normal ledger account. When money enters the virtual account,
      #     this ledger account will be debited. Must be accompanied by a
      #     credit_ledger_account_id if present.
      #
      #   @option params [String] :description An optional description for internal use.
      #
      #   @option params [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount] :ledger_account Specifies a ledger account object that will be created with the virtual account.
      #     The resulting ledger account is linked to the virtual account for auto-ledgering
      #     IPDs.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>] :routing_details An array of routing detail objects.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      def create(params)
        parsed, options = ModernTreasury::Models::VirtualAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/virtual_accounts",
          body: parsed,
          model: ModernTreasury::Models::VirtualAccount,
          options: options
        )
      end

      # get virtual_account
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param params [ModernTreasury::Models::VirtualAccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/virtual_accounts/%0s", id],
          model: ModernTreasury::Models::VirtualAccount,
          options: params[:request_options]
        )
      end

      # update virtual_account
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param params [ModernTreasury::Models::VirtualAccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [String] :ledger_account_id The ledger account that you'd like to link to the virtual account.
      #
      #   @option params [Hash{Symbol=>String}] :metadata
      #
      #   @option params [String, nil] :name
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::VirtualAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/virtual_accounts/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::VirtualAccount,
          options: options
        )
      end

      # Get a list of virtual accounts.
      #
      # @param params [ModernTreasury::Models::VirtualAccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [String] :internal_account_id
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::VirtualAccount>]
      #
      def list(params = {})
        parsed, options = ModernTreasury::Models::VirtualAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/virtual_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::VirtualAccount,
          options: options
        )
      end

      # delete virtual_account
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param params [ModernTreasury::Models::VirtualAccountDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/virtual_accounts/%0s", id],
          model: ModernTreasury::Models::VirtualAccount,
          options: params[:request_options]
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
