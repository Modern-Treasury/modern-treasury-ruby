# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      # @return [ModernTreasury::Resources::InternalAccounts::BalanceReports]
      attr_reader :balance_reports

      def initialize(client:)
        @client = client
        @balance_reports = ModernTreasury::Resources::InternalAccounts::BalanceReports.new(client: client)
      end

      # create internal account
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :connection_id The identifier of the financial institution the account belongs to.
      # @option params [Symbol, Currency] :currency Either "USD" or "CAD". Internal accounts created at Increase only supports
      #   "USD".
      # @option params [String] :name The nickname of the account.
      # @option params [String] :party_name The legal name of the entity which owns the account.
      # @option params [String, nil] :counterparty_id The Counterparty associated to this account.
      # @option params [String, nil] :legal_entity_id The LegalEntity associated to this account.
      # @option params [String, nil] :parent_account_id The parent internal account of this new account.
      # @option params [PartyAddress, nil] :party_address The address associated with the owner or null.
      # @option params [Hash, nil] :vendor_attributes A hash of vendor specific attributes that will be used when creating the account
      #   at the vendor specified by the given connection.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/internal_accounts"
        req[:body] = params
        req[:model] = ModernTreasury::Models::InternalAccount
        @client.request(req, opts)
      end

      # get internal account
      #
      # @param id [String] Unique identifier for the account.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/internal_accounts/#{id}"
        req[:model] = ModernTreasury::Models::InternalAccount
        @client.request(req, opts)
      end

      # update internal account
      #
      # @param id [String] Unique identifier for the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :counterparty_id The Counterparty associated to this account.
      # @option params [String, nil] :ledger_account_id The Ledger Account associated to this account.
      # @option params [Hash, nil] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      # @option params [String, nil] :name The nickname for the internal account.
      # @option params [String, nil] :parent_account_id The parent internal account for this account.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::InternalAccount]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/internal_accounts/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::InternalAccount
        @client.request(req, opts)
      end

      # list internal accounts
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :counterparty_id Only return internal accounts associated with this counterparty.
      # @option params [Symbol, ModernTreasury::Models::Currency, nil] :currency Only return internal accounts with this currency.
      # @option params [String, nil] :legal_entity_id Only return internal accounts associated with this legal entity.
      # @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Symbol, ModernTreasury::Models::TransactionDirection, nil] :payment_direction Only return internal accounts that can originate payments with this direction.
      # @option params [Symbol, PaymentType, nil] :payment_type Only return internal accounts that can make this type of payment.
      # @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::InternalAccount>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/internal_accounts"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::InternalAccount
        @client.request(req, opts)
      end
    end
  end
end
