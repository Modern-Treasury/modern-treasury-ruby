# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExternalAccounts
      # create external account
      #
      # @param params [ModernTreasury::Models::ExternalAccountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :counterparty_id
      #
      #   @option params [Array<ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail>] :account_details
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountType] :account_type Can be `checking`, `savings` or `other`.
      #
      #   @option params [Array<ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail>] :contact_details
      #
      #   @option params [ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount] :ledger_account Specifies a ledger account object that will be created with the external
      #     account. The resulting ledger account is linked to the external account for
      #     auto-ledgering Payment objects. See
      #     https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      #     for more details.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String, nil] :name A nickname for the external account. This is only for internal usage and won't
      #     affect any payments
      #
      #   @option params [ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress] :party_address Required if receiving wire payments.
      #
      #   @option params [String] :party_identifier
      #
      #   @option params [String] :party_name If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType, nil] :party_type Either `individual` or `business`.
      #
      #   @option params [String] :plaid_processor_token If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
      #     you can pass the processor token in this field.
      #
      #   @option params [Array<ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail>] :routing_details
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ExternalAccount]
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
      # @param id [String] external account id
      #
      # @param params [ModernTreasury::Models::ExternalAccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/external_accounts/%0s", id],
          model: ModernTreasury::Models::ExternalAccount,
          options: params[:request_options]
        )
      end

      # update external account
      #
      # @param id [String] external account id
      #
      # @param params [ModernTreasury::Models::ExternalAccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountType] :account_type Can be `checking`, `savings` or `other`.
      #
      #   @option params [String, nil] :counterparty_id
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @option params [String, nil] :name A nickname for the external account. This is only for internal usage and won't
      #     affect any payments
      #
      #   @option params [ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress] :party_address
      #
      #   @option params [String] :party_name If this value isn't provided, it will be inherited from the counterparty's name.
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountUpdateParams::PartyType, nil] :party_type Either `individual` or `business`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/external_accounts/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # list external accounts
      #
      # @param params [ModernTreasury::Models::ExternalAccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [String] :party_name Searches the ExternalAccount's party_name AND the Counterparty's party_name
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ExternalAccount>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/external_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # delete external account
      #
      # @param id [String] external account id
      #
      # @param params [ModernTreasury::Models::ExternalAccountDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/external_accounts/%0s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # complete verification of external account
      #
      # @param id [String] external account id
      #
      # @param params [ModernTreasury::Models::ExternalAccountCompleteVerificationParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Integer>] :amounts
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ExternalAccount]
      def complete_verification(id, params = {})
        parsed, options = ModernTreasury::Models::ExternalAccountCompleteVerificationParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/external_accounts/%0s/complete_verification", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccount,
          options: options
        )
      end

      # verify external account
      #
      # @param id [String] external account id
      #
      # @param params [ModernTreasury::Models::ExternalAccountVerifyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :originating_account_id The ID of the internal account where the micro-deposits originate from. Both
      #     credit and debit capabilities must be enabled.
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType] :payment_type Can be `ach`, `eft`, or `rtp`.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :currency Defaults to the currency of the originating account.
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType] :fallback_type A payment type to fallback to if the original type is not valid for the
      #     receiving account. Currently, this only supports falling back from RTP to ACH
      #     (payment_type=rtp and fallback_type=ach)
      #
      #   @option params [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority] :priority Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      #     transfer. This will apply to both `payment_type` and `fallback_type`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ExternalAccount, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt]
      def verify(id, params)
        parsed, options = ModernTreasury::Models::ExternalAccountVerifyParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/external_accounts/%0s/verify", id],
          body: parsed,
          model: ModernTreasury::Models::ExternalAccountVerifyResponse,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
