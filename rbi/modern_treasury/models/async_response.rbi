# typed: strong

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :object

      sig { params(id: String, object: String).returns(T.attached_class) }
      def self.new(id:, object:)
      end

      sig { override.returns({ id: String, object: String }) }
      def to_hash
      end
    end
  end
end
