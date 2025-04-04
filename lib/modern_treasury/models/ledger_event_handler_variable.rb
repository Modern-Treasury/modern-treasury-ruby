# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      # @!attribute query
      #
      #   @return [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      required :query, -> { ModernTreasury::Models::LedgerEventHandlerVariable::Query }

      # @!attribute type
      #   The type of object this variable is. Currently, only "ledger_account" is
      #     supported.
      #
      #   @return [String]
      required :type, String

      # @!parse
      #   # @param query [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      #   # @param type [String]
      #   #
      #   def initialize(query:, type:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @deprecated
      class Query < ModernTreasury::BaseModel
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

        # @!parse
        #   # @param field [String]
        #   # @param operator [String]
        #   # @param value [String]
        #   #
        #   def initialize(field:, operator:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
