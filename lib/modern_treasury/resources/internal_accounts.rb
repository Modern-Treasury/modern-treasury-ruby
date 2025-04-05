# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      # @return [ModernTreasury::Resources::InternalAccounts::BalanceReports]
      attr_reader :balance_reports

      # create internal account
      #
      # @overload create(connection_id:, currency:, name:, party_name:, counterparty_id: nil, legal_entity_id: nil, parent_account_id: nil, party_address: nil, vendor_attributes: nil, request_options: {})
      #
      # @param connection_id [String]
      # @param currency [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency]
      # @param name [String]
      # @param party_name [String]
      # @param counterparty_id [String]
      # @param legal_entity_id [String]
      # @param parent_account_id [String]
      # @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress]
      # @param vendor_attributes [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::InternalAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/internal_accounts",
          body: parsed,
          model: ModernTreasury::Models::InternalAccount,
          options: options
        )
      end

      # get internal account
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/internal_accounts/%1$s", id],
          model: ModernTreasury::Models::InternalAccount,
          options: params[:request_options]
        )
      end

      # update internal account
      #
      # @overload update(id, counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, parent_account_id: nil, request_options: {})
      #
      # @param id [String]
      # @param counterparty_id [String]
      # @param ledger_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param parent_account_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::InternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/internal_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::InternalAccount,
          options: options
        )
      end

      # list internal accounts
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, currency: nil, legal_entity_id: nil, metadata: nil, payment_direction: nil, payment_type: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param legal_entity_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param payment_direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param payment_type [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::InternalAccount>]
      #
      # @see ModernTreasury::Models::InternalAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::InternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/internal_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::InternalAccount,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @balance_reports = ModernTreasury::Resources::InternalAccounts::BalanceReports.new(client: client)
      end
    end
  end
end
