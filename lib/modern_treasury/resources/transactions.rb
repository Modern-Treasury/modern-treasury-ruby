# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      # @return [ModernTreasury::Resources::Transactions::LineItems]
      attr_reader :line_items

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @line_items = ModernTreasury::Resources::Transactions::LineItems.new(client: client)
      end

      # create transaction
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::TransactionCreateParams] Attributes to send in this request.
      #
      #   @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
      #
      #   @option params [Date] :as_of_date The date on which the transaction occurred.
      #
      #   @option params [String] :direction Either `credit` or `debit`.
      #
      #   @option params [String] :internal_account_id The ID of the relevant Internal Account.
      #
      #   @option params [String] :vendor_code When applicable, the bank-given code that determines the transaction's category.
      #     For most banks this is the BAI2/BTRS transaction code.
      #
      #   @option params [String] :vendor_code_type The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #     `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #     `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #     `swift`, `us_bank`, or others.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Boolean, nil] :posted This field will be `true` if the transaction has posted to the account.
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionCreateParams::Type, nil] :type The type of the transaction. Examples could be
      #     `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      #   @option params [String, nil] :vendor_description The transaction detail text that often appears in on your bank statement and in
      #     your banking portal.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Transaction]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::TransactionCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/transactions",
          body: parsed,
          model: ModernTreasury::Models::Transaction
        }
        @client.request(req, opts)
      end

      # Get details on a single transaction.
      #
      # @param id [String] Transaction ID
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Transaction]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/transactions/%0s", id],
          model: ModernTreasury::Models::Transaction
        }
        @client.request(req, opts)
      end

      # Update a single transaction.
      #
      # @param id [String] Transaction ID
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::TransactionUpdateParams] Attributes to send in this request.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Transaction]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::TransactionUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/transactions/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::Transaction
        }
        @client.request(req, opts)
      end

      # Get a list of all transactions.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::TransactionListParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Date, nil] :as_of_date_end Filters transactions with an `as_of_date` starting on or before the specified
      #     date (YYYY-MM-DD).
      #
      #   @option params [Date, nil] :as_of_date_start Filters transactions with an `as_of_date` starting on or after the specified
      #     date (YYYY-MM-DD).
      #
      #   @option params [String, nil] :counterparty_id
      #
      #   @option params [String, nil] :description Filters for transactions including the queried string in the description.
      #
      #   @option params [String, nil] :direction
      #
      #   @option params [String, nil] :internal_account_id Specify `internal_account_id` if you wish to see transactions to/from a specific
      #     account.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [String, nil] :payment_type
      #
      #   @option params [Integer, nil] :per_page
      #
      #   @option params [Boolean, nil] :posted Either `true` or `false`.
      #
      #   @option params [String, nil] :transactable_type
      #
      #   @option params [String, nil] :vendor_id Filters for transactions including the queried vendor id (an identifier given to
      #     transactions by the bank).
      #
      #   @option params [String, nil] :virtual_account_id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Transaction>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::TransactionListParams.dump(params)
        req = {
          method: :get,
          path: "api/transactions",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Transaction
        }
        @client.request(req, opts)
      end

      # delete transaction
      #
      # @param id [String] Transaction ID
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: ["api/transactions/%0s", id],
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
