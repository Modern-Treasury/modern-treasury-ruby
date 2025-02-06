# typed: strong

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :ping

      sig { params(ping: String).void }
      def initialize(ping:)
      end

      sig { override.returns({ping: String}) }
      def to_hash
      end
    end
  end
end
