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
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] description
      #   An optional description.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [DateTime]
      required :discarded_at, DateTime

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
      #   @return [DateTime]
      required :updated_at, DateTime

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
        end
      end
    end
  end
end
