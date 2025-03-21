# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate) }
      def ledger_transaction_template
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def ledger_transaction_template=(_)
      end

      # Name of the ledger event handler.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions)) }
      def conditions
      end

      sig do
        params(
          _: T.nilable(
            T.any(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, ModernTreasury::Util::AnyHash)
          )
        )
          .returns(
            T.nilable(
              T.any(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, ModernTreasury::Util::AnyHash)
            )
          )
      end
      def conditions=(_)
      end

      # An optional description.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The id of the ledger that this account belongs to.
      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])) }
      def variables
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]))
          .returns(T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]))
      end
      def variables=(_)
      end

      sig do
        params(
          ledger_transaction_template: T.any(
            ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            ModernTreasury::Util::AnyHash
          ),
          name: String,
          conditions: T.nilable(
            T.any(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, ModernTreasury::Util::AnyHash)
          ),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(
            T::Hash[Symbol, T.any(ModernTreasury::Models::LedgerEventHandlerVariable, ModernTreasury::Util::AnyHash)]
          ),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(T.nilable(String)) }
        def effective_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def effective_at=(_)
        end

        # An array of ledger entry objects.
        sig do
          returns(
            T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry]
          )
        end
        def ledger_entries
        end

        sig do
          params(
            _: T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry]
          )
            .returns(
              T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry]
            )
        end
        def ledger_entries=(_)
        end

        # To post a ledger transaction at creation, use `posted`.
        sig { returns(T.nilable(String)) }
        def status
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_)
        end

        sig do
          params(
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[
            T.any(
              ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry,
              ModernTreasury::Util::AnyHash
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

        class LedgerEntry < ModernTreasury::BaseModel
          # The LHS of the conditional.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # What the operator between the `field` and `value` is.
          sig { returns(String) }
          def direction
          end

          sig { params(_: String).returns(String) }
          def direction=(_)
          end

          # The RHS of the conditional.
          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

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

      class Conditions < ModernTreasury::BaseModel
        # The LHS of the conditional.
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        # What the operator between the `field` and `value` is.
        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        # The RHS of the conditional.
        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

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
