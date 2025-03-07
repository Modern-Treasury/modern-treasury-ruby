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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::Connection])
      end
      def list(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
