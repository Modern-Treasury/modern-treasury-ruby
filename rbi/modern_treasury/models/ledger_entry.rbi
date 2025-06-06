# typed: strong

module ModernTreasury
  module Models
    class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::LedgerEntry, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000. Can be any integer up to 36 digits.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      # transaction. A `credit` moves money from your account to someone else's. A
      # `debit` pulls money from someone else's account to your own. Note that wire,
      # rtp, and check payments will always be `credit`.
      sig { returns(ModernTreasury::TransactionDirection::TaggedSymbol) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The currency of the ledger account.
      sig { returns(String) }
      attr_accessor :ledger_account_currency

      # The currency exponent of the ledger account.
      sig { returns(Integer) }
      attr_accessor :ledger_account_currency_exponent

      # The ledger account that this ledger entry is associated with.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # Lock version of the ledger account. This can be passed when creating a ledger
      # transaction to only succeed if no ledger transactions have posted since the
      # given version. See our post about Designing the Ledgers API with Optimistic
      # Locking for more details.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :ledger_account_lock_version

      # The ledger transaction that this ledger entry is associated with.
      sig { returns(String) }
      attr_accessor :ledger_transaction_id

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

      # The pending, posted, and available balances for this ledger entry's ledger
      # account. The posted balance is the sum of all posted entries on the account. The
      # pending balance is the sum of all pending and posted entries on the account. The
      # available balance is the posted incoming entries minus the sum of the pending
      # and posted outgoing amounts. Please see
      # https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
      # details.
      sig do
        returns(
          T.nilable(ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances)
        )
      end
      attr_reader :resulting_ledger_account_balances

      sig do
        params(
          resulting_ledger_account_balances:
            T.nilable(
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::OrHash
            )
        ).void
      end
      attr_writer :resulting_ledger_account_balances

      # Equal to the state of the ledger transaction when the ledger entry was created.
      # One of `pending`, `posted`, or `archived`.
      sig { returns(ModernTreasury::LedgerEntry::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          amount: Integer,
          created_at: Time,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          discarded_at: T.nilable(Time),
          ledger_account_currency: String,
          ledger_account_currency_exponent: Integer,
          ledger_account_id: String,
          ledger_account_lock_version: T.nilable(Integer),
          ledger_transaction_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resulting_ledger_account_balances:
            T.nilable(
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::OrHash
            ),
          status: ModernTreasury::LedgerEntry::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000. Can be any integer up to 36 digits.
        amount:,
        created_at:,
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        direction:,
        discarded_at:,
        # The currency of the ledger account.
        ledger_account_currency:,
        # The currency exponent of the ledger account.
        ledger_account_currency_exponent:,
        # The ledger account that this ledger entry is associated with.
        ledger_account_id:,
        # Lock version of the ledger account. This can be passed when creating a ledger
        # transaction to only succeed if no ledger transactions have posted since the
        # given version. See our post about Designing the Ledgers API with Optimistic
        # Locking for more details.
        ledger_account_lock_version:,
        # The ledger transaction that this ledger entry is associated with.
        ledger_transaction_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # The pending, posted, and available balances for this ledger entry's ledger
        # account. The posted balance is the sum of all posted entries on the account. The
        # pending balance is the sum of all pending and posted entries on the account. The
        # available balance is the posted incoming entries minus the sum of the pending
        # and posted outgoing amounts. Please see
        # https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
        # details.
        resulting_ledger_account_balances:,
        # Equal to the state of the ledger transaction when the ledger entry was created.
        # One of `pending`, `posted`, or `archived`.
        status:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            created_at: Time,
            direction: ModernTreasury::TransactionDirection::TaggedSymbol,
            discarded_at: T.nilable(Time),
            ledger_account_currency: String,
            ledger_account_currency_exponent: Integer,
            ledger_account_id: String,
            ledger_account_lock_version: T.nilable(Integer),
            ledger_transaction_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            resulting_ledger_account_balances:
              T.nilable(
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances
              ),
            status: ModernTreasury::LedgerEntry::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class ResultingLedgerAccountBalances < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The available_balance is the sum of all posted inbound entries and pending
        # outbound entries. For credit normal, available_amount = posted_credits -
        # pending_debits; for debit normal, available_amount = posted_debits -
        # pending_credits.
        sig do
          returns(
            ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
          )
        end
        attr_reader :available_balance

        sig do
          params(
            available_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance::OrHash
          ).void
        end
        attr_writer :available_balance

        # The pending_balance is the sum of all pending and posted entries.
        sig do
          returns(
            ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
          )
        end
        attr_reader :pending_balance

        sig do
          params(
            pending_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance::OrHash
          ).void
        end
        attr_writer :pending_balance

        # The posted_balance is the sum of all posted entries.
        sig do
          returns(
            ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
          )
        end
        attr_reader :posted_balance

        sig do
          params(
            posted_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance::OrHash
          ).void
        end
        attr_writer :posted_balance

        # The pending, posted, and available balances for this ledger entry's ledger
        # account. The posted balance is the sum of all posted entries on the account. The
        # pending balance is the sum of all pending and posted entries on the account. The
        # available balance is the posted incoming entries minus the sum of the pending
        # and posted outgoing amounts. Please see
        # https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
        # details.
        sig do
          params(
            available_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance::OrHash,
            pending_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance::OrHash,
            posted_balance:
              ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The available_balance is the sum of all posted inbound entries and pending
          # outbound entries. For credit normal, available_amount = posted_credits -
          # pending_debits; for debit normal, available_amount = posted_debits -
          # pending_credits.
          available_balance:,
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
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
              pending_balance:
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
              posted_balance:
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
            }
          )
        end
        def to_hash
        end

        class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
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
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
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
                ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance,
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

      # Equal to the state of the ledger transaction when the ledger entry was created.
      # One of `pending`, `posted`, or `archived`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::LedgerEntry::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(:archived, ModernTreasury::LedgerEntry::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::LedgerEntry::Status::TaggedSymbol)
        POSTED =
          T.let(:posted, ModernTreasury::LedgerEntry::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::LedgerEntry::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
