# frozen_string_literal: true

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      # Get an existing Incoming Payment Detail.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/incoming_payment_details/%1$s", id],
          model: ModernTreasury::IncomingPaymentDetail,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::IncomingPaymentDetailUpdateParams} for more details.
      #
      # Update an existing Incoming Payment Detail.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::IncomingPaymentDetailUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/incoming_payment_details/%1$s", id],
          body: parsed,
          model: ModernTreasury::IncomingPaymentDetail,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::IncomingPaymentDetailListParams} for more details.
      #
      # Get a list of Incoming Payment Details.
      #
      # @overload list(after_cursor: nil, as_of_date_end: nil, as_of_date_start: nil, direction: nil, metadata: nil, per_page: nil, status: nil, type: nil, virtual_account_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param as_of_date_end [Date] Filters incoming payment details with an as_of_date starting on or before the sp
      #
      # @param as_of_date_start [Date] Filters incoming payment details with an as_of_date starting on or after the spe
      #
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit` or `debit`.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status] The current status of the incoming payment order. One of `pending`, `completed`,
      #
      # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type] One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `w
      #
      # @param virtual_account_id [String] If the incoming payment detail is in a virtual account, the ID of the Virtual Ac
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::IncomingPaymentDetail>]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailListParams
      def list(params = {})
        parsed, options = ModernTreasury::IncomingPaymentDetailListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/incoming_payment_details",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::IncomingPaymentDetail,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams} for more
      # details.
      #
      # Simulate Incoming Payment Detail
      #
      # @overload create_async(amount: nil, as_of_date: nil, currency: nil, data: nil, description: nil, direction: nil, internal_account_id: nil, type: nil, virtual_account_id: nil, request_options: {})
      #
      # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      # @param as_of_date [Date, nil] Defaults to today.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil] Defaults to the currency of the originating account.
      #
      # @param data [Object, nil] An object passed through to the simulated IPD that could reflect what a vendor w
      #
      # @param description [String, nil] Defaults to a random description.
      #
      # @param direction [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction] One of `credit`, `debit`.
      #
      # @param internal_account_id [String] The ID of one of your internal accounts.
      #
      # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type] One of `ach`, `wire`, `check`.
      #
      # @param virtual_account_id [String, nil] An optional parameter to associate the incoming payment detail to a virtual acco
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams
      def create_async(params = {})
        parsed, options = ModernTreasury::IncomingPaymentDetailCreateAsyncParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/simulations/incoming_payment_details/create_async",
          body: parsed,
          model: ModernTreasury::AsyncResponse,
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
