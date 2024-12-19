# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandler < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute conditions
      #
      #   @return [ModernTreasury::Models::LedgerEventHandler::Conditions]
      required :conditions, -> { ModernTreasury::Models::LedgerEventHandler::Conditions }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional description.
      #
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_id
      #   The id of the ledger that this event handler belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledger_transaction_template
      #
      #   @return [ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate]
      required :ledger_transaction_template,
               -> { ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   Name of the ledger event handler.
      #
      #   @return [String]
      required :name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute variables
      #
      #   @return [Hash{Symbol => ModernTreasury::Models::LedgerEventHandlerVariable}]
      required :variables, ModernTreasury::HashOf[-> { ModernTreasury::Models::LedgerEventHandlerVariable }]

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param conditions [ModernTreasury::Models::LedgerEventHandler::Conditions, nil]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param description [String, nil] An optional description.
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param ledger_id [String, nil] The id of the ledger that this event handler belongs to.
      #   #
      #   # @param ledger_transaction_template [ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate]
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] Name of the ledger event handler.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param variables [Hash{Symbol => ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      #   #
      #   def initialize(
      #     id:,
      #     conditions:,
      #     created_at:,
      #     description:,
      #     discarded_at:,
      #     ledger_id:,
      #     ledger_transaction_template:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     updated_at:,
      #     variables:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
        #   def initialize(field:, operator:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

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
        #   @return [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf[-> {
                   ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry
                 }]

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String]
        required :status, String

        # @!parse
        #   # @param description [String, nil] An optional description for internal use.
        #   #
        #   # @param effective_at [String, nil] The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   #   reporting purposes.
        #   #
        #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>] An array of ledger entry objects.
        #   #
        #   # @param status [String, nil] To post a ledger transaction at creation, use `posted`.
        #   #
        #   def initialize(description:, effective_at:, ledger_entries:, status:, **) = super

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
          #   def initialize(amount:, direction:, ledger_account_id:, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end
      end
    end
  end
end
