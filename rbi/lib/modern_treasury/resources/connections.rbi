# typed: strong

module ModernTreasury
  module Resources
    class Connections
      sig do
        params(
          after_cursor: T.nilable(String),
          entity: String,
          per_page: Integer,
          vendor_customer_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Connection])
      end
      def list(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
