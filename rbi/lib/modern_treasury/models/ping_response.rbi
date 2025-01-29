# typed: strong

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::BaseModel
      Shape = T.type_alias { {ping: String} }

      sig { returns(String) }
      attr_accessor :ping

      sig { params(ping: String).void }
      def initialize(ping:); end

      sig { returns(ModernTreasury::Models::PingResponse::Shape) }
      def to_h; end
    end
  end
end
