# typed: strong

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :ping

      sig { params(ping: String).returns(T.attached_class) }
      def self.new(ping:)
      end

      sig { override.returns({ ping: String }) }
      def to_hash
      end
    end
  end
end
