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
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType] :accounts_type Path param:
      #   @option params [String] :account_number Body param: The account number for the bank account.
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType, nil] :account_number_type Body param: One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if
      #     the bank account number is in a generic format.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def create(account_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountDetailCreateParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        req = {
          method: :post,
          path: "/api/#{accounts_type}/#{account_id}/account_details",
          body: parsed.except(:accounts_type),
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Get a single account detail for a single internal or external account.
      #
      # @param id [String] The ID of the account detail.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AccountDetail]
      def retrieve(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountDetailRetrieveParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument :account_id")
        end
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/account_details/#{id}",
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Get a list of account details for a single internal or external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type Path param:
      #   @option params [String, nil] :after_cursor Query param:
      #   @option params [Integer, nil] :per_page Query param:
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountDetail>]
      def list(account_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountDetailListParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/account_details",
          query: parsed.except(:accounts_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::AccountDetail
        }
        @client.request(req, opts)
      end

      # Delete a single account detail for an external account.
      #
      # @param id [String] The ID of the account detail.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType] :accounts_type
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::AccountDetailDeleteParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument :account_id")
        end
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
