# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      # create account_collection_flow
      #
      # @overload create(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {})
      #
      # @param counterparty_id [String]
      # @param payment_types [Array<String>]
      # @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload update(id, status:, request_options: {})
      #
      # @param id [String]
      # @param status [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(after_cursor: nil, client_token: nil, counterparty_id: nil, external_account_id: nil, per_page: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param client_token [String]
      # @param counterparty_id [String]
      # @param external_account_id [String]
      # @param per_page [Integer]
      # @param status [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::AccountCollectionFlow>]
      #
      # @see ModernTreasury::Models::AccountCollectionFlowListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::AccountCollectionFlowListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/account_collection_flows",
          query: parsed,
          page: ModernTreasury::Internal::Page,
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
