# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      # @return [ModernTreasury::Resources::Transactions::LineItems]
      attr_reader :line_items

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::TransactionCreateParams} for more details.
      #
      # create transaction
      #
      # @overload create(amount:, as_of_date:, direction:, internal_account_id:, vendor_code:, vendor_code_type:, metadata: nil, posted: nil, type: nil, vendor_description: nil, request_options: {})
      #
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      # @param as_of_date [Date, nil] The date on which the transaction occurred.
      #
      # @param direction [String] Either `credit` or `debit`.
      #
      # @param internal_account_id [String] The ID of the relevant Internal Account.
      #
      # @param vendor_code [String, nil] When applicable, the bank-given code that determines the transaction's category.
      #
      # @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param posted [Boolean] This field will be `true` if the transaction has posted to the account.
      #
      # @param type [Symbol, ModernTreasury::Models::TransactionCreateParams::Type, nil] The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `r
      #
      # @param vendor_description [String, nil] The transaction detail text that often appears in on your bank statement and in
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionCreateParams
      def create(params)
        parsed, options = ModernTreasury::TransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/transactions",
          body: parsed,
          model: ModernTreasury::Transaction,
          options: options
        )
      end

      # Get details on a single transaction.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Transaction ID
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/transactions/%1$s", id],
          model: ModernTreasury::Transaction,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::TransactionUpdateParams} for more details.
      #
      # Update a single transaction.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String] Transaction ID
      #
      # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::TransactionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/transactions/%1$s", id],
          body: parsed,
          model: ModernTreasury::Transaction,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::TransactionListParams} for more details.
      #
      # Get a list of all transactions.
      #
      # @overload list(after_cursor: nil, as_of_date_end: nil, as_of_date_start: nil, counterparty_id: nil, description: nil, direction: nil, internal_account_id: nil, metadata: nil, payment_type: nil, per_page: nil, posted: nil, transactable_type: nil, vendor_id: nil, virtual_account_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param as_of_date_end [Date] Filters transactions with an `as_of_date` starting on or before the specified da
      #
      # @param as_of_date_start [Date] Filters transactions with an `as_of_date` starting on or after the specified dat
      #
      # @param counterparty_id [String]
      #
      # @param description [String] Filters for transactions including the queried string in the description.
      #
      # @param direction [String]
      #
      # @param internal_account_id [String] Specify `internal_account_id` if you wish to see transactions to/from a specific
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param payment_type [String]
      #
      # @param per_page [Integer]
      #
      # @param posted [Boolean] Either `true` or `false`.
      #
      # @param transactable_type [String]
      #
      # @param vendor_id [String] Filters for transactions including the queried vendor id (an identifier given to
      #
      # @param virtual_account_id [String]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Transaction>]
      #
      # @see ModernTreasury::Models::TransactionListParams
      def list(params = {})
        parsed, options = ModernTreasury::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/transactions",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Transaction,
          options: options
        )
      end

      # delete transaction
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Transaction ID
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::TransactionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/transactions/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @line_items = ModernTreasury::Resources::Transactions::LineItems.new(client: client)
      end
    end
  end
end
