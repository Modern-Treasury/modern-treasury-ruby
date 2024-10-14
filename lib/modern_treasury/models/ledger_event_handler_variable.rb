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

        # Create a new instance of Query from a Hash of raw data.
        #
        # @overload initialize(field: nil, operator: nil, value: nil)
        # @param field [String] The LHS of the conditional.
        # @param operator [String] What the operator between the `field` and `value` is.
        # @param value [String] The RHS of the conditional.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of LedgerEventHandlerVariable from a Hash of raw data.
      #
      # @overload initialize(query: nil, type: nil)
      # @param query [Object]
      # @param type [String] The type of object this variable is. Currently, only "ledger_account" is
      #   supported.
      def initialize(data = {})
        super
      end
    end
  end
end
