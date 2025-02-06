# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query) }
      attr_accessor :query

      sig { returns(String) }
      attr_accessor :type

      sig { params(query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String).void }
      def initialize(query:, type:)
      end

      sig do
        override.returns({query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String})
      end
      def to_hash
      end

      class Query < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: String).void }
        def initialize(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: String}) }
        def to_hash
        end
      end
    end
  end
end
