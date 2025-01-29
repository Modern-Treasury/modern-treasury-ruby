# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandler < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandler::Conditions)) }
      attr_accessor :conditions

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_id

      sig { returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate) }
      attr_accessor :ledger_transaction_template

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

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
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::LedgerEventHandler::Shape) }
      def to_h; end

      class Conditions < ModernTreasury::BaseModel
        Shape = T.type_alias { {field: String, operator: String, value: String} }

        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: String).void }
        def initialize(field:, operator:, value:); end

        sig { returns(ModernTreasury::Models::LedgerEventHandler::Conditions::Shape) }
        def to_h; end
      end

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry],
            status: T.nilable(String)
          }
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :effective_at

        sig do
          returns(T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry])
        end
        attr_accessor :ledger_entries

        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig do
          params(
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry],
            status: T.nilable(String)
          ).void
        end
        def initialize(description:, effective_at:, ledger_entries:, status:); end

        sig { returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::Shape) }
        def to_h; end

        class LedgerEntry < ModernTreasury::BaseModel
          Shape = T.type_alias { {amount: String, direction: String, ledger_account_id: String} }

          sig { returns(String) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :ledger_account_id

          sig { params(amount: String, direction: String, ledger_account_id: String).void }
          def initialize(amount:, direction:, ledger_account_id:); end

          sig do
            returns(ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate::LedgerEntry::Shape)
          end
          def to_h; end
        end
      end
    end
  end
end
