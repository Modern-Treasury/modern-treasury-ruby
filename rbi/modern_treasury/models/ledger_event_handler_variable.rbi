# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(ModernTreasury::LedgerEventHandlerVariable::Query) }
      attr_reader :query

      sig do
        params(
          query: ModernTreasury::LedgerEventHandlerVariable::Query::OrHash
        ).void
      end
      attr_writer :query

      # The type of object this variable is. Currently, only "ledger_account" is
      # supported.
      sig { returns(String) }
      attr_accessor :type

      sig do
        params(
          query: ModernTreasury::LedgerEventHandlerVariable::Query::OrHash,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        query:,
        # The type of object this variable is. Currently, only "ledger_account" is
        # supported.
        type:
      )
      end

      sig do
        override.returns(
          {
            query: ModernTreasury::LedgerEventHandlerVariable::Query,
            type: String
          }
        )
      end
      def to_hash
      end

      class Query < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

        # The LHS of the conditional.
        sig { returns(String) }
        attr_accessor :field

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        attr_accessor :operator

        # The RHS of the conditional.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(field: String, operator: String, value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The LHS of the conditional.
          field:,
          # What the operator between the `field` and `value` is.
          operator:,
          # The RHS of the conditional.
          value:
        )
        end

        sig do
          override.returns({ field: String, operator: String, value: String })
        end
        def to_hash
        end
      end
    end
  end
end
