# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExternalAccounts
      # create external account
      #
      # @overload create(counterparty_id:, account_details: nil, account_type: nil, contact_details: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil, request_options: {})
      #
      # @param counterparty_id [String, nil]
      # @param account_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>]
      # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
      # @param contact_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>]
      # @param ledger_account [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String, nil]
      # @param party_address [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress]
      # @param party_identifier [String]
      # @param party_name [String]
      # @param party_type [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType, nil]
      # @param plaid_processor_token [String]
      # @param routing_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::ExternalAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/external_accounts",
          body: parsed,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # show external account
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/external_accounts/%1$s", id],
          model: ModernTreasury::Models::ExternalAccount,
          options: params[:request_options]
        )
      end

      # update external account
      #
      # @overload update(id, account_type: nil, counterparty_id: nil, metadata: nil, name: nil, party_address: nil, party_name: nil, party_type: nil, request_options: {})
      #
      # @param id [String]
      # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
      # @param counterparty_id [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String, nil]
      # @param party_address [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress]
      # @param party_name [String]
      # @param party_type [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/external_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # list external accounts
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, metadata: nil, party_name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param party_name [String]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ExternalAccount>]
      #
      # @see ModernTreasury::Models::ExternalAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/external_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # delete external account
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::ExternalAccountDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/external_accounts/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # complete verification of external account
      #
      # @overload complete_verification(id, amounts: nil, request_options: {})
      #
      # @param id [String]
      # @param amounts [Array<Integer>]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountCompleteVerificationParams
      def complete_verification(id, params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountCompleteVerificationParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/external_accounts/%1$s/complete_verification", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # verify external account
      #
      # @overload verify(id, originating_account_id:, payment_type:, currency: nil, fallback_type: nil, priority: nil, request_options: {})
      #
      # @param id [String]
      # @param originating_account_id [String]
      # @param payment_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType]
      # @param currency [Symbol, ModernTreasury::Models::Currency]
      # @param fallback_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType]
      # @param priority [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt]
      #
      # @see ModernTreasury::Models::ExternalAccountVerifyParams
      def verify(id, params)
        parsed, options = ModernTreasury::Models::ExternalAccountVerifyParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/external_accounts/%1$s/verify", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccountVerifyResponse,
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
