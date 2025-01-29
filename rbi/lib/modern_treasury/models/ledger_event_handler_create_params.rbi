# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
            name: String,
            conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
            description: T.nilable(String),
            ledger_id: String,
            metadata: T.nilable(
              T::Hash[Symbol,
                      String]
            ),
            variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate) }
      attr_accessor :ledger_transaction_template

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions)) }
      attr_accessor :conditions

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable])) }
      attr_accessor :variables

      sig do
        params(
          ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
          name: String,
          conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        ledger_transaction_template:,
        name:,
        conditions: nil,
        description: nil,
        ledger_id: nil,
        metadata: nil,
        variables: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::Shape) }
      def to_h; end

      class LedgerTransactionTemplate < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry],
            status: T.nilable(String)
          }
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :effective_at

        sig do
          returns(T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry])
        end
        attr_accessor :ledger_entries

        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig do
          params(
            description: T.nilable(String),
            effective_at: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry],
            status: T.nilable(String)
          ).void
        end
        def initialize(description:, effective_at:, ledger_entries:, status:); end

        sig do
          returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::Shape)
        end
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
            returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate::LedgerEntry::Shape)
          end
          def to_h; end
        end
      end

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

        sig { returns(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions::Shape) }
        def to_h; end
      end
    end
  end
end
