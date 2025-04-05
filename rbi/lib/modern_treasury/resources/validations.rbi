# typed: strong

module ModernTreasury
  module Resources
    class Validations
      # Validates the routing number information supplied without creating a routing
      #   detail
      sig do
        params(
          routing_number: String,
          routing_number_type: ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::RoutingNumberLookupRequest)
      end
      def validate_routing_number(
        # The routing number that is being validated.
        routing_number:,
        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details. In sandbox mode we currently only support `aba` and `swift` with
        #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
        routing_number_type:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
