# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatement < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountStatement,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the ledger account statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The inclusive lower bound of the effective_at timestamp of the ledger entries to
      # be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_lower_bound

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      # be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      # The pending, posted, and available balances for this ledger account at the
      # `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      # on the account. The pending balance is the sum of all pending and posted entries
      # on the account. The available balance is the posted incoming entries minus the
      # sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::LedgerBalances) }
      attr_reader :ending_balance

      sig do
        params(ending_balance: ModernTreasury::LedgerBalances::OrHash).void
      end
      attr_writer :ending_balance

      # The id of the ledger account whose ledger entries are queried against, and its
      # balances are computed as a result.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # Lock version of the ledger account at the time of statement generation.
      sig { returns(Integer) }
      attr_accessor :ledger_account_lock_version

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :ledger_account_normal_balance

      # The id of the ledger that this ledger account statement belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # The pending, posted, and available balances for this ledger account at the
      # `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      # on the account. The pending balance is the sum of all pending and posted entries
      # on the account. The available balance is the posted incoming entries minus the
      # sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::LedgerBalances) }
      attr_reader :starting_balance

      sig do
        params(starting_balance: ModernTreasury::LedgerBalances::OrHash).void
      end
      attr_writer :starting_balance

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ending_balance: ModernTreasury::LedgerBalances::OrHash,
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance:
            ModernTreasury::TransactionDirection::OrSymbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: ModernTreasury::LedgerBalances::OrHash,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # The description of the ledger account statement.
        description:,
        # The inclusive lower bound of the effective_at timestamp of the ledger entries to
        # be included in the ledger account statement.
        effective_at_lower_bound:,
        # The exclusive upper bound of the effective_at timestamp of the ledger entries to
        # be included in the ledger account statement.
        effective_at_upper_bound:,
        # The pending, posted, and available balances for this ledger account at the
        # `effective_at_upper_bound`. The posted balance is the sum of all posted entries
        # on the account. The pending balance is the sum of all pending and posted entries
        # on the account. The available balance is the posted incoming entries minus the
        # sum of the pending and posted outgoing amounts.
        ending_balance:,
        # The id of the ledger account whose ledger entries are queried against, and its
        # balances are computed as a result.
        ledger_account_id:,
        # Lock version of the ledger account at the time of statement generation.
        ledger_account_lock_version:,
        # The normal balance of the ledger account.
        ledger_account_normal_balance:,
        # The id of the ledger that this ledger account statement belongs to.
        ledger_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # The pending, posted, and available balances for this ledger account at the
        # `effective_at_lower_bound`. The posted balance is the sum of all posted entries
        # on the account. The pending balance is the sum of all pending and posted entries
        # on the account. The available balance is the posted incoming entries minus the
        # sum of the pending and posted outgoing amounts.
        starting_balance:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time,
            ending_balance: ModernTreasury::LedgerBalances,
            ledger_account_id: String,
            ledger_account_lock_version: Integer,
            ledger_account_normal_balance:
              ModernTreasury::TransactionDirection::TaggedSymbol,
            ledger_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            starting_balance: ModernTreasury::LedgerBalances,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
