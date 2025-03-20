# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The pending, posted, and available balances for this ledger account category.
      #   The posted balance is the sum of all posted entries on the account. The pending
      #   balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances) }
      def balances
      end

      sig do
        params(_: T.any(ModernTreasury::Models::LedgerAccountCategory::Balances, ModernTreasury::Util::AnyHash))
          .returns(T.any(ModernTreasury::Models::LedgerAccountCategory::Balances, ModernTreasury::Util::AnyHash))
      end
      def balances=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The description of the ledger account category.
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

      # The id of the ledger that this account category belongs to.
      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The name of the ledger account category.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The normal balance of the ledger account category.
      sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
      def normal_balance
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::TaggedSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol)
      end
      def normal_balance=(_)
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
          normal_balance: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
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
        def available_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def available_balance=(_)
        end

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance) }
        def pending_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def posted_balance=(_)
        end

        # The pending, posted, and available balances for this ledger account category.
        #   The posted balance is the sum of all posted entries on the account. The pending
        #   balance is the sum of all pending and posted entries on the account. The
        #   available balance is the posted incoming entries minus the sum of the pending
        #   and posted outgoing amounts.
        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
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
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

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
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

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
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

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
