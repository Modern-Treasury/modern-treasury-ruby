# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      # @return [ModernTreasury::Resources::InternalAccounts::BalanceReports]
      attr_reader :balance_reports

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InternalAccountCreateParams} for more details.
      #
      # create internal account
      #
      # @overload create(connection_id:, currency:, name:, party_name:, account_type: nil, counterparty_id: nil, legal_entity_id: nil, parent_account_id: nil, party_address: nil, vendor_attributes: nil, request_options: {})
      #
      # @param connection_id [String] The identifier of the financial institution the account belongs to.
      #
      # @param currency [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency] Either "USD" or "CAD". Internal accounts created at Increase only supports "USD"
      #
      # @param name [String] The nickname of the account.
      #
      # @param party_name [String] The legal name of the entity which owns the account.
      #
      # @param account_type [Symbol, ModernTreasury::Models::InternalAccountCreateParams::AccountType] The account type, used to provision the appropriate account at the financial ins
      #
      # @param counterparty_id [String] The Counterparty associated to this account.
      #
      # @param legal_entity_id [String] The LegalEntity associated to this account.
      #
      # @param parent_account_id [String] The parent internal account of this new account.
      #
      # @param party_address [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress] The address associated with the owner or null.
      #
      # @param vendor_attributes [Hash{Symbol=>String}] A hash of vendor specific attributes that will be used when creating the account
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountCreateParams
      def create(params)
        parsed, options = ModernTreasury::InternalAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/internal_accounts",
          body: parsed,
          model: ModernTreasury::InternalAccount,
          options: options
        )
      end

      # get internal account
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Unique identifier for the account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/internal_accounts/%1$s", id],
          model: ModernTreasury::InternalAccount,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InternalAccountUpdateParams} for more details.
      #
      # update internal account
      #
      # @overload update(id, counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, parent_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the account.
      #
      # @param counterparty_id [String] The Counterparty associated to this account.
      #
      # @param ledger_account_id [String] The Ledger Account associated to this account.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      # @param name [String] The nickname for the internal account.
      #
      # @param parent_account_id [String] The parent internal account for this account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      # @see ModernTreasury::Models::InternalAccountUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::InternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/internal_accounts/%1$s", id],
          body: parsed,
          model: ModernTreasury::InternalAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::InternalAccountListParams} for more details.
      #
      # list internal accounts
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, currency: nil, legal_entity_id: nil, metadata: nil, payment_direction: nil, payment_type: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String] Only return internal accounts associated with this counterparty.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency] Only return internal accounts with this currency.
      #
      # @param legal_entity_id [String] Only return internal accounts associated with this legal entity.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param payment_direction [Symbol, ModernTreasury::Models::TransactionDirection] Only return internal accounts that can originate payments with this direction.
      #
      # @param payment_type [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType] Only return internal accounts that can make this type of payment.
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::InternalAccount>]
      #
      # @see ModernTreasury::Models::InternalAccountListParams
      def list(params = {})
        parsed, options = ModernTreasury::InternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/internal_accounts",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::InternalAccount,
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
