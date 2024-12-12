# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] ledger_transaction_template
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      required :ledger_transaction_template,
               -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate }

      # @!attribute [rw] name
      #   Name of the ledger event handler.
      #   @return [String]
      required :name, String

      # @!attribute [rw] conditions
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions]
      optional :conditions, -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions }

      # @!attribute [rw] description
      #   An optional description.
      #   @return [String]
      optional :description, String

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this account belongs to.
      #   @return [String]
      optional :ledger_id, String

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] variables
      #   @return [Hash]
      optional :variables, Hash

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # @!attribute [rw] description
        #   An optional description for internal use.
        #   @return [String]
        required :description, String

        # @!attribute [rw] effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #   @return [String]
        required :effective_at, String

        # @!attribute [rw] ledger_entries
        #   An array of ledger entry objects.
        #   @return [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry
                   }
                 )

        # @!attribute [rw] status
        #   To post a ledger transaction at creation, use `posted`.
        #   @return [String]
        required :status, String

        class LedgerEntry < ModernTreasury::BaseModel
          # @!attribute [rw] amount
          #   The LHS of the conditional.
          #   @return [String]
          required :amount, String

          # @!attribute [rw] direction
          #   What the operator between the `field` and `value` is.
          #   @return [String]
          required :direction, String

          # @!attribute [rw] ledger_account_id
          #   The RHS of the conditional.
          #   @return [String]
          required :ledger_account_id, String

          # @!parse
          #   # Create a new instance of LedgerEntry from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :amount The LHS of the conditional.
          #   #   @option data [String] :direction What the operator between the `field` and `value` is.
          #   #   @option data [String] :ledger_account_id The RHS of the conditional.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of LedgerTransactionTemplate from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :description An optional description for internal use.
        #   #   @option data [String] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   #     reporting purposes.
        #   #   @option data [Array<Object>] :ledger_entries An array of ledger entry objects.
        #   #   @option data [String] :status To post a ledger transaction at creation, use `posted`.
        #   def initialize(data = {}) = super
      end

      class Conditions < ModernTreasury::BaseModel
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

        # @!parse
        #   # Create a new instance of Conditions from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :field The LHS of the conditional.
        #   #   @option data [String] :operator What the operator between the `field` and `value` is.
        #   #   @option data [String] :value The RHS of the conditional.
        #   def initialize(data = {}) = super
      end
    end
  end
end
