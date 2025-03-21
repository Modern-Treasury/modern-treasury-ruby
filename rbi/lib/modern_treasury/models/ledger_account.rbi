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
        params(_: T.any(ModernTreasury::Models::LedgerAccount::Balances, ModernTreasury::Util::AnyHash))
          .returns(T.any(ModernTreasury::Models::LedgerAccount::Balances, ModernTreasury::Util::AnyHash))
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
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol)) }
      def ledgerable_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol))
      end
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
          balances: T.any(ModernTreasury::Models::LedgerAccount::Balances, ModernTreasury::Util::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type: T.nilable(ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol),
          live_mode: T::Boolean,
          lock_version: Integer,
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
              ledgerable_type: T.nilable(ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol),
              live_mode: T::Boolean,
              lock_version: Integer,
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
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance) }
        def available_balance
        end

        sig do
          params(
            _: T.any(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance, ModernTreasury::Util::AnyHash)
          )
            .returns(
              T.any(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance, ModernTreasury::Util::AnyHash)
            )
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
          params(
            _: T.any(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance, ModernTreasury::Util::AnyHash)
          )
            .returns(
              T.any(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance, ModernTreasury::Util::AnyHash)
            )
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(
            _: T.any(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance, ModernTreasury::Util::AnyHash)
          )
            .returns(
              T.any(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance, ModernTreasury::Util::AnyHash)
            )
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
            available_balance: T.any(ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance, ModernTreasury::Util::AnyHash),
            effective_at_lower_bound: T.nilable(Time),
            effective_at_upper_bound: T.nilable(Time),
            pending_balance: T.any(ModernTreasury::Models::LedgerAccount::Balances::PendingBalance, ModernTreasury::Util::AnyHash),
            posted_balance: T.any(ModernTreasury::Models::LedgerAccount::Balances::PostedBalance, ModernTreasury::Util::AnyHash)
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
      module LedgerableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol) }

        COUNTERPARTY = T.let(:counterparty, ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol)
        EXTERNAL_ACCOUNT =
          T.let(:external_account, ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol)
        INTERNAL_ACCOUNT =
          T.let(:internal_account, ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol)
        VIRTUAL_ACCOUNT =
          T.let(:virtual_account, ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LedgerAccount::LedgerableType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
