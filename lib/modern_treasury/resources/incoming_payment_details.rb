# frozen_string_literal: true

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Get an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/incoming_payment_details/#{id}",
          model: ModernTreasury::Models::IncomingPaymentDetail
        }
        @client.request(req, opts)
      end

      # Update an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::IncomingPaymentDetailUpdateParams] Attributes to send in this request.
      #
      #   @option params [Hash, nil] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::IncomingPaymentDetailUpdateParams.dump(params)
        req = {
          method: :patch,
          path: "/api/incoming_payment_details/#{id}",
          body: parsed,
          model: ModernTreasury::Models::IncomingPaymentDetail
        }
        @client.request(req, opts)
      end

      # Get a list of Incoming Payment Details.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::IncomingPaymentDetailListParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Date, nil] :as_of_date_end Filters incoming payment details with an as_of_date starting on or before the
      #     specified date (YYYY-MM-DD).
      #
      #   @option params [Date, nil] :as_of_date_start Filters incoming payment details with an as_of_date starting on or after the
      #     specified date (YYYY-MM-DD).
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection, nil] :direction One of `credit` or `debit`.
      #
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer, nil] :per_page
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status, nil] :status The current status of the incoming payment order. One of `pending`, `completed`,
      #     or `returned`.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type, nil] :type One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #     `wire`.
      #
      #   @option params [String, nil] :virtual_account_id If the incoming payment detail is in a virtual account, the ID of the Virtual
      #     Account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::IncomingPaymentDetail>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::IncomingPaymentDetailListParams.dump(params)
        req = {
          method: :get,
          path: "/api/incoming_payment_details",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::IncomingPaymentDetail
        }
        @client.request(req, opts)
      end

      # Simulate Incoming Payment Detail
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams] Attributes to send in this request.
      #
      #   @option params [Integer, nil] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
      #
      #   @option params [Date, nil] :as_of_date Defaults to today.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency, nil] :currency Defaults to the currency of the originating account.
      #
      #   @option params [String, nil] :description Defaults to a random description.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction, nil] :direction One of `credit`, `debit`.
      #
      #   @option params [String, nil] :internal_account_id The ID of one of your internal accounts.
      #
      #   @option params [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type, nil] :type One of `ach`, `wire`, `check`.
      #
      #   @option params [String, nil] :virtual_account_id An optional parameter to associate the incoming payment detail to a virtual
      #     account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      def create_async(params = {}, opts = {})
        parsed = ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams.dump(params)
        req = {
          method: :post,
          path: "/api/simulations/incoming_payment_details/create_async",
          body: parsed,
          model: ModernTreasury::Models::AsyncResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
