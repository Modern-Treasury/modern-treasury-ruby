# typed: strong

module ModernTreasury
  module Models
    module LedgerTransactions
      class LedgerTransactionVersion < ModernTreasury::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        sig { returns(Time) }
        attr_accessor :effective_at

        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        # purposes.
        sig { returns(Date) }
        attr_accessor :effective_date

        # A unique string to represent the ledger transaction. Only one pending or posted
        # ledger transaction may have this ID in the ledger.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]) }
        attr_accessor :ledger_entries

        # The ID of the ledger this ledger transaction belongs to.
        sig { returns(String) }
        attr_accessor :ledger_id

        # The ID of the ledger transaction
        sig { returns(String) }
        attr_accessor :ledger_transaction_id

        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the id will be populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledgerable_id

        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          )
        end
        attr_accessor :ledgerable_type

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

        # The ID of the ledger transaction that this ledger transaction partially posts.
        sig { returns(T.nilable(String)) }
        attr_accessor :partially_posts_ledger_transaction_id

        # The time on which the ledger transaction posted. This is null if the ledger
        # transaction is pending.
        sig { returns(T.nilable(Time)) }
        attr_accessor :posted_at

        # The ID of the ledger transaction that reversed this ledger transaction.
        sig { returns(T.nilable(String)) }
        attr_accessor :reversed_by_ledger_transaction_id

        # The ID of the original ledger transaction. that this ledger transaction
        # reverses.
        sig { returns(T.nilable(String)) }
        attr_accessor :reverses_ledger_transaction_id

        # One of `pending`, `posted`, or `archived`.
        sig { returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol) }
        attr_accessor :status

        # Version number of the ledger transaction.
        sig { returns(Integer) }
        attr_accessor :version

        sig do
          params(
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: T.nilable(String),
            ledger_entries: T::Array[
              T.any(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry,
                ModernTreasury::Internal::AnyHash
              )
            ],
            ledger_id: String,
            ledger_transaction_id: String,
            ledgerable_id: T.nilable(String),
            ledgerable_type: T.nilable(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::OrSymbol),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            partially_posts_ledger_transaction_id: T.nilable(String),
            posted_at: T.nilable(Time),
            reversed_by_ledger_transaction_id: T.nilable(String),
            reverses_ledger_transaction_id: T.nilable(String),
            status: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::OrSymbol,
            version: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # An optional description for internal use.
          description:,
          # The timestamp (ISO8601 format) at which the ledger transaction happened for
          # reporting purposes.
          effective_at:,
          # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          # purposes.
          effective_date:,
          # A unique string to represent the ledger transaction. Only one pending or posted
          # ledger transaction may have this ID in the ledger.
          external_id:,
          # An array of ledger entry objects.
          ledger_entries:,
          # The ID of the ledger this ledger transaction belongs to.
          ledger_id:,
          # The ID of the ledger transaction
          ledger_transaction_id:,
          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the id will be populated here, otherwise null.
          ledgerable_id:,
          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
          ledgerable_type:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata:,
          object:,
          # The ID of the ledger transaction that this ledger transaction partially posts.
          partially_posts_ledger_transaction_id:,
          # The time on which the ledger transaction posted. This is null if the ledger
          # transaction is pending.
          posted_at:,
          # The ID of the ledger transaction that reversed this ledger transaction.
          reversed_by_ledger_transaction_id:,
          # The ID of the original ledger transaction. that this ledger transaction
          # reverses.
          reverses_ledger_transaction_id:,
          # One of `pending`, `posted`, or `archived`.
          status:,
          # Version number of the ledger transaction.
          version:
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: T.nilable(String),
                ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry],
                ledger_id: String,
                ledger_transaction_id: String,
                ledgerable_id: T.nilable(String),
                ledgerable_type: T.nilable(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
                ),
                live_mode: T::Boolean,
                metadata: T::Hash[Symbol, String],
                object: String,
                partially_posts_ledger_transaction_id: T.nilable(String),
                posted_at: T.nilable(Time),
                reversed_by_ledger_transaction_id: T.nilable(String),
                reverses_ledger_transaction_id: T.nilable(String),
                status: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol,
                version: Integer
              }
            )
        end
        def to_hash; end

        class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
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
          sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
          attr_accessor :direction

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
              T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              )
            )
          end
          attr_reader :resulting_ledger_account_balances

          sig do
            params(
              resulting_ledger_account_balances: T.nilable(
                T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances,
                  ModernTreasury::Internal::AnyHash
                )
              )
            )
              .void
          end
          attr_writer :resulting_ledger_account_balances

          # Equal to the state of the ledger transaction when the ledger entry was created.
          # One of `pending`, `posted`, or `archived`.
          sig do
            returns(
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            params(
              id: String,
              amount: Integer,
              created_at: Time,
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              ledger_account_currency: String,
              ledger_account_currency_exponent: Integer,
              ledger_account_id: String,
              ledger_account_lock_version: T.nilable(Integer),
              ledger_transaction_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              resulting_ledger_account_balances: T.nilable(
                T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances,
                  ModernTreasury::Internal::AnyHash
                )
              ),
              status: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::OrSymbol
            )
              .returns(T.attached_class)
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
            status:
          ); end
          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  created_at: Time,
                  direction: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
                  ledger_account_currency: String,
                  ledger_account_currency_exponent: Integer,
                  ledger_account_id: String,
                  ledger_account_lock_version: T.nilable(Integer),
                  ledger_transaction_id: String,
                  live_mode: T::Boolean,
                  metadata: T::Hash[Symbol, String],
                  object: String,
                  resulting_ledger_account_balances: T.nilable(
                    ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
                  ),
                  status: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
                }
              )
          end
          def to_hash; end

          class ResultingLedgerAccountBalances < ModernTreasury::Internal::Type::BaseModel
            # The available_balance is the sum of all posted inbound entries and pending
            # outbound entries. For credit normal, available_amount = posted_credits -
            # pending_debits; for debit normal, available_amount = posted_debits -
            # pending_credits.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
              )
            end
            attr_reader :available_balance

            sig do
              params(
                available_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                  ModernTreasury::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :available_balance

            # The pending_balance is the sum of all pending and posted entries.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
              )
            end
            attr_reader :pending_balance

            sig do
              params(
                pending_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                  ModernTreasury::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :pending_balance

            # The posted_balance is the sum of all posted entries.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
            end
            attr_reader :posted_balance

            sig do
              params(
                posted_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance,
                  ModernTreasury::Internal::AnyHash
                )
              )
                .void
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
                available_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                  ModernTreasury::Internal::AnyHash
                ),
                pending_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                  ModernTreasury::Internal::AnyHash
                ),
                posted_balance: T.any(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance,
                  ModernTreasury::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
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
            ); end
            sig do
              override
                .returns(
                  {
                    available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                    pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                    posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
                  }
                )
            end
            def to_hash; end

            class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
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
                )
                  .returns(T.attached_class)
              end
              def self.new(
                amount:,
                credits:,
                # The currency of the ledger account.
                currency:,
                # The currency exponent of the ledger account.
                currency_exponent:,
                debits:
              ); end
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
              def to_hash; end
            end

            class PendingBalance < ModernTreasury::Internal::Type::BaseModel
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
              def self.new(
                amount:,
                credits:,
                # The currency of the ledger account.
                currency:,
                # The currency exponent of the ledger account.
                currency_exponent:,
                debits:
              ); end
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
              def to_hash; end
            end

            class PostedBalance < ModernTreasury::Internal::Type::BaseModel
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
              def self.new(
                amount:,
                credits:,
                # The currency of the ledger account.
                currency:,
                # The currency exponent of the ledger account.
                currency_exponent:,
                debits:
              ); end
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
              def to_hash; end
            end
          end

          # Equal to the state of the ledger transaction when the ledger entry was created.
          # One of `pending`, `posted`, or `archived`.
          module Status
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        module LedgerableType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPECTED_PAYMENT =
            T.let(
              :expected_payment,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          INCOMING_PAYMENT_DETAIL =
            T.let(
              :incoming_payment_detail,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          PAPER_ITEM =
            T.let(
              :paper_item,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          PAYMENT_ORDER =
            T.let(
              :payment_order,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          RETURN =
            T.let(
              :return,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          REVERSAL =
            T.let(
              :reversal,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # One of `pending`, `posted`, or `archived`.
        module Status
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARCHIVED =
            T.let(
              :archived,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol
            )
          POSTED =
            T.let(:posted, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end

    LedgerTransactionVersion = LedgerTransactions::LedgerTransactionVersion
  end
end
