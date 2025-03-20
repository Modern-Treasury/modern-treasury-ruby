# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query) }
      def query
      end

      sig do
        params(_: T.any(ModernTreasury::Models::LedgerEventHandlerVariable::Query, ModernTreasury::Util::AnyHash))
          .returns(T.any(ModernTreasury::Models::LedgerEventHandlerVariable::Query, ModernTreasury::Util::AnyHash))
      end
      def query=(_)
      end

      # The type of object this variable is. Currently, only "ledger_account" is
      #   supported.
      sig { returns(String) }
      def type
      end

      sig { params(_: String).returns(String) }
      def type=(_)
      end

      sig do
        params(query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String)
          .returns(T.attached_class)
      end
      def self.new(query:, type:)
      end

      sig { override.returns({query: ModernTreasury::Models::LedgerEventHandlerVariable::Query, type: String}) }
      def to_hash
      end

      class Query < ModernTreasury::BaseModel
        # The LHS of the conditional.
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        # The RHS of the conditional.
        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(field: String, operator: String, value: String).returns(T.attached_class) }
        def self.new(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: String}) }
        def to_hash
        end
      end
    end
  end
end
