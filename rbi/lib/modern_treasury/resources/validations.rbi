# typed: strong

module ModernTreasury
  module Resources
    class Validations
      sig do
        params(
          routing_number: String,
          routing_number_type: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::RoutingNumberLookupRequest)
      end
      def validate_routing_number(routing_number:, routing_number_type:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
