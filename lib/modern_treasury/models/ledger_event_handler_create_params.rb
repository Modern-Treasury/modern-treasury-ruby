# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::BaseModel
      # @!attribute ledger_transaction_template
      #
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      required :ledger_transaction_template,
               -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate }

      # @!attribute name
      #   Name of the ledger event handler.
      #
      #   @return [String]
      required :name, String

      # @!attribute conditions
      #
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions]
      optional :conditions, -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions }

      # @!attribute description
      #   An optional description.
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute variables
      #
      #   @return [Hash]
      optional :variables, Hash

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String]
        required :description, String

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #
        #   @return [String]
        required :effective_at, String

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry
                   }
                 )

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String]
        required :status, String

        # @!parse
        #   # @param description [String] An optional description for internal use.
        #   #
        #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   #   reporting purposes.
        #   #
        #   # @param ledger_entries [Array<Object>] An array of ledger entry objects.
        #   #
        #   # @param status [String] To post a ledger transaction at creation, use `posted`.
        #   #
        #   def initialize(description:, effective_at:, ledger_entries:, status:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        class LedgerEntry < ModernTreasury::BaseModel
          # @!attribute amount
          #   The LHS of the conditional.
          #
          #   @return [String]
          required :amount, String

          # @!attribute direction
          #   What the operator between the `field` and `value` is.
          #
          #   @return [String]
          required :direction, String

          # @!attribute ledger_account_id
          #   The RHS of the conditional.
          #
          #   @return [String]
          required :ledger_account_id, String

          # @!parse
          #   # @param amount [String] The LHS of the conditional.
          #   #
          #   # @param direction [String] What the operator between the `field` and `value` is.
          #   #
          #   # @param ledger_account_id [String] The RHS of the conditional.
          #   #
          #   def initialize(amount:, direction:, ledger_account_id:) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end
      end

      class Conditions < ModernTreasury::BaseModel
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
        #   # @param field [String] The LHS of the conditional.
        #   #
        #   # @param operator [String] What the operator between the `field` and `value` is.
        #   #
        #   # @param value [String] The RHS of the conditional.
        #   #
        #   def initialize(field:, operator:, value:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
