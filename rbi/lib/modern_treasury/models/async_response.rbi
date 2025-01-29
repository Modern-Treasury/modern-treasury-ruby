# typed: strong

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::BaseModel
      Shape = T.type_alias { {id: String, object: String} }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :object

      sig { params(id: String, object: String).void }
      def initialize(id:, object:); end

      sig { returns(ModernTreasury::Models::AsyncResponse::Shape) }
      def to_h; end
    end
  end
end
