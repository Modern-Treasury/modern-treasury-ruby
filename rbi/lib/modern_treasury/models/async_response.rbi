# typed: strong

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { params(id: String, object: String).void }
      def initialize(id:, object:)
      end

      sig { override.returns({id: String, object: String}) }
      def to_hash
      end
    end
  end
end
