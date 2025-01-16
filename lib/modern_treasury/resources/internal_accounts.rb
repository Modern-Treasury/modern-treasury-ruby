# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      # @return [ModernTreasury::Resources::InternalAccounts::BalanceReports]
      attr_reader :balance_reports

      # create internal account
      #
      # @param params [ModernTreasury::Models::InternalAccountCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :connection_id The identifier of the financial institution the account belongs to.
      #
      #   @option params [Symbol, ModernTreasury::Models::InternalAccountCreateParams::Currency] :currency Either "USD" or "CAD". Internal accounts created at Increase only supports
      #     "USD".
      #
      #   @option params [String] :name The nickname of the account.
      #
      #   @option params [String] :party_name The legal name of the entity which owns the account.
      #
      #   @option params [String] :counterparty_id The Counterparty associated to this account.
      #
      #   @option params [String] :legal_entity_id The LegalEntity associated to this account.
      #
      #   @option params [String] :parent_account_id The parent internal account of this new account.
      #
      #   @option params [ModernTreasury::Models::InternalAccountCreateParams::PartyAddress] :party_address The address associated with the owner or null.
      #
      #   @option params [Hash{Symbol=>String}] :vendor_attributes A hash of vendor specific attributes that will be used when creating the account
      #     at the vendor specified by the given connection.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::InternalAccountCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/internal_accounts",
          body: parsed,
          model: ModernTreasury::Models::InternalAccount
        }
        @client.request(req, opts)
      end

      # get internal account
      #
      # @param id [String] Unique identifier for the account.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/internal_accounts/%0s", id],
          model: ModernTreasury::Models::InternalAccount
        }
        @client.request(req, opts)
      end

      # update internal account
      #
      # @param id [String] Unique identifier for the account.
      #
      # @param params [ModernTreasury::Models::InternalAccountUpdateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :counterparty_id The Counterparty associated to this account.
      #
      #   @option params [String] :ledger_account_id The Ledger Account associated to this account.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @option params [String] :name The nickname for the internal account.
      #
      #   @option params [String] :parent_account_id The parent internal account for this account.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      #
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::InternalAccountUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/internal_accounts/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::InternalAccount
        }
        @client.request(req, opts)
      end

      # list internal accounts
      #
      # @param params [ModernTreasury::Models::InternalAccountListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :counterparty_id Only return internal accounts associated with this counterparty.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :currency Only return internal accounts with this currency.
      #
      #   @option params [String] :legal_entity_id Only return internal accounts associated with this legal entity.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :payment_direction Only return internal accounts that can originate payments with this direction.
      #
      #   @option params [Symbol, ModernTreasury::Models::InternalAccountListParams::PaymentType] :payment_type Only return internal accounts that can make this type of payment.
      #
      #   @option params [Integer] :per_page
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::InternalAccount>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::InternalAccountListParams.dump(params)
        req = {
          method: :get,
          path: "api/internal_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::InternalAccount
        }
        @client.request(req, opts)
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
        @balance_reports = ModernTreasury::Resources::InternalAccounts::BalanceReports.new(client: client)
      end
    end
  end
end
