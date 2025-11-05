# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Holds
      # Create a new hold
      #
      # @overload create(status:, target_id:, target_type:, metadata: nil, reason: nil, request_options: {})
      #
      # @param status [Symbol, ModernTreasury::Models::HoldCreateParams::Status] The status of the hold
      #
      # @param target_id [String] The ID of the target to hold
      #
      # @param target_type [Symbol, ModernTreasury::Models::HoldCreateParams::TargetType] The type of target to hold
      #
      # @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the hold
      #
      # @param reason [String, nil] The reason for the hold
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::HoldCreateResponse]
      #
      # @see ModernTreasury::Models::HoldCreateParams
      def create(params)
        parsed, options = ModernTreasury::HoldCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/holds",
          body: parsed,
          model: ModernTreasury::Models::HoldCreateResponse,
          options: options
        )
      end

      # Get a specific hold
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] hold id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::HoldRetrieveResponse]
      #
      # @see ModernTreasury::Models::HoldRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/holds/%1$s", id],
          model: ModernTreasury::Models::HoldRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a hold
      #
      # @overload update(id, status:, resolution: nil, request_options: {})
      #
      # @param id [String] hold id
      #
      # @param status [Symbol, ModernTreasury::Models::HoldUpdateParams::Status] The new status of the hold
      #
      # @param resolution [String, nil] The resolution of the hold
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::HoldUpdateResponse]
      #
      # @see ModernTreasury::Models::HoldUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::HoldUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/holds/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::HoldUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::HoldListParams} for more details.
      #
      # Get a list of holds.
      #
      # @overload list(after_cursor: nil, metadata: nil, per_page: nil, status: nil, target_id: nil, target_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::HoldListParams::Status, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.status
      #
      # @param target_id [String, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.target_i
      #
      # @param target_type [Symbol, ModernTreasury::Models::HoldListParams::TargetType, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.target_t
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::HoldListResponse>]
      #
      # @see ModernTreasury::Models::HoldListParams
      def list(params = {})
        parsed, options = ModernTreasury::HoldListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/holds",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::HoldListResponse,
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
