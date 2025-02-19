# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query) }
      def query
      end

      sig do
        params(_: ModernTreasury::Models::LedgerEventHandlerVariable::Query)
          .returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query)
      end
      def query=(_)
      end

      sig { returns(String) }
      def type
      end

      sig { params(_: String).returns(String) }
      def type=(_)
      end

      sig { params(query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String).void }
      def initialize(query:, type:)
      end

      sig { override.returns({query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String}) }
      def to_hash
      end

      class Query < ModernTreasury::BaseModel
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

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
