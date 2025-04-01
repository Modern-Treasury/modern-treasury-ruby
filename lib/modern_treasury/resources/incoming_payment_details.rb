# frozen_string_literal: true

module ModernTreasury
  module Resources
    class IncomingPaymentDetails
      # Get an existing Incoming Payment Detail.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/incoming_payment_details/%1$s", id],
          model: ModernTreasury::Models::IncomingPaymentDetail,
          options: params[:request_options]
        )
      end

      # Update an existing Incoming Payment Detail.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::IncomingPaymentDetail]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::IncomingPaymentDetailUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/incoming_payment_details/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::IncomingPaymentDetail,
          options: options
        )
      end

      # Get a list of Incoming Payment Details.
      #
      # @overload list(after_cursor: nil, as_of_date_end: nil, as_of_date_start: nil, direction: nil, metadata: nil, per_page: nil, status: nil, type: nil, virtual_account_id: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param as_of_date_end [Date]
      # @param as_of_date_start [Date]
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param status [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status]
      # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type]
      # @param virtual_account_id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::IncomingPaymentDetail>]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailListParams
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
      # @overload create_async(amount: nil, as_of_date: nil, currency: nil, data: nil, description: nil, direction: nil, internal_account_id: nil, type: nil, virtual_account_id: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param as_of_date [Date, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil]
      # @param data [Object, nil]
      # @param description [String, nil]
      # @param direction [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction]
      # @param internal_account_id [String]
      # @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type]
      # @param virtual_account_id [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::AsyncResponse]
      #
      # @see ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams
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

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
