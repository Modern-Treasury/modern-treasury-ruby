# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandler < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions)) }
      attr_reader :conditions

      sig do
        params(
          conditions: T.nilable(
            T.any(ModernTreasury::Models::LedgerEventHandler::Conditions, ModernTreasury::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :conditions

      sig { returns(Time) }
      attr_accessor :created_at

      # An optional description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The id of the ledger that this event handler belongs to.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_id

      sig { returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate) }
      attr_reader :ledger_transaction_template

      sig do
        params(
          ledger_transaction_template: T.any(
            ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :ledger_transaction_template

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Name of the ledger event handler.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])) }
      attr_accessor :variables

      sig do
        params(
          id: String,
          conditions: T.nilable(
            T.any(ModernTreasury::Models::LedgerEventHandler::Conditions, ModernTreasury::Internal::AnyHash)
          ),
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: T.nilable(String),
          ledger_transaction_template: T.any(
            ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
            ModernTreasury::Internal::AnyHash
          ),
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: String,
          object: String,
          updated_at: Time,
          variables: T.nilable(
            T::Hash[Symbol, T.any(ModernTreasury::Models::LedgerEventHandlerVariable, ModernTreasury::Internal::AnyHash)]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        conditions:,
        created_at:,
        # An optional description.
        description:,
        discarded_at:,
        # The id of the ledger that this event handler belongs to.
        ledger_id:,
        ledger_transaction_template:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # Name of the ledger event handler.
        name:,
        object:,
        updated_at:,
        variables:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              conditions: T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions),
              created_at: Time,
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              ledger_id: T.nilable(String),
              ledger_transaction_template: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
              live_mode: T::Boolean,
              metadata: T.nilable(T::Hash[Symbol, String]),
              name: String,
              object: String,
              updated_at: Time,
              variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])
            }
          )
      end
      def to_hash; end

      class Conditions < ModernTreasury::Internal::Type::BaseModel
        # The LHS of the conditional.
        sig { returns(String) }
        attr_accessor :field

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        attr_accessor :operator

        # The RHS of the conditional.
        sig { returns(String) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: String).returns(T.attached_class) }
        def self.new(
          # The LHS of the conditional.
          field:,
          # What the operator between the `field` and `value` is.
          operator:,
          # The RHS of the conditional.
          value:
        ); end
        sig { override.returns({field: String, operator: String, value: String}) }
        def to_hash; end
      end

      class LedgerTransactionTemplate < ModernTreasury::Internal::Type::BaseModel
        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        sig { returns(T.nilable(String)) }
        attr_accessor :effective_at

        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry]) }
        attr_accessor :ledger_entries

        # To post a ledger transaction at creation, use `posted`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig do
          params(
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[
              T.any(
                ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry,
                ModernTreasury::Internal::AnyHash
              )
            ],
            status: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # An optional description for internal use.
          description:,
          # The timestamp (ISO8601 format) at which the ledger transaction happened for
          # reporting purposes.
          effective_at:,
          # An array of ledger entry objects.
          ledger_entries:,
          # To post a ledger transaction at creation, use `posted`.
          status:
        ); end
        sig do
          override
            .returns(
              {
                description: T.nilable(String),
                effective_at: T.nilable(String),
                ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry],
                status: T.nilable(String)
              }
            )
        end
        def to_hash; end

        class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
          # The LHS of the conditional.
          sig { returns(String) }
          attr_accessor :amount

          # What the operator between the `field` and `value` is.
          sig { returns(String) }
          attr_accessor :direction

          # The RHS of the conditional.
          sig { returns(String) }
          attr_accessor :ledger_account_id

          sig do
            params(amount: String, direction: String, ledger_account_id: String).returns(T.attached_class)
          end
          def self.new(
            # The LHS of the conditional.
            amount:,
            # What the operator between the `field` and `value` is.
            direction:,
            # The RHS of the conditional.
            ledger_account_id:
          ); end
          sig { override.returns({amount: String, direction: String, ledger_account_id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
