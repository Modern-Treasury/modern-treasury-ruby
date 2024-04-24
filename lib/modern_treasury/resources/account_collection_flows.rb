# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      def initialize(client:)
        @client = client
      end

      # create account_collection_flow
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :counterparty_id Required.
      # @option params [Array<String>] :payment_types
      # @option params [Array<Symbol>] :receiving_countries
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/account_collection_flows"
        req[:body] = params
        req[:model] = ModernTreasury::Models::AccountCollectionFlow
        @client.request(req, opts)
      end

      # get account_collection_flow
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/account_collection_flows/#{id}"
        req[:model] = ModernTreasury::Models::AccountCollectionFlow
        @client.request(req, opts)
      end

      # update account_collection_flow
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :status Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountCollectionFlow]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/account_collection_flows/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::AccountCollectionFlow
        @client.request(req, opts)
      end

      # list account_collection_flows
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :client_token
      # @option params [String] :counterparty_id
      # @option params [String] :external_account_id
      # @option params [Integer] :per_page
      # @option params [String] :status
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountCollectionFlow>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/account_collection_flows"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::AccountCollectionFlow
        @client.request(req, opts)
      end
    end
  end
end
