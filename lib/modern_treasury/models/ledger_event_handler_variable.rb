# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandlerVariable < ModernTreasury::BaseModel
      # @!attribute query
      #   @return [ModernTreasury::Models::LedgerEventHandlerVariable::Query]
      required :query, -> { ModernTreasury::Models::LedgerEventHandlerVariable::Query }

      # @!attribute type
      #   The type of object this variable is. Currently, only "ledger_account" is supported.
      #   @return [String]
      required :type, String

      class Query < ModernTreasury::BaseModel
        # @!attribute field
        #   The LHS of the conditional.
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   What the operator between the `field` and `value` is.
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The RHS of the conditional.
        #   @return [String]
        required :value, String

        # @!parse
        #   # Create a new instance of Query from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :field The LHS of the conditional.
        #   #   @option data [String] :operator What the operator between the `field` and `value` is.
        #   #   @option data [String] :value The RHS of the conditional.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of LedgerEventHandlerVariable from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :query
      #   #   @option data [String] :type The type of object this variable is. Currently, only "ledger_account" is
      #   #     supported.
      #   def initialize(data = {}) = super
    end
  end
end
