# typed: strong

module ModernTreasury
  module Models
    module LedgerTransactions
      class LedgerTransactionVersion < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(Time) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        # A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_id=(_)
        end

        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry])
        end
        def ledger_entries=(_)
        end

        # The ID of the ledger this ledger transaction belongs to.
        sig { returns(String) }
        def ledger_id
        end

        sig { params(_: String).returns(String) }
        def ledger_id=(_)
        end

        # The ID of the ledger transaction
        sig { returns(String) }
        def ledger_transaction_id
        end

        sig { params(_: String).returns(String) }
        def ledger_transaction_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ledgerable_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          )
        end
        def ledgerable_type
        end

        sig do
          params(
            _: T.nilable(
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
            )
          )
            .returns(
              T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
              )
            )
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

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The ID of the ledger transaction that this ledger transaction partially posts.
        sig { returns(T.nilable(String)) }
        def partially_posts_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def partially_posts_ledger_transaction_id=(_)
        end

        # The time on which the ledger transaction posted. This is null if the ledger
        #   transaction is pending.
        sig { returns(T.nilable(Time)) }
        def posted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def posted_at=(_)
        end

        # The ID of the ledger transaction that reversed this ledger transaction.
        sig { returns(T.nilable(String)) }
        def reversed_by_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reversed_by_ledger_transaction_id=(_)
        end

        # The ID of the original ledger transaction. that this ledger transaction
        #   reverses.
        sig { returns(T.nilable(String)) }
        def reverses_ledger_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reverses_ledger_transaction_id=(_)
        end

        # One of `pending`, `posted`, or `archived`.
        sig { returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol)
            .returns(ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # Version number of the ledger transaction.
        sig { returns(Integer) }
        def version
        end

        sig { params(_: Integer).returns(Integer) }
        def version=(_)
        end

        sig do
          params(
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
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          description:,
          effective_at:,
          effective_date:,
          external_id:,
          ledger_entries:,
          ledger_id:,
          ledger_transaction_id:,
          ledgerable_id:,
          ledgerable_type:,
          live_mode:,
          metadata:,
          object:,
          partially_posts_ledger_transaction_id:,
          posted_at:,
          reversed_by_ledger_transaction_id:,
          reverses_ledger_transaction_id:,
          status:,
          version:
        )
        end

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
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000. Can be any integer up to 36 digits.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
          def direction
          end

          sig do
            params(_: ModernTreasury::Models::TransactionDirection::TaggedSymbol)
              .returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol)
          end
          def direction=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def ledger_account_currency
          end

          sig { params(_: String).returns(String) }
          def ledger_account_currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def ledger_account_currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def ledger_account_currency_exponent=(_)
          end

          # The ledger account that this ledger entry is associated with.
          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          # Lock version of the ledger account. This can be passed when creating a ledger
          #   transaction to only succeed if no ledger transactions have posted since the
          #   given version. See our post about Designing the Ledgers API with Optimistic
          #   Locking for more details.
          sig { returns(T.nilable(Integer)) }
          def ledger_account_lock_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ledger_account_lock_version=(_)
          end

          # The ledger transaction that this ledger entry is associated with.
          sig { returns(String) }
          def ledger_transaction_id
          end

          sig { params(_: String).returns(String) }
          def ledger_transaction_id=(_)
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

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          # The pending, posted, and available balances for this ledger entry's ledger
          #   account. The posted balance is the sum of all posted entries on the account. The
          #   pending balance is the sum of all pending and posted entries on the account. The
          #   available balance is the posted incoming entries minus the sum of the pending
          #   and posted outgoing amounts. Please see
          #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
          #   details.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              )
            )
          end
          def resulting_ledger_account_balances
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
                )
              )
          end
          def resulting_ledger_account_balances=(_)
          end

          # Equal to the state of the ledger transaction when the ledger entry was created.
          #   One of `pending`, `posted`, or `archived`.
          sig do
            returns(
              ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
            )
          end
          def status
          end

          sig do
            params(
              _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
            )
              .returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
              )
          end
          def status=(_)
          end

          sig do
            params(
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
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            created_at:,
            direction:,
            ledger_account_currency:,
            ledger_account_currency_exponent:,
            ledger_account_id:,
            ledger_account_lock_version:,
            ledger_transaction_id:,
            live_mode:,
            metadata:,
            object:,
            resulting_ledger_account_balances:,
            status:
          )
          end

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
          def to_hash
          end

          class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
            # The available_balance is the sum of all posted inbound entries and pending
            #   outbound entries. For credit normal, available_amount = posted_credits -
            #   pending_debits; for debit normal, available_amount = posted_debits -
            #   pending_credits.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
              )
            end
            def available_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance
                )
            end
            def available_balance=(_)
            end

            # The pending_balance is the sum of all pending and posted entries.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
              )
            end
            def pending_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance
                )
            end
            def pending_balance=(_)
            end

            # The posted_balance is the sum of all posted entries.
            sig do
              returns(
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
            end
            def posted_balance
            end

            sig do
              params(
                _: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
                .returns(
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
                )
            end
            def posted_balance=(_)
            end

            # The pending, posted, and available balances for this ledger entry's ledger
            #   account. The posted balance is the sum of all posted entries on the account. The
            #   pending balance is the sum of all pending and posted entries on the account. The
            #   available balance is the posted incoming entries minus the sum of the pending
            #   and posted outgoing amounts. Please see
            #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
            #   details.
            sig do
              params(
                available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              )
                .returns(T.attached_class)
            end
            def self.new(available_balance:, pending_balance:, posted_balance:)
            end

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

          # Equal to the state of the ledger transaction when the ledger entry was created.
          #   One of `pending`, `posted`, or `archived`.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status::TaggedSymbol
                )
              end

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
          end
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        module LedgerableType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType::TaggedSymbol
              )
            end

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
        end

        # One of `pending`, `posted`, or `archived`.
        module Status
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status::TaggedSymbol) }

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
        end
      end
    end

    LedgerTransactionVersion = LedgerTransactions::LedgerTransactionVersion
  end
end
