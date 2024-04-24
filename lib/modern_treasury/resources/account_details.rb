# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountDetails
      def initialize(client:)
        @client = client
      end

      # Create an account detail for an external account.
      #
      # @param accounts_type [Symbol]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_number The account number for the bank account.
      # @option params [Symbol] :account_number_type One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def create(accounts_type, account_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/#{accounts_type}/#{account_id}/account_details"
        req[:body] = params
        req[:model] = ModernTreasury::Models::AccountDetail
        @client.request(req, opts)
      end

      # Get a single account detail for a single internal or external account.
      #
      # @param accounts_type [Symbol]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the account detail.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def retrieve(accounts_type, account_id, id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{accounts_type}/#{account_id}/account_details/#{id}"
        req[:model] = ModernTreasury::Models::AccountDetail
        @client.request(req, opts)
      end

      # Get a list of account details for a single internal or external account.
      #
      # @param accounts_type [Symbol]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountDetail>]
      def list(accounts_type, account_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{accounts_type}/#{account_id}/account_details"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::AccountDetail
        @client.request(req, opts)
      end

      # Delete a single account detail for an external account.
      #
      # @param accounts_type [Symbol]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the account detail.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [NilClass]
      def delete(accounts_type, account_id, id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/#{accounts_type}/#{account_id}/account_details/#{id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end
    end
  end
end
