# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountCategory,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The pending, posted, and available balances for this ledger account category.
      # The posted balance is the sum of all posted entries on the account. The pending
      # balance is the sum of all pending and posted entries on the account. The
      # available balance is the posted incoming entries minus the sum of the pending
      # and posted outgoing amounts.
      sig { returns(ModernTreasury::LedgerBalances) }
      attr_reader :balances

      sig { params(balances: ModernTreasury::LedgerBalances::OrHash).void }
      attr_writer :balances

      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the ledger account category.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The id of the ledger that this account category belongs to.
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

      # The name of the ledger account category.
      sig { returns(String) }
      attr_accessor :name

      # The normal balance of the ledger account category.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :normal_balance

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          balances: ModernTreasury::LedgerBalances::OrHash,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          external_id: T.nilable(String),
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The pending, posted, and available balances for this ledger account category.
        # The posted balance is the sum of all posted entries on the account. The pending
        # balance is the sum of all pending and posted entries on the account. The
        # available balance is the posted incoming entries minus the sum of the pending
        # and posted outgoing amounts.
        balances:,
        created_at:,
        # The description of the ledger account category.
        description:,
        discarded_at:,
        # An optional user-defined 180 character unique identifier.
        external_id:,
        # The id of the ledger that this account category belongs to.
        ledger_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # The name of the ledger account category.
        name:,
        # The normal balance of the ledger account category.
        normal_balance:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances: ModernTreasury::LedgerBalances,
            created_at: Time,
            description: T.nilable(String),
            discarded_at: T.nilable(Time),
            external_id: T.nilable(String),
            ledger_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            name: String,
            normal_balance: ModernTreasury::TransactionDirection::TaggedSymbol,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
