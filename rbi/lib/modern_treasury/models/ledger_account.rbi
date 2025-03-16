# typed: strong

module ModernTreasury
  module Models
    class LedgerAccount < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The pending, posted, and available balances for this ledger account. The posted
      #   balance is the sum of all posted entries on the account. The pending balance is
      #   the sum of all pending and posted entries on the account. The available balance
      #   is the posted incoming entries minus the sum of the pending and posted outgoing
      #   amounts.
      sig { returns(ModernTreasury::Models::LedgerAccount::Balances) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccount::Balances)
          .returns(ModernTreasury::Models::LedgerAccount::Balances)
      end
      def balances=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The description of the ledger account.
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

      # The id of the ledger that this account belongs to.
      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # If the ledger account links to another object in Modern Treasury, the id will be
      #   populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledgerable_id=(_)
      end

      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def ledgerable_type=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Lock version of the ledger account.
      sig { returns(Integer) }
      def lock_version
      end

      sig { params(_: Integer).returns(Integer) }
      def lock_version=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The name of the ledger account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The normal balance of the ledger account.
      sig { returns(Symbol) }
      def normal_balance
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          balances: ModernTreasury::Models::LedgerAccount::Balances,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type: T.nilable(Symbol),
          live_mode: T::Boolean,
          lock_version: Integer,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: Symbol,
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
        ledgerable_id:,
        ledgerable_type:,
        live_mode:,
        lock_version:,
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
              balances: ModernTreasury::Models::LedgerAccount::Balances,
              created_at: Time,
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              ledger_id: String,
              ledgerable_id: T.nilable(String),
              ledgerable_type: T.nilable(Symbol),
              live_mode: T::Boolean,
              lock_version: Integer,
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
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance) }
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance)
        end
        def available_balance=(_)
        end

        # The inclusive lower bound of the effective_at timestamp for the returned
        #   balances.
        sig { returns(T.nilable(Time)) }
        def effective_at_lower_bound
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_at_lower_bound=(_)
        end

        # The exclusive upper bound of the effective_at timestamp for the returned
        #   balances.
        sig { returns(T.nilable(Time)) }
        def effective_at_upper_bound
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_at_upper_bound=(_)
        end

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance) }
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance)
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance)
            .returns(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance)
        end
        def posted_balance=(_)
        end

        # The pending, posted, and available balances for this ledger account. The posted
        #   balance is the sum of all posted entries on the account. The pending balance is
        #   the sum of all pending and posted entries on the account. The available balance
        #   is the posted incoming entries minus the sum of the pending and posted outgoing
        #   amounts.
        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance,
            effective_at_lower_bound: T.nilable(Time),
            effective_at_upper_bound: T.nilable(Time),
            pending_balance: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance
          )
            .returns(T.attached_class)
        end
        def self.new(
          available_balance:,
          effective_at_lower_bound:,
          effective_at_upper_bound:,
          pending_balance:,
          posted_balance:
        )
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance,
                effective_at_lower_bound: T.nilable(Time),
                effective_at_upper_bound: T.nilable(Time),
                pending_balance: ModernTreasury::Models::LedgerAccount::Balances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccount::Balances::PostedBalance
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

      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      class LedgerableType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account
      end
    end
  end
end
