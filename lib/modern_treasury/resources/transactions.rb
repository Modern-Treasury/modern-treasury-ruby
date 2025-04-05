# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Transactions
      # @return [ModernTreasury::Resources::Transactions::LineItems]
      attr_reader :line_items

      # create transaction
      #
      # @overload create(amount:, as_of_date:, direction:, internal_account_id:, vendor_code:, vendor_code_type:, metadata: nil, posted: nil, type: nil, vendor_description: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param as_of_date [Date, nil]
      # @param direction [String]
      # @param internal_account_id [String]
      # @param vendor_code [String, nil]
      # @param vendor_code_type [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param posted [Boolean]
      # @param type [Symbol, ModernTreasury::Models::TransactionCreateParams::Type, nil]
      # @param vendor_description [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::TransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/transactions",
          body: parsed,
          model: ModernTreasury::Models::Transaction,
          options: options
        )
      end

      # Get details on a single transaction.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/transactions/%1$s", id],
          model: ModernTreasury::Models::Transaction,
          options: params[:request_options]
        )
      end

      # Update a single transaction.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Transaction]
      #
      # @see ModernTreasury::Models::TransactionUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::TransactionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/transactions/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::Transaction,
          options: options
        )
      end

      # Get a list of all transactions.
      #
      # @overload list(after_cursor: nil, as_of_date_end: nil, as_of_date_start: nil, counterparty_id: nil, description: nil, direction: nil, internal_account_id: nil, metadata: nil, payment_type: nil, per_page: nil, posted: nil, transactable_type: nil, vendor_id: nil, virtual_account_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param as_of_date_end [Date]
      # @param as_of_date_start [Date]
      # @param counterparty_id [String]
      # @param description [String]
      # @param direction [String]
      # @param internal_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param payment_type [String]
      # @param per_page [Integer]
      # @param posted [Boolean]
      # @param transactable_type [String]
      # @param vendor_id [String]
      # @param virtual_account_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Transaction>]
      #
      # @see ModernTreasury::Models::TransactionListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/transactions",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::Transaction,
          options: options
        )
      end

      # delete transaction
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
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
