# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String}
      end

      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query) }
      attr_accessor :query

      sig { returns(String) }
      attr_accessor :type

      sig { params(query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String).void }
      def initialize(query:, type:); end

      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Shape) }
      def to_h; end

      class Query < ModernTreasury::BaseModel
        Shape = T.type_alias { {field: String, operator: String, value: String} }

        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: String).void }
        def initialize(field:, operator:, value:); end

        sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query::Shape) }
        def to_h; end
      end
    end
  end
end
