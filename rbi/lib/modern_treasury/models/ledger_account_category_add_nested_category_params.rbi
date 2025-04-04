# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryAddNestedCategoryParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: T.any(
            ModernTreasury::RequestOptions,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig { override.returns({id: String, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
