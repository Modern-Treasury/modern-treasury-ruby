# frozen_string_literal: true

module ModernTreasury
  module Resources
    class AccountDetails
      # Create an account detail for an external account.
      #
      # @overload create(account_id, accounts_type:, account_number:, account_number_type: nil, request_options: {})
      #
      # @param account_id [String]
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      # @param account_number [String]
      # @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      # @see ModernTreasury::Models::AccountDetailCreateParams
      def create(account_id, params)
        parsed, options = ModernTreasury::Models::AccountDetailCreateParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/%2$s/account_details", accounts_type, account_id],
          body: parsed,
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Get a single account detail for a single internal or external account.
      #
      # @overload retrieve(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String]
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      # @param account_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AccountDetail]
      #
      # @see ModernTreasury::Models::AccountDetailRetrieveParams
      def retrieve(id, params)
        parsed, options = ModernTreasury::Models::AccountDetailRetrieveParams.dump_request(params)
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
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Get a list of account details for a single internal or external account.
      #
      # @overload list(account_id, accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      #
      # @param account_id [String]
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      # @param after_cursor [String, nil]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::AccountDetail>]
      #
      # @see ModernTreasury::Models::AccountDetailListParams
      def list(account_id, params)
        parsed, options = ModernTreasury::Models::AccountDetailListParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/account_details", accounts_type, account_id],
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::AccountDetail,
          options: options
        )
      end

      # Delete a single account detail for an external account.
      #
      # @overload delete(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String]
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      # @param account_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::AccountDetailDeleteParams
      def delete(id, params)
        parsed, options = ModernTreasury::Models::AccountDetailDeleteParams.dump_request(params)
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
