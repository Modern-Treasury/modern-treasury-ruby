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
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil]
      optional :conditions, -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions }

      # @!attribute description
      #   An optional description.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute variables
      #
      #   @return [Hash{Symbol => ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      optional :variables, ModernTreasury::HashOf[-> { ModernTreasury::Models::LedgerEventHandlerVariable }]

      # @!parse
      #   # @param ledger_transaction_template [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      #   #
      #   # @param name [String] Name of the ledger event handler.
      #   #
      #   # @param conditions [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil]
      #   #
      #   # @param description [String, nil] An optional description.
      #   #
      #   # @param ledger_id [String] The id of the ledger that this account belongs to.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param variables [Hash{Symbol => ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      #   #
      #   def initialize(
      #     ledger_transaction_template:,
      #     name:,
      #     conditions: nil,
      #     description: nil,
      #     ledger_id: nil,
      #     metadata: nil,
      #     variables: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # ledger_transaction_template => {
      #   description: String,
      #   effective_at: String,
      #   ledger_entries: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry] === _1 },
      #   status: String
      # }
      # ```
      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String, nil]
        required :description, String

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #
        #   @return [String, nil]
        required :effective_at, String

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 ModernTreasury::ArrayOf[-> {
                   ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry
                 }]

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String, nil]
        required :status, String

        # @!parse
        #   # @param description [String, nil] An optional description for internal use.
        #   #
        #   # @param effective_at [String, nil] The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   #   reporting purposes.
        #   #
        #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>] An array of ledger entry objects.
        #   #
        #   # @param status [String, nil] To post a ledger transaction at creation, use `posted`.
        #   #
        #   def initialize(description:, effective_at:, ledger_entries:, status:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
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

      # @example
      #
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
    end
  end
end
