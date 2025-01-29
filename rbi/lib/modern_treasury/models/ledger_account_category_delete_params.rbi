# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({}, ModernTreasury::RequestParameters::Shape) }

      sig { params(request_options: ModernTreasury::RequestOpts).void }
      def initialize(request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerAccountCategoryDeleteParams::Shape) }
      def to_h; end
    end
  end
end
