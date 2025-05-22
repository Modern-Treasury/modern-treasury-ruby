# frozen_string_literal: true

module ModernTreasury
  module Resources
    class VirtualAccounts
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::VirtualAccountCreateParams} for more details.
      #
      # create virtual_account
      #
      # @overload create(internal_account_id:, name:, account_details: nil, counterparty_id: nil, credit_ledger_account_id: nil, debit_ledger_account_id: nil, description: nil, ledger_account: nil, metadata: nil, routing_details: nil, request_options: {})
      #
      # @param internal_account_id [String] The ID of the internal account that this virtual account is associated with.
      #
      # @param name [String] The name of the virtual account.
      #
      # @param account_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>] An array of account detail objects.
      #
      # @param counterparty_id [String] The ID of the counterparty that the virtual account belongs to.
      #
      # @param credit_ledger_account_id [String] The ID of a credit normal ledger account. When money leaves the virtual account,
      #
      # @param debit_ledger_account_id [String] The ID of a debit normal ledger account. When money enters the virtual account,
      #
      # @param description [String] An optional description for internal use.
      #
      # @param ledger_account [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount] Specifies a ledger account object that will be created with the virtual account.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param routing_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>] An array of routing detail objects.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::VirtualAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/virtual_accounts",
          body: parsed,
          model: ModernTreasury::VirtualAccount,
          options: options
        )
      end

      # get virtual_account
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/virtual_accounts/%1$s", id],
          model: ModernTreasury::VirtualAccount,
          options: params[:request_options]
        )
      end

      # update virtual_account
      #
      # @overload update(id, counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param counterparty_id [String]
      #
      # @param ledger_account_id [String] The ledger account that you'd like to link to the virtual account.
      #
      # @param metadata [Hash{Symbol=>String}]
      #
      # @param name [String, nil]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::VirtualAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/virtual_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::VirtualAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::VirtualAccountListParams} for more details.
      #
      # Get a list of virtual accounts.
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, internal_account_id: nil, metadata: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String]
      #
      # @param internal_account_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::VirtualAccount>]
      #
      # @see ModernTreasury::Models::VirtualAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::VirtualAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/virtual_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::VirtualAccount,
          options: options
        )
      end

      # delete virtual_account
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Virtual Acccount ID
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/virtual_accounts/%1$s", id],
          model: ModernTreasury::VirtualAccount,
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
