# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    class LedgerEventHandlerVariable < ModernTreasury::Internal::Type::BaseModel
      # @!attribute query
      #   @deprecated
      #
      #   @return [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      required :query, -> { ModernTreasury::Models::LedgerEventHandlerVariable::Query }

      # @!attribute type
      #   The type of object this variable is. Currently, only "ledger_account" is
      #   supported.
      #
      #   @return [String]
      required :type, String

      # @!method initialize(query:, type:)
      #   @param query [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      #   @param type [String]

      # @deprecated
      #
      # @see ModernTreasury::Models::LedgerEventHandlerVariable#query
      class Query < ModernTreasury::Internal::Type::BaseModel
        # @!attribute field
        #   The LHS of the conditional.
        #
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   What the operator between the `field` and `value` is.
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The RHS of the conditional.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(field:, operator:, value:)
        #   @param field [String]
        #   @param operator [String]
        #   @param value [String]
      end
    end
  end
end
