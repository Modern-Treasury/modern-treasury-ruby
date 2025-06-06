# typed: strong

module ModernTreasury
  module Models
    class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccount,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The pending, posted, and available balances for this ledger account. The posted
      # balance is the sum of all posted entries on the account. The pending balance is
      # the sum of all pending and posted entries on the account. The available balance
      # is the posted incoming entries minus the sum of the pending and posted outgoing
      # amounts.
      sig { returns(ModernTreasury::LedgerAccount::Balances) }
      attr_reader :balances

      sig do
        params(balances: ModernTreasury::LedgerAccount::Balances::OrHash).void
      end
      attr_writer :balances

      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The id of the ledger that this account belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # If the ledger account links to another object in Modern Treasury, the id will be
      # populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledgerable_id

      # If the ledger account links to another object in Modern Treasury, the type will
      # be populated here, otherwise null. The value is one of internal_account or
      # external_account.
      sig do
        returns(
          T.nilable(ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol)
        )
      end
      attr_accessor :ledgerable_type

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Lock version of the ledger account.
      sig { returns(Integer) }
      attr_accessor :lock_version

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the ledger account.
      sig { returns(String) }
      attr_accessor :name

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :normal_balance

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          balances: ModernTreasury::LedgerAccount::Balances::OrHash,
          created_at: Time,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          external_id: T.nilable(String),
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type:
            T.nilable(ModernTreasury::LedgerAccount::LedgerableType::OrSymbol),
          live_mode: T::Boolean,
          lock_version: Integer,
          metadata: T::Hash[Symbol, String],
          name: String,
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The pending, posted, and available balances for this ledger account. The posted
        # balance is the sum of all posted entries on the account. The pending balance is
        # the sum of all pending and posted entries on the account. The available balance
        # is the posted incoming entries minus the sum of the pending and posted outgoing
        # amounts.
        balances:,
        created_at:,
        # The description of the ledger account.
        description:,
        discarded_at:,
        # An optional user-defined 180 character unique identifier.
        external_id:,
        # The id of the ledger that this account belongs to.
        ledger_id:,
        # If the ledger account links to another object in Modern Treasury, the id will be
        # populated here, otherwise null.
        ledgerable_id:,
        # If the ledger account links to another object in Modern Treasury, the type will
        # be populated here, otherwise null. The value is one of internal_account or
        # external_account.
        ledgerable_type:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Lock version of the ledger account.
        lock_version:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # The name of the ledger account.
        name:,
        # The normal balance of the ledger account.
        normal_balance:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances: ModernTreasury::LedgerAccount::Balances,
            created_at: Time,
            description: T.nilable(String),
            discarded_at: T.nilable(Time),
            external_id: T.nilable(String),
            ledger_id: String,
            ledgerable_id: T.nilable(String),
            ledgerable_type:
              T.nilable(
                ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
              ),
            live_mode: T::Boolean,
            lock_version: Integer,
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

      class Balances < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccount::Balances,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The available_balance is the sum of all posted inbound entries and pending
        # outbound entries. For credit normal, available_amount = posted_credits -
        # pending_debits; for debit normal, available_amount = posted_debits -
        # pending_credits.
        sig do
          returns(ModernTreasury::LedgerAccount::Balances::AvailableBalance)
        end
        attr_reader :available_balance

        sig do
          params(
            available_balance:
              ModernTreasury::LedgerAccount::Balances::AvailableBalance::OrHash
          ).void
        end
        attr_writer :available_balance

        # The inclusive lower bound of the effective_at timestamp for the returned
        # balances.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at_lower_bound

        # The exclusive upper bound of the effective_at timestamp for the returned
        # balances.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at_upper_bound

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::LedgerAccount::Balances::PendingBalance) }
        attr_reader :pending_balance

        sig do
          params(
            pending_balance:
              ModernTreasury::LedgerAccount::Balances::PendingBalance::OrHash
          ).void
        end
        attr_writer :pending_balance

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::LedgerAccount::Balances::PostedBalance) }
        attr_reader :posted_balance

        sig do
          params(
            posted_balance:
              ModernTreasury::LedgerAccount::Balances::PostedBalance::OrHash
          ).void
        end
        attr_writer :posted_balance

        # The pending, posted, and available balances for this ledger account. The posted
        # balance is the sum of all posted entries on the account. The pending balance is
        # the sum of all pending and posted entries on the account. The available balance
        # is the posted incoming entries minus the sum of the pending and posted outgoing
        # amounts.
        sig do
          params(
            available_balance:
              ModernTreasury::LedgerAccount::Balances::AvailableBalance::OrHash,
            effective_at_lower_bound: T.nilable(Time),
            effective_at_upper_bound: T.nilable(Time),
            pending_balance:
              ModernTreasury::LedgerAccount::Balances::PendingBalance::OrHash,
            posted_balance:
              ModernTreasury::LedgerAccount::Balances::PostedBalance::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The available_balance is the sum of all posted inbound entries and pending
          # outbound entries. For credit normal, available_amount = posted_credits -
          # pending_debits; for debit normal, available_amount = posted_debits -
          # pending_credits.
          available_balance:,
          # The inclusive lower bound of the effective_at timestamp for the returned
          # balances.
          effective_at_lower_bound:,
          # The exclusive upper bound of the effective_at timestamp for the returned
          # balances.
          effective_at_upper_bound:,
          # The pending_balance is the sum of all pending and posted entries.
          pending_balance:,
          # The posted_balance is the sum of all posted entries.
          posted_balance:
        )
        end

        sig do
          override.returns(
            {
              available_balance:
                ModernTreasury::LedgerAccount::Balances::AvailableBalance,
              effective_at_lower_bound: T.nilable(Time),
              effective_at_upper_bound: T.nilable(Time),
              pending_balance:
                ModernTreasury::LedgerAccount::Balances::PendingBalance,
              posted_balance:
                ModernTreasury::LedgerAccount::Balances::PostedBalance
            }
          )
        end
        def to_hash
        end

        class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::LedgerAccount::Balances::AvailableBalance,
                ModernTreasury::Internal::AnyHash
              )
            end

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
          # outbound entries. For credit normal, available_amount = posted_credits -
          # pending_debits; for debit normal, available_amount = posted_debits -
          # pending_credits.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            credits:,
            # The currency of the ledger account.
            currency:,
            # The currency exponent of the ledger account.
            currency_exponent:,
            debits:
          )
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

        class PendingBalance < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::LedgerAccount::Balances::PendingBalance,
                ModernTreasury::Internal::AnyHash
              )
            end

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
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            credits:,
            # The currency of the ledger account.
            currency:,
            # The currency exponent of the ledger account.
            currency_exponent:,
            debits:
          )
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

        class PostedBalance < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::LedgerAccount::Balances::PostedBalance,
                ModernTreasury::Internal::AnyHash
              )
            end

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
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            credits:,
            # The currency of the ledger account.
            currency:,
            # The currency exponent of the ledger account.
            currency_exponent:,
            debits:
          )
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

      # If the ledger account links to another object in Modern Treasury, the type will
      # be populated here, otherwise null. The value is one of internal_account or
      # external_account.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LedgerAccount::LedgerableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTERPARTY =
          T.let(
            :counterparty,
            ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNT =
          T.let(
            :external_account,
            ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
          )
        INTERNAL_ACCOUNT =
          T.let(
            :internal_account,
            ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
          )
        VIRTUAL_ACCOUNT =
          T.let(
            :virtual_account,
            ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerAccount::LedgerableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
