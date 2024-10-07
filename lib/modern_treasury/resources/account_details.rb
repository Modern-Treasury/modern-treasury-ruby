# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountDetails
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create an account detail for an external account.
      #
      # @param accounts_type [Symbol, AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_number The account number for the bank account.
      # @option params [Symbol, AccountNumberType, nil] :account_number_type One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def create(accounts_type, account_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/#{accounts_type}/#{account_id}/account_details",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Get a single account detail for a single internal or external account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the account detail.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def retrieve(accounts_type, account_id, id, opts = {})
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/account_details/#{id}",
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Get a list of account details for a single internal or external account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountDetail>]
      def list(accounts_type, account_id, params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/account_details",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Delete a single account detail for an external account.
      #
      # @param accounts_type [Symbol, AccountsType]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the account detail.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(accounts_type, account_id, id, opts = {})
        req = {
          method: :delete,
          path: "/api/#{accounts_type}/#{account_id}/account_details/#{id}",
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
