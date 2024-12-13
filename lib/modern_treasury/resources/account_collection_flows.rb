# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create account_collection_flow
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::AccountCollectionFlowCreateParams] Attributes to send in this request.
      #   @option params [String] :counterparty_id Required.
      #   @option params [Array<String>] :payment_types
      #   @option params [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>, nil] :receiving_countries
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountCollectionFlowCreateParams.dump(params)
        req = {
          method: :post,
          path: "/api/account_collection_flows",
          body: parsed,
          model: ModernTreasury::Models::AccountCollectionFlow
        }
        @client.request(req, opts)
      end

      # get account_collection_flow
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/account_collection_flows/#{id}",
          model: ModernTreasury::Models::AccountCollectionFlow
        }
        @client.request(req, opts)
      end

      # update account_collection_flow
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::AccountCollectionFlowUpdateParams] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status] :status Required. The updated status of the account collection flow. Can only be used to
      #     mark a flow as `cancelled`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountCollectionFlowUpdateParams.dump(params)
        req = {
          method: :patch,
          path: "/api/account_collection_flows/#{id}",
          body: parsed,
          model: ModernTreasury::Models::AccountCollectionFlow
        }
        @client.request(req, opts)
      end

      # list account_collection_flows
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::AccountCollectionFlowListParams] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :client_token
      #   @option params [String, nil] :counterparty_id
      #   @option params [String, nil] :external_account_id
      #   @option params [Integer, nil] :per_page
      #   @option params [String, nil] :status
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountCollectionFlow>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountCollectionFlowListParams.dump(params)
        req = {
          method: :get,
          path: "/api/account_collection_flows",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::AccountCollectionFlow
        }
        @client.request(req, opts)
      end
    end
  end
end
