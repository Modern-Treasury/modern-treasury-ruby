# typed: strong

module ModernTreasury
  module Resources
    class LedgerableEvents
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
