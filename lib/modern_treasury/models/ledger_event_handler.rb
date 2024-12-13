# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandler < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute conditions
      #   @return [ModernTreasury::Models::LedgerEventHandler::Conditions]
      required :conditions, -> { ModernTreasury::Models::LedgerEventHandler::Conditions }

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional description.
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_id
      #   The id of the ledger that this event handler belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledger_transaction_template
      #   @return [ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate]
      required :ledger_transaction_template,
               -> { ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute name
      #   Name of the ledger event handler.
      #   @return [String]
      required :name, String

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute variables
      #   @return [Hash]
      required :variables, Hash

      class Conditions < ModernTreasury::BaseModel
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
        #   # Create a new instance of Conditions from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :field The LHS of the conditional.
        #   #   @option data [String] :operator What the operator between the `field` and `value` is.
        #   #   @option data [String] :value The RHS of the conditional.
        #   def initialize(data = {}) = super
      end

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # @!attribute description
        #   An optional description for internal use.
        #   @return [String]
        required :description, String

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #   @return [String]
        required :effective_at, String

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #   @return [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry
                   }
                 )

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #   @return [String]
        required :status, String

        class LedgerEntry < ModernTreasury::BaseModel
          # @!attribute amount
          #   The LHS of the conditional.
          #   @return [String]
          required :amount, String

          # @!attribute direction
          #   What the operator between the `field` and `value` is.
          #   @return [String]
          required :direction, String

          # @!attribute ledger_account_id
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

      # @!parse
      #   # Create a new instance of LedgerEventHandler from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :conditions
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description An optional description.
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :ledger_id The id of the ledger that this event handler belongs to.
      #   #   @option data [Object] :ledger_transaction_template
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name Name of the ledger event handler.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   #   @option data [Hash] :variables
      #   def initialize(data = {}) = super
    end
  end
end
