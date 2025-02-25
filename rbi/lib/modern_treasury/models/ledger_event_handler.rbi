# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandler < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions)) }
      def conditions
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions))
          .returns(T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions))
      end
      def conditions=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_id=(_)
      end

      sig { returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate) }
      def ledger_transaction_template
      end

      sig do
        params(_: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate)
          .returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate)
      end
      def ledger_transaction_template=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
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
        )
          .void
      end
      def initialize(
        id:,
        conditions:,
        created_at:,
        description:,
        discarded_at:,
        ledger_id:,
        ledger_transaction_template:,
        live_mode:,
        metadata:,
        name:,
        object:,
        updated_at:,
        variables:
      )
      end

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
      def to_hash
      end

      class Conditions < ModernTreasury::BaseModel
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(field: String, operator: String, value: String).void }
        def initialize(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: String}) }
        def to_hash
        end
      end

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def effective_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def effective_at=(_)
        end

        sig { returns(T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry])
        end
        def ledger_entries=(_)
        end

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
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry],
            status: T.nilable(String)
          )
            .void
        end
        def initialize(description:, effective_at:, ledger_entries:, status:)
        end

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
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(String) }
          def direction
          end

          sig { params(_: String).returns(String) }
          def direction=(_)
          end

          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          sig { params(amount: String, direction: String, ledger_account_id: String).void }
          def initialize(amount:, direction:, ledger_account_id:)
          end

          sig { override.returns({amount: String, direction: String, ledger_account_id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
