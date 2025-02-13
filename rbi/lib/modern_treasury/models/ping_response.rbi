# typed: strong

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      def ping
      end

      sig { params(_: String).returns(String) }
      def ping=(_)
      end

      sig { params(ping: String).void }
      def initialize(ping:)
      end

      sig { override.returns({ping: String}) }
      def to_hash
      end
    end
  end
end
