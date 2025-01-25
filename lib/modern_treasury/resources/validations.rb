# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Validations
      # Validates the routing number information supplied without creating a routing
      #   detail
      #
      # @param params [ModernTreasury::Models::ValidationValidateRoutingNumberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :routing_number The routing number that is being validated.
      #
      #   @option params [Symbol, ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType] :routing_number_type The type of routing number. See
      #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #     more details. In sandbox mode we currently only support `aba` and `swift` with
      #     routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::RoutingNumberLookupRequest]
      #
      def validate_routing_number(params)
        parsed, options = ModernTreasury::Models::ValidationValidateRoutingNumberParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/validations/routing_numbers",
          query: parsed,
          model: ModernTreasury::Models::RoutingNumberLookupRequest,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
