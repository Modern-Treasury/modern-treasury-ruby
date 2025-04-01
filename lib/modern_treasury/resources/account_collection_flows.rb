# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      # create account_collection_flow
      #
      # @param params [ModernTreasury::Models::AccountCollectionFlowCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :counterparty_id Required.
      #
      #   @option params [Array<String>] :payment_types
      #
      #   @option params [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>] :receiving_countries
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      #
      # @see ModernTreasury::Models::AccountCollectionFlowCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::AccountCollectionFlowCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/account_collection_flows",
          body: parsed,
          model: ModernTreasury::Models::AccountCollectionFlow,
          options: options
        )
      end

      # get account_collection_flow
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::AccountCollectionFlowRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      #
      # @see ModernTreasury::Models::AccountCollectionFlowRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/account_collection_flows/%1$s", id],
          model: ModernTreasury::Models::AccountCollectionFlow,
          options: params[:request_options]
        )
      end

      # update account_collection_flow
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::AccountCollectionFlowUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status] :status Required. The updated status of the account collection flow. Can only be used to
      #     mark a flow as `cancelled`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      #
      # @see ModernTreasury::Models::AccountCollectionFlowUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::Models::AccountCollectionFlowUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/account_collection_flows/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::AccountCollectionFlow,
          options: options
        )
      end

      # list account_collection_flows
      #
      # @param params [ModernTreasury::Models::AccountCollectionFlowListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :client_token
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [String] :external_account_id
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :status
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountCollectionFlow>]
      #
      # @see ModernTreasury::Models::AccountCollectionFlowListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::AccountCollectionFlowListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/account_collection_flows",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::AccountCollectionFlow,
          options: options
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
