# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances) }
      attr_accessor :balances

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(String) }
      attr_accessor :ledger_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :normal_balance

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: Symbol,
          object: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        balances:,
        created_at:,
        description:,
        discarded_at:,
        ledger_id:,
        live_mode:,
        metadata:,
        name:,
        normal_balance:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
            created_at: Time,
            description: T.nilable(String),
            discarded_at: T.nilable(Time),
            ledger_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: String,
            normal_balance: Symbol,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Balances < ModernTreasury::BaseModel
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance) }
        attr_accessor :available_balance

        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance) }
        attr_accessor :pending_balance

        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance) }
        attr_accessor :posted_balance

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override.returns(
            {
              available_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
            }
          )
        end
        def to_hash
        end

        class AvailableBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
            )
          end
          def to_hash
          end
        end

        class PendingBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
            )
          end
          def to_hash
          end
        end

        class PostedBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
