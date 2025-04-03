# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate) }
      attr_reader :ledger_transaction_template

      sig do
        params(
          ledger_transaction_template: T.any(
            ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :ledger_transaction_template

      # Name of the ledger event handler.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions)) }
      attr_reader :conditions

      sig do
        params(
          conditions: T.nilable(
            T.any(
              ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .void
      end
      attr_writer :conditions

      # An optional description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The id of the ledger that this account belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])) }
      attr_accessor :variables

      sig do
        params(
          ledger_transaction_template: T.any(
            ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            ModernTreasury::Internal::AnyHash
          ),
          name: String,
          conditions: T.nilable(
            T.any(
              ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions,
              ModernTreasury::Internal::AnyHash
            )
          ),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(
            T::Hash[Symbol, T.any(ModernTreasury::Models::LedgerEventHandlerVariable, ModernTreasury::Internal::AnyHash)]
          ),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        ledger_transaction_template:,
        name:,
        conditions: nil,
        description: nil,
        ledger_id: nil,
        metadata: nil,
        variables: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
              name: String,
              conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
              description: T.nilable(String),
              ledger_id: String,
              metadata: T.nilable(T::Hash[Symbol, String]),
              variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LedgerTransactionTemplate < ModernTreasury::Internal::Type::BaseModel
        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(T.nilable(String)) }
        attr_accessor :effective_at

        # An array of ledger entry objects.
        sig do
          returns(
            T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry]
          )
        end
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
              ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry,
              ModernTreasury::Internal::AnyHash
            )
            ],
            status: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(description:, effective_at:, ledger_entries:, status:)
        end

        sig do
          override
            .returns(
              {
                description: T.nilable(String),
                effective_at: T.nilable(String),
                ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry],
                status: T.nilable(String)
              }
            )
        end
        def to_hash
        end

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
          def self.new(amount:, direction:, ledger_account_id:)
          end

          sig { override.returns({amount: String, direction: String, ledger_account_id: String}) }
          def to_hash
          end
        end
      end

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
        def self.new(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: String}) }
        def to_hash
        end
      end
    end
  end
end
