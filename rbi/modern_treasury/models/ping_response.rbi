# typed: strong

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::PingResponse, ModernTreasury::Internal::AnyHash)
        end

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
