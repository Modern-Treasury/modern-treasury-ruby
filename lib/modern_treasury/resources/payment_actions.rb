# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentActions
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentActionCreateParams} for more details.
      #
      # Create a payment action.
      #
      # @overload create(type:, actionable_id: nil, actionable_type: nil, details: nil, internal_account_id: nil, request_options: {})
      #
      # @param type [String] Required. The type of the payment action. Determines the action to be taken.
      #
      # @param actionable_id [String] Optional. The ID of the associated actionable object.
      #
      # @param actionable_type [String] Optional. The type of the associated actionable object. One of `payment_order`,
      #
      # @param details [Object] Optional. The specifc details of the payment action based on type.
      #
      # @param internal_account_id [String] Optional. The ID of one of your organization's internal accounts. Required if `a
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentActionCreateResponse]
      #
      # @see ModernTreasury::Models::PaymentActionCreateParams
      def create(params)
        parsed, options = ModernTreasury::PaymentActionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_actions",
          body: parsed,
          model: ModernTreasury::Models::PaymentActionCreateResponse,
          options: options
        )
      end

      # Get details on a single payment action.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentActionRetrieveResponse]
      #
      # @see ModernTreasury::Models::PaymentActionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_actions/%1$s", id],
          model: ModernTreasury::Models::PaymentActionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentActionUpdateParams} for more details.
      #
      # Update a single payment action.
      #
      # @overload update(id, status:, request_options: {})
      #
      # @param id [String] id
      #
      # @param status [Symbol, ModernTreasury::Models::PaymentActionUpdateParams::Status] Optional. Set the status of the payment action to `cancelled` to cancel the paym
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentActionUpdateResponse]
      #
      # @see ModernTreasury::Models::PaymentActionUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::PaymentActionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/payment_actions/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::PaymentActionUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentActionListParams} for more details.
      #
      # Get a list of all payment actions.
      #
      # @overload list(actionable_id: nil, actionable_type: nil, after_cursor: nil, created_at: nil, internal_account_id: nil, metadata: nil, per_page: nil, status: nil, type: nil, request_options: {})
      #
      # @param actionable_id [String] The ID of the associated actionable object.
      #
      # @param actionable_type [String] The type of the associated actionable object. One of `payment_order`,
      # `expected\_
      #
      # @param after_cursor [String, nil]
      #
      # @param created_at [ModernTreasury::Models::PaymentActionListParams::CreatedAt] Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=), `lt
      #
      # @param internal_account_id [String] The ID of one of your internal accounts.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::PaymentActionListParams::Status] Filter by payment actions of a specific status.
      #
      # @param type [Symbol, ModernTreasury::Models::PaymentActionListParams::Type] The type of payment action.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentActionListResponse>]
      #
      # @see ModernTreasury::Models::PaymentActionListParams
      def list(params = {})
        parsed, options = ModernTreasury::PaymentActionListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/payment_actions",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::PaymentActionListResponse,
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
