# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExternalAccounts
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExternalAccountCreateParams} for more details.
      #
      # create external account
      #
      # @overload create(counterparty_id:, body_external_id: nil, account_details: nil, account_type: nil, contact_details: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil, request_options: {})
      #
      # @param counterparty_id [String, nil] Body param:
      #
      # @param body_external_id [String, nil] Body param: An optional user-defined 180 character unique identifier.
      #
      # @param account_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>] Body param:
      #
      # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Body param: Can be `checking`, `savings` or `other`.
      #
      # @param contact_details [Array<ModernTreasury::Models::ContactDetailCreateRequest>] Body param:
      #
      # @param ledger_account [ModernTreasury::Models::LedgerAccountCreateRequest] Body param: Specifies a ledger account object that will be created with the exte
      #
      # @param metadata [Hash{Symbol=>String}] Body param: Additional data represented as key-value pairs. Both the key and val
      #
      # @param name [String, nil] Body param: A nickname for the external account. This is only for internal usage
      #
      # @param party_address [ModernTreasury::Models::AddressRequest] Body param: Required if receiving wire payments.
      #
      # @param party_identifier [String] Body param:
      #
      # @param party_name [String] Body param: If this value isn't provided, it will be inherited from the counterp
      #
      # @param party_type [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType, nil] Body param: Either `individual` or `business`.
      #
      # @param plaid_processor_token [String] Body param: If you've enabled the Modern Treasury + Plaid integration in your Pl
      #
      # @param routing_details [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>] Body param:
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::ExternalAccountCreateParams.dump_request(params)
        query_params = [:query_external_id]
        @client.request(
          method: :post,
          path: "api/external_accounts",
          query: parsed.slice(*query_params).transform_keys(query_external_id: "external_id"),
          body: parsed.except(*query_params),
          model: ModernTreasury::ExternalAccount,
          options: options
        )
      end

      # show external account
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] external account id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/external_accounts/%1$s", id],
          model: ModernTreasury::ExternalAccount,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExternalAccountUpdateParams} for more details.
      #
      # update external account
      #
      # @overload update(id, account_type: nil, counterparty_id: nil, metadata: nil, name: nil, party_address: nil, party_name: nil, party_type: nil, request_options: {})
      #
      # @param id [String] external account id
      #
      # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
      #
      # @param counterparty_id [String, nil]
      #
      # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      # @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
      #
      # @param party_address [ModernTreasury::Models::AddressRequest]
      #
      # @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
      #
      # @param party_type [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil] Either `individual` or `business`.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::ExternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/external_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::ExternalAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExternalAccountListParams} for more details.
      #
      # list external accounts
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, external_id: nil, metadata: nil, party_name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String]
      #
      # @param external_id [String] An optional user-defined 180 character unique identifier.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param party_name [String] Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ExternalAccount>]
      #
      # @see ModernTreasury::Models::ExternalAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::ExternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/external_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::ExternalAccount,
          options: options
        )
      end

      # delete external account
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] external account id
      #
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
      # @param id [String] external account id
      #
      # @param amounts [Array<Integer>]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      #
      # @see ModernTreasury::Models::ExternalAccountCompleteVerificationParams
      def complete_verification(id, params = {})
        parsed, options = ModernTreasury::ExternalAccountCompleteVerificationParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/external_accounts/%1$s/complete_verification", id],
          body: parsed,
          model: ModernTreasury::ExternalAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExternalAccountVerifyParams} for more details.
      #
      # verify external account
      #
      # @overload verify(id, originating_account_id:, payment_type:, currency: nil, fallback_type: nil, priority: nil, request_options: {})
      #
      # @param id [String] external account id
      #
      # @param originating_account_id [String] The ID of the internal account where the micro-deposits originate from. Both cre
      #
      # @param payment_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType] Can be `ach`, `eft`, or `rtp`.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Defaults to the currency of the originating account.
      #
      # @param fallback_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType] A payment type to fallback to if the original type is not valid for the receivin
      #
      # @param priority [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority] Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH tr
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExternalAccount, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt]
      #
      # @see ModernTreasury::Models::ExternalAccountVerifyParams
      def verify(id, params)
        parsed, options = ModernTreasury::ExternalAccountVerifyParams.dump_request(params)
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
