# frozen_string_literal: true

module ModernTreasury
  module Resources
    class VirtualAccounts
      # create virtual_account
      #
      # @overload create(internal_account_id:, name:, account_details: nil, counterparty_id: nil, credit_ledger_account_id: nil, debit_ledger_account_id: nil, description: nil, ledger_account: nil, metadata: nil, routing_details: nil, request_options: {})
      #
      # @param internal_account_id [String]
      # @param name [String]
      # @param account_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      # @param counterparty_id [String]
      # @param credit_ledger_account_id [String]
      # @param debit_ledger_account_id [String]
      # @param description [String]
      # @param ledger_account [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount]
      # @param metadata [Hash{Symbol=>String}]
      # @param routing_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/virtual_accounts/%1$s", id],
          model: ModernTreasury::Models::VirtualAccount,
          options: params[:request_options]
        )
      end

      # update virtual_account
      #
      # @overload update(id, counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String]
      # @param counterparty_id [String]
      # @param ledger_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::VirtualAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/virtual_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::VirtualAccount,
          options: options
        )
      end

      # Get a list of virtual accounts.
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, internal_account_id: nil, metadata: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param internal_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::VirtualAccount>]
      #
      # @see ModernTreasury::Models::VirtualAccountListParams
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
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccount]
      #
      # @see ModernTreasury::Models::VirtualAccountDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/virtual_accounts/%1$s", id],
          model: ModernTreasury::Models::VirtualAccount,
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
