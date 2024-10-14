# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandler < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] conditions
      #   @return [ModernTreasury::Models::LedgerEventHandler::Conditions]
      required :conditions, -> { ModernTreasury::Models::LedgerEventHandler::Conditions }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   An optional description.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this event handler belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledger_transaction_template
      #   @return [ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate]
      required :ledger_transaction_template,
               -> { ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate }

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   Name of the ledger event handler.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] variables
      #   @return [Hash]
      required :variables, Hash

      class Conditions < BaseModel
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

        # Create a new instance of Conditions from a Hash of raw data.
        #
        # @overload initialize(field: nil, operator: nil, value: nil)
        # @param field [String] The LHS of the conditional.
        # @param operator [String] What the operator between the `field` and `value` is.
        # @param value [String] The RHS of the conditional.
        def initialize(data = {})
          super
        end
      end

      class LedgerTransactionTemplate < BaseModel
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
        #   @return [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf.new(
                   lambda {
                     ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry
                   }
                 )

        # @!attribute [rw] status
        #   To post a ledger transaction at creation, use `posted`.
        #   @return [String]
        required :status, String

        class LedgerEntry < BaseModel
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

          # Create a new instance of LedgerEntry from a Hash of raw data.
          #
          # @overload initialize(amount: nil, direction: nil, ledger_account_id: nil)
          # @param amount [String] The LHS of the conditional.
          # @param direction [String] What the operator between the `field` and `value` is.
          # @param ledger_account_id [String] The RHS of the conditional.
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of LedgerTransactionTemplate from a Hash of raw data.
        #
        # @overload initialize(description: nil, effective_at: nil, ledger_entries: nil, status: nil)
        # @param description [String] An optional description for internal use.
        # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        # @param ledger_entries [Array<Object>] An array of ledger entry objects.
        # @param status [String] To post a ledger transaction at creation, use `posted`.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of LedgerEventHandler from a Hash of raw data.
      #
      # @overload initialize(id: nil, conditions: nil, created_at: nil, description: nil, discarded_at: nil, ledger_id: nil, ledger_transaction_template: nil, live_mode: nil, metadata: nil, name: nil, object: nil, updated_at: nil, variables: nil)
      # @param id [String]
      # @param conditions [Object]
      # @param created_at [String]
      # @param description [String] An optional description.
      # @param discarded_at [String]
      # @param ledger_id [String] The id of the ledger that this event handler belongs to.
      # @param ledger_transaction_template [Object]
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] Name of the ledger event handler.
      # @param object [String]
      # @param updated_at [String]
      # @param variables [Hash]
      def initialize(data = {})
        super
      end
    end
  end
end
