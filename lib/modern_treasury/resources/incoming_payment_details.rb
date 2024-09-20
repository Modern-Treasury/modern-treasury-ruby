# frozen_string_literal: true

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      def initialize(client:)
        @client = client
      end

      # Get an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/incoming_payment_details/#{id}"
        req[:model] = ModernTreasury::Models::IncomingPaymentDetail
        @client.request(req, opts)
      end

      # Update an existing Incoming Payment Detail.
      #
      # @param id [String] The unique identifier of the incoming payment detail.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/incoming_payment_details/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::IncomingPaymentDetail
        @client.request(req, opts)
      end

      # Get a list of Incoming Payment Details.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Date] :as_of_date_end Filters incoming payment details with an as_of_date starting on or before the
      #   specified date (YYYY-MM-DD).
      # @option params [Date] :as_of_date_start Filters incoming payment details with an as_of_date starting on or after the
      #   specified date (YYYY-MM-DD).
      # @option params [Symbol] :direction One of `credit` or `debit`.
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Integer] :per_page
      # @option params [Symbol] :status The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      # @option params [Symbol] :type One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      # @option params [String] :virtual_account_id If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::IncomingPaymentDetail>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/incoming_payment_details"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::IncomingPaymentDetail
        @client.request(req, opts)
      end

      # Simulate Incoming Payment Detail
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      # @option params [Date] :as_of_date Defaults to today.
      # @option params [Symbol] :currency Defaults to the currency of the originating account.
      # @option params [String] :description Defaults to a random description.
      # @option params [Symbol] :direction One of `credit`, `debit`.
      # @option params [String] :internal_account_id The ID of one of your internal accounts.
      # @option params [Symbol] :type One of `ach`, `wire`, `check`.
      # @option params [String] :virtual_account_id An optional parameter to associate the incoming payment detail to a virtual
      #   account.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      def create_async(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/simulations/incoming_payment_details/create_async"
        req[:body] = params
        req[:model] = ModernTreasury::Models::AsyncResponse
        @client.request(req, opts)
      end
    end
  end
end
