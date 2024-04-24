# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < BaseModel
      # @!attribute [rw] query
      #   @return [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      required :query, -> { ModernTreasury::Models::LedgerEventHandlerVariable::Query }

      # @!attribute [rw] type
      #   The type of object this variable is. Currently, only "ledger_account" is supported.
      #   @return [String]
      required :type, String

      class Query < BaseModel
        # @!attribute [rw] field
        #   The LHS of the conditional.
        #   @return [String]
        required :field, String

        # @!attribute [rw] operator
        #   What the operator between the `field` and `value` is.
        #   @return [String]
        required :operator, String

        # @!attribute [rw] value
        #   The RHS of the conditional.
        #   @return [String]
        required :value, String
      end
    end
  end
end
