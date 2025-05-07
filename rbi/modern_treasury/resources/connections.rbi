# typed: strong

module ModernTreasury
  module Resources
    class Connections
      # Get a list of all connections.
      sig do
        params(
          after_cursor: T.nilable(String),
          entity: String,
          per_page: Integer,
          vendor_customer_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::Connection])
      end
      def list(
        after_cursor: nil,
        # A string code representing the vendor (i.e. bank).
        entity: nil,
        per_page: nil,
        # An identifier assigned by the vendor to your organization.
        vendor_customer_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
