# typed: strong

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :object

      sig { params(id: String, object: String).void }
      def initialize(id:, object:); end

      sig { override.returns({id: String, object: String}) }
      def to_hash; end
    end
  end
end
