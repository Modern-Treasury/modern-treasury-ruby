# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateResponse < ModernTreasury::BaseModel
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

      # The description of the ledger account statement.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      def effective_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_lower_bound=(_)
      end

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      def effective_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_upper_bound=(_)
      end

      # The pending, posted, and available balances for this ledger account at the
      #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance) }
      def ending_balance
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def ending_balance=(_)
      end

      # The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      # Lock version of the ledger account at the time of statement generation.
      sig { returns(Integer) }
      def ledger_account_lock_version
      end

      sig { params(_: Integer).returns(Integer) }
      def ledger_account_lock_version=(_)
      end

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol) }
      def ledger_account_normal_balance
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::TaggedSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::TaggedSymbol)
      end
      def ledger_account_normal_balance=(_)
      end

      # The id of the ledger that this ledger account statement belongs to.
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

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The pending, posted, and available balances for this ledger account at the
      #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance) }
      def starting_balance
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def starting_balance=(_)
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
          created_at: Time,
          description: T.nilable(String),
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
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
              ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
              ledger_account_id: String,
              ledger_account_lock_version: Integer,
              ledger_account_normal_balance: ModernTreasury::Models::TransactionDirection::TaggedSymbol,
              ledger_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
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
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance) }
        def available_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def available_balance=(_)
        end

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance) }
        def pending_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance) }
        def posted_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def posted_balance=(_)
        end

        # The pending, posted, and available balances for this ledger account at the
        #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
          )
            .returns(T.attached_class)
        end
        def self.new(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
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

      class StartingBalance < ModernTreasury::BaseModel
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance) }
        def available_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def available_balance=(_)
        end

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance) }
        def pending_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance) }
        def posted_balance
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def posted_balance=(_)
        end

        # The pending, posted, and available balances for this ledger account at the
        #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
          )
            .returns(T.attached_class)
        end
        def self.new(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
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
