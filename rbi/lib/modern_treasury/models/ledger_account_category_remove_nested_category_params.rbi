# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryRemoveNestedCategoryParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({id: String}, ModernTreasury::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String, request_options: ModernTreasury::RequestOpts).void }
      def initialize(id:, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams::Shape) }
      def to_h; end
    end
  end
end
