# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountDetails
      # Create an account detail for an external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [ModernTreasury::Models::AccountDetailCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType] :accounts_type Path param:
      #
      #   @option params [String] :account_number Body param: The account number for the bank account.
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType] :account_number_type Body param: One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if
      #     the bank account number is in a generic format.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      def create(account_id, params)
        parsed, options = ModernTreasury::Models::AccountDetailCreateParams.dump_request(params)
        accounts_type = parsed.delete(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :post,
          path: ["api/%0s/%1s/account_details", accounts_type, account_id],
          body: parsed,
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Get a single account detail for a single internal or external account.
      #
      # @param id [String] The ID of the account detail.
      #
      # @param params [ModernTreasury::Models::AccountDetailRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      def retrieve(id, params)
        parsed, options = ModernTreasury::Models::AccountDetailRetrieveParams.dump_request(params)
        accounts_type = parsed.delete(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        account_id = parsed.delete(:account_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/account_details/%2s", accounts_type, account_id, id],
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Get a list of account details for a single internal or external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [ModernTreasury::Models::AccountDetailListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type Path param:
      #
      #   @option params [String, nil] :after_cursor Query param:
      #
      #   @option params [Integer] :per_page Query param:
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::AccountDetail>]
      #
      def list(account_id, params)
        parsed, options = ModernTreasury::Models::AccountDetailListParams.dump_request(params)
        accounts_type = parsed.delete(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/account_details", accounts_type, account_id],
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Delete a single account detail for an external account.
      #
      # @param id [String] The ID of the account detail.
      #
      # @param params [ModernTreasury::Models::AccountDetailDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      def delete(id, params)
        parsed, options = ModernTreasury::Models::AccountDetailDeleteParams.dump_request(params)
        accounts_type = parsed.delete(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        account_id = parsed.delete(:account_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :delete,
          path: ["api/%0s/%1s/account_details/%2s", accounts_type, account_id, id],
          model: NilClass,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
