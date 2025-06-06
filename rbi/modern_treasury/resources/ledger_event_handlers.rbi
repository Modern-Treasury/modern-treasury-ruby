# typed: strong

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
