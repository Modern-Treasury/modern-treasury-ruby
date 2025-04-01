# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Validations
      # Validates the routing number information supplied without creating a routing
      #   detail
      #
      # @overload validate_routing_number(routing_number:, routing_number_type:, request_options: {})
      #
      # @param routing_number [String]
      # @param routing_number_type [Symbol, ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::RoutingNumberLookupRequest]
      #
      # @see ModernTreasury::Models::ValidationValidateRoutingNumberParams
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

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
