# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementRetrieveResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # The description of the ledger account statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_lower_bound

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      # The pending, posted, and available balances for this ledger account at the
      #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance) }
      attr_reader :ending_balance

      sig do
        params(
          ending_balance: T.any(
            ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance,
            ModernTreasury::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :ending_balance

      # The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # Lock version of the ledger account at the time of statement generation.
      sig { returns(Integer) }
      attr_accessor :ledger_account_lock_version

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
      attr_accessor :ledger_account_normal_balance

      # The id of the ledger that this ledger account statement belongs to.
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

      sig { returns(String) }
      attr_accessor :object

      # The pending, posted, and available balances for this ledger account at the
      #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance) }
      attr_reader :starting_balance

      sig do
        params(
          starting_balance: T.any(
            ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance,
            ModernTreasury::Util::AnyHash
          )
        )
          .void
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
          ending_balance: T.any(
            ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance,
            ModernTreasury::Util::AnyHash
          ),
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: T.any(
            ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance,
            ModernTreasury::Util::AnyHash
          ),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        description:,
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ending_balance:,
        ledger_account_id:,
        ledger_account_lock_version:,
        ledger_account_normal_balance:,
        ledger_id:,
        live_mode:,
        metadata:,
        object:,
        starting_balance:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              description: T.nilable(String),
              effective_at_lower_bound: Time,
              effective_at_upper_bound: Time,
              ending_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance,
              ledger_account_id: String,
              ledger_account_lock_version: Integer,
              ledger_account_normal_balance: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
              ledger_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              starting_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class EndingBalance < ModernTreasury::BaseModel
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance) }
        attr_reader :available_balance

        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :available_balance

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance) }
        attr_reader :pending_balance

        sig do
          params(
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :pending_balance

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance) }
        attr_reader :posted_balance

        sig do
          params(
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :posted_balance

        # The pending, posted, and available balances for this ledger account at the
        #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            ),
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            ),
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
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
                available_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance
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

      class StartingBalance < ModernTreasury::BaseModel
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance) }
        attr_reader :available_balance

        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :available_balance

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance) }
        attr_reader :pending_balance

        sig do
          params(
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :pending_balance

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance) }
        attr_reader :posted_balance

        sig do
          params(
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :posted_balance

        # The pending, posted, and available balances for this ledger account at the
        #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        sig do
          params(
            available_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            ),
            pending_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            ),
            posted_balance: T.any(
              ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
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
                available_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance
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
