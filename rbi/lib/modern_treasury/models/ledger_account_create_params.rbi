# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Symbol) }
      def normal_balance
      end

      sig { params(_: Symbol).returns(Symbol) }
      def normal_balance=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def currency_exponent
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def currency_exponent=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def ledger_account_category_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def ledger_account_category_ids=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: String).returns(String) }
      def ledgerable_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ledgerable_type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        currency:,
        ledger_id:,
        name:,
        normal_balance:,
        currency_exponent: nil,
        description: nil,
        ledger_account_category_ids: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: Symbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
