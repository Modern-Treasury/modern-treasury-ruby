# frozen_string_literal: true

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      # Get an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param params [ModernTreasury::Models::IncomingPaymentDetailRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/incoming_payment_details/%0s", id],
          model: ModernTreasury::Models::IncomingPaymentDetail,
          options: params[:request_options]
        )
      end

      # Update an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param params [ModernTreasury::Models::IncomingPaymentDetailUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::IncomingPaymentDetailUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/incoming_payment_details/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::IncomingPaymentDetail,
          options: options
        )
      end

      # Get a list of Incoming Payment Details.
      #
      # @param params [ModernTreasury::Models::IncomingPaymentDetailListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Date] :as_of_date_end Filters incoming payment details with an as_of_date starting on or before the
      #     specified date (YYYY-MM-DD).
      #
      #   @option params [Date] :as_of_date_start Filters incoming payment details with an as_of_date starting on or after the
      #     specified date (YYYY-MM-DD).
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :direction One of `credit` or `debit`.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status] :status The current status of the incoming payment order. One of `pending`, `completed`,
      #     or `returned`.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type] :type One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #     `wire`.
      #
      #   @option params [String] :virtual_account_id If the incoming payment detail is in a virtual account, the ID of the Virtual
      #     Account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::IncomingPaymentDetail>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::IncomingPaymentDetailListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/incoming_payment_details",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::IncomingPaymentDetail,
          options: options
        )
      end

      # Simulate Incoming Payment Detail
      #
      # @param params [ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
      #
      #   @option params [Date, nil] :as_of_date Defaults to today.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency, nil] :currency Defaults to the currency of the originating account.
      #
      #   @option params [Object, nil] :data An object passed through to the simulated IPD that could reflect what a vendor
      #     would pass.
      #
      #   @option params [String, nil] :description Defaults to a random description.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction] :direction One of `credit`, `debit`.
      #
      #   @option params [String] :internal_account_id The ID of one of your internal accounts.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type] :type One of `ach`, `wire`, `check`.
      #
      #   @option params [String, nil] :virtual_account_id An optional parameter to associate the incoming payment detail to a virtual
      #     account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      def create_async(params = {})
        parsed, options = ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/simulations/incoming_payment_details/create_async",
          body: parsed,
          model: ModernTreasury::Models::AsyncResponse,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
