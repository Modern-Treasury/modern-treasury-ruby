# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      sig { returns(ModernTreasury::Models::LedgerEventHandlerVariable::Query) }
      attr_reader :query

      sig do
        params(
          query: T.any(ModernTreasury::Models::LedgerEventHandlerVariable::Query, ModernTreasury::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :query

      # The type of object this variable is. Currently, only "ledger_account" is
      #   supported.
      sig { returns(String) }
      attr_accessor :type

      sig do
        params(
          query: T.any(ModernTreasury::Models::LedgerEventHandlerVariable::Query, ModernTreasury::Internal::Util::AnyHash),
          type: String
        )
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
        attr_accessor :field

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        attr_accessor :operator

        # The RHS of the conditional.
        sig { returns(String) }
        attr_accessor :value

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
