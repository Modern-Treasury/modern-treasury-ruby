# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    #
    # @see ModernTreasury::Resources::LedgerEventHandlers#create
    class LedgerEventHandler < ModernTreasury::Internal::Type::BaseModel
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
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String], nil?: true

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
               -> { ModernTreasury::Internal::Type::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable] },
               nil?: true

      # @!method initialize(id:, conditions:, created_at:, description:, discarded_at:, ledger_id:, ledger_transaction_template:, live_mode:, metadata:, name:, object:, updated_at:, variables:)
      #   @param id [String]
      #   @param conditions [ModernTreasury::Models::LedgerEventHandler::Conditions, nil]
      #   @param created_at [Time]
      #   @param description [String, nil]
      #   @param discarded_at [Time, nil]
      #   @param ledger_id [String, nil]
      #   @param ledger_transaction_template [ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate]
      #   @param live_mode [Boolean]
      #   @param metadata [Hash{Symbol=>String}, nil]
      #   @param name [String]
      #   @param object [String]
      #   @param updated_at [Time]
      #   @param variables [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]

      # @deprecated
      #
      # @see ModernTreasury::Models::LedgerEventHandler#conditions
      class Conditions < ModernTreasury::Internal::Type::BaseModel
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

        # @!method initialize(field:, operator:, value:)
        #   @param field [String]
        #   @param operator [String]
        #   @param value [String]
      end

      # @deprecated
      #
      # @see ModernTreasury::Models::LedgerEventHandler#ledger_transaction_template
      class LedgerTransactionTemplate < ModernTreasury::Internal::Type::BaseModel
        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        #
        #   @return [String, nil]
        required :effective_at, String, nil?: true

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry] }

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!method initialize(description:, effective_at:, ledger_entries:, status:)
        #   @param description [String, nil]
        #   @param effective_at [String, nil]
        #   @param ledger_entries [Array<ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry>]
        #   @param status [String, nil]

        # @deprecated
        class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
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

          # @!method initialize(amount:, direction:, ledger_account_id:)
          #   @param amount [String]
          #   @param direction [String]
          #   @param ledger_account_id [String]
        end
      end
    end
  end
end
