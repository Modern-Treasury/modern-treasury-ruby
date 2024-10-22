# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Validations
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Validates the routing number information supplied without creating a routing
      #   detail
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :routing_number The routing number that is being validated.
      #   @option params [Symbol, RoutingNumberType] :routing_number_type The type of routing number. See
      #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #     more details. In sandbox mode we currently only support `aba` and `swift` with
      #     routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingNumberLookupRequest]
      def validate_routing_number(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/validations/routing_numbers",
          query: params,
          model: ModernTreasury::Models::RoutingNumberLookupRequest
        }
        @client.request(req, opts)
      end
    end
  end
end
