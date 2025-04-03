# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The pending, posted, and available balances for this ledger account category.
      #   The posted balance is the sum of all posted entries on the account. The pending
      #   balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances) }
      attr_reader :balances

      sig do
        params(
          balances: T.any(ModernTreasury::Models::LedgerAccountCategory::Balances, ModernTreasury::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :balances

      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the ledger account category.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The id of the ledger that this account category belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the ledger account category.
      sig { returns(String) }
      attr_accessor :name

      # The normal balance of the ledger account category.
      sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
      attr_accessor :normal_balance

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          balances: T.any(ModernTreasury::Models::LedgerAccountCategory::Balances, ModernTreasury::Internal::Util::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
          object: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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
              normal_balance: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
              object: String,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class Balances < ModernTreasury::BaseModel
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance) }
        attr_reader :available_balance

        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :available_balance

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance) }
        attr_reader :pending_balance

        sig do
          params(
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :pending_balance

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance) }
        attr_reader :posted_balance

        sig do
          params(
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :posted_balance

        # The pending, posted, and available balances for this ledger account category.
        #   The posted balance is the sum of all posted entries on the account. The pending
        #   balance is the sum of all pending and posted entries on the account. The
        #   available balance is the posted incoming entries minus the sum of the pending
        #   and posted outgoing amounts.
        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
              ModernTreasury::Internal::Util::AnyHash
            ),
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
              ModernTreasury::Internal::Util::AnyHash
            ),
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
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

          # The currency of the ledger account.
          sig { returns(String) }
          attr_accessor :currency

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          # The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
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

          # The currency of the ledger account.
          sig { returns(String) }
          attr_accessor :currency

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          # The pending_balance is the sum of all pending and posted entries.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
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

          # The currency of the ledger account.
          sig { returns(String) }
          attr_accessor :currency

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          # The posted_balance is the sum of all posted entries.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
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
