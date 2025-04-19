# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerEventHandlers#create
    class LedgerEventHandlerCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute ledger_transaction_template
      #   @deprecated
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
      #   @deprecated
      #
      #   @return [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil]
      optional :conditions,
               -> { ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions },
               nil?: true

      # @!attribute description
      #   An optional description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String], nil?: true

      # @!attribute variables
      #   @deprecated
      #
      #   @return [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      optional :variables,
               -> { ModernTreasury::Internal::Type::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable] },
               nil?: true

      # @!method initialize(ledger_transaction_template:, name:, conditions: nil, description: nil, ledger_id: nil, metadata: nil, variables: nil, request_options: {})
      #   @param ledger_transaction_template [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      #   @param name [String]
      #   @param conditions [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil]
      #   @param description [String, nil]
      #   @param ledger_id [String]
      #   @param metadata [Hash{Symbol=>String}, nil]
      #   @param variables [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # @deprecated
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
        #   @return [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>]
        required :ledger_entries,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry] }

        # @!attribute status
        #   To post a ledger transaction at creation, use `posted`.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!method initialize(description:, effective_at:, ledger_entries:, status:)
        #   @param description [String, nil]
        #   @param effective_at [String, nil]
        #   @param ledger_entries [Array<ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry>]
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

      # @deprecated
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
    end
  end
end
