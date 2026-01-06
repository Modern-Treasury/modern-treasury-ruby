# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountDetails
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::AccountDetailCreateParams} for more details.
      #
      # Create an account detail for an external account.
      #
      # @overload create(account_id, accounts_type:, account_number:, account_number_type: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType] Path param:
      #
      # @param account_number [String] Body param: The account number for the bank account.
      #
      # @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreate::AccountNumberType] Body param: One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      # @see ModernTreasury::Models::AccountDetailCreateParams
      def create(account_id, params)
        parsed, options = ModernTreasury::AccountDetailCreateParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/%2$s/account_details", accounts_type, account_id],
          body: parsed,
          model: ModernTreasury::AccountDetail,
          options: options
        )
      end

      # Get a single account detail for a single internal or external account.
      #
      # @overload retrieve(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String] The ID of the account detail.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      # @see ModernTreasury::Models::AccountDetailRetrieveParams
      def retrieve(id, params)
        parsed, options = ModernTreasury::AccountDetailRetrieveParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        account_id =
          parsed.delete(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/account_details/%3$s", accounts_type, account_id, id],
          model: ModernTreasury::AccountDetail,
          options: options
        )
      end

      # Get a list of account details for a single internal or external account.
      #
      # @overload list(account_id, accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType] Path param:
      #
      # @param after_cursor [String, nil] Query param:
      #
      # @param per_page [Integer] Query param:
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::AccountDetail>]
      #
      # @see ModernTreasury::Models::AccountDetailListParams
      def list(account_id, params)
        parsed, options = ModernTreasury::AccountDetailListParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/account_details", accounts_type, account_id],
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::AccountDetail,
          options: options
        )
      end

      # Delete a single account detail for an external account.
      #
      # @overload delete(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String] The ID of the account detail.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::AccountDetailDeleteParams
      def delete(id, params)
        parsed, options = ModernTreasury::AccountDetailDeleteParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        account_id =
          parsed.delete(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/%2$s/account_details/%3$s", accounts_type, account_id, id],
          model: NilClass,
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
