# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerEventHandlerCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig do
        returns(
          ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate
        )
      end
      attr_reader :ledger_transaction_template

      sig do
        params(
          ledger_transaction_template:
            ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::OrHash
        ).void
      end
      attr_writer :ledger_transaction_template

      # Name of the ledger event handler.
      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(
          T.nilable(ModernTreasury::LedgerEventHandlerCreateParams::Conditions)
        )
      end
      attr_reader :conditions

      sig do
        params(
          conditions:
            T.nilable(
              ModernTreasury::LedgerEventHandlerCreateParams::Conditions::OrHash
            )
        ).void
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
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig do
        returns(
          T.nilable(T::Hash[Symbol, ModernTreasury::LedgerEventHandlerVariable])
        )
      end
      attr_accessor :variables

      sig do
        params(
          ledger_transaction_template:
            ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::OrHash,
          name: String,
          conditions:
            T.nilable(
              ModernTreasury::LedgerEventHandlerCreateParams::Conditions::OrHash
            ),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables:
            T.nilable(
              T::Hash[
                Symbol,
                ModernTreasury::LedgerEventHandlerVariable::OrHash
              ]
            ),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        ledger_transaction_template:,
        # Name of the ledger event handler.
        name:,
        conditions: nil,
        # An optional description.
        description: nil,
        # The id of the ledger that this account belongs to.
        ledger_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        variables: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ledger_transaction_template:
              ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            name: String,
            conditions:
              T.nilable(
                ModernTreasury::LedgerEventHandlerCreateParams::Conditions
              ),
            description: T.nilable(String),
            ledger_id: String,
            metadata: T.nilable(T::Hash[Symbol, String]),
            variables:
              T.nilable(
                T::Hash[Symbol, ModernTreasury::LedgerEventHandlerVariable]
              ),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LedgerTransactionTemplate < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
              ModernTreasury::Internal::AnyHash
            )
          end

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        sig { returns(T.nilable(String)) }
        attr_accessor :effective_at

        # An array of ledger entry objects.
        sig do
          returns(
            T::Array[
              ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry
            ]
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
            ledger_entries:
              T::Array[
                ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry::OrHash
              ],
            status: T.nilable(String)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              description: T.nilable(String),
              effective_at: T.nilable(String),
              ledger_entries:
                T::Array[
                  ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry
                ],
              status: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry,
                ModernTreasury::Internal::AnyHash
              )
            end

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
            params(
              amount: String,
              direction: String,
              ledger_account_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The LHS of the conditional.
            amount:,
            # What the operator between the `field` and `value` is.
            direction:,
            # The RHS of the conditional.
            ledger_account_id:
          )
          end

          sig do
            override.returns(
              { amount: String, direction: String, ledger_account_id: String }
            )
          end
          def to_hash
          end
        end
      end

      class Conditions < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerEventHandlerCreateParams::Conditions,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The LHS of the conditional.
        sig { returns(String) }
        attr_accessor :field

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        attr_accessor :operator

        # The RHS of the conditional.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(field: String, operator: String, value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The LHS of the conditional.
          field:,
          # What the operator between the `field` and `value` is.
          operator:,
          # The RHS of the conditional.
          value:
        )
        end

        sig do
          override.returns({ field: String, operator: String, value: String })
        end
        def to_hash
        end
      end
    end
  end
end
