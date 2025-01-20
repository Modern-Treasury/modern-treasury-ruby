# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # ledger_event_handler => {
    #   id: String,
    #   conditions: ModernTreasury::Models::LedgerEventHandler::Conditions,
    #   created_at: Time,
    #   description: String,
    #   discarded_at: Time,
    #   **_
    # }
    # ```
    class LedgerEventHandler < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute conditions
      #
      #   @return [ModernTreasury::Models::LedgerEventHandler::Conditions, nil]
      required :conditions, -> { ModernTreasury::Models::LedgerEventHandler::Conditions }, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional description.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_id
      #   The id of the ledger that this event handler belongs to.
      #
      #   @return [String, nil]
      required :ledger_id, String, nil?: true

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
      #   @return [Hash{Symbol=>String}, nil]
      required :metadata, ModernTreasury::HashOf[String], nil?: true

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
      #   @return [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      required :variables,
               -> { ModernTreasury::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable] },
               nil?: true

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
      #   # @param metadata [Hash{Symbol=>String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] Name of the ledger event handler.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param variables [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
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

      # @example
      # ```ruby
      # conditions => {
      #   field: String,
      #   operator: String,
      #   value: String
      # }
      # ```
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

      # @example
      # ```ruby
      # ledger_transaction_template => {
      #   description: String,
      #   effective_at: String,
      #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry] === _1 },
      #   status: String
      # }
      # ```
      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #
        #   @return [String, nil]
        required :effective_at, String, nil?: true

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry]
                 }

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

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

        # @example
        # ```ruby
        # ledger_entry => {
        #   amount: String,
        #   direction: String,
        #   ledger_account_id: String
        # }
        # ```
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
