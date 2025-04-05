# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerEntries#retrieve
    class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute direction
      #   One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_account_currency
      #   The currency of the ledger account.
      #
      #   @return [String]
      required :ledger_account_currency, String

      # @!attribute ledger_account_currency_exponent
      #   The currency exponent of the ledger account.
      #
      #   @return [Integer]
      required :ledger_account_currency_exponent, Integer

      # @!attribute ledger_account_id
      #   The ledger account that this ledger entry is associated with.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Lock version of the ledger account. This can be passed when creating a ledger
      #   transaction to only succeed if no ledger transactions have posted since the
      #   given version. See our post about Designing the Ledgers API with Optimistic
      #   Locking for more details.
      #
      #   @return [Integer, nil]
      required :ledger_account_lock_version, Integer, nil?: true

      # @!attribute ledger_transaction_id
      #   The ledger transaction that this ledger entry is associated with.
      #
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute resulting_ledger_account_balances
      #   The pending, posted, and available balances for this ledger entry's ledger
      #   account. The posted balance is the sum of all posted entries on the account. The
      #   pending balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts. Please see
      #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
      #   details.
      #
      #   @return [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances, nil]
      required :resulting_ledger_account_balances,
               -> { ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances },
               nil?: true

      # @!attribute status
      #   Equal to the state of the ledger transaction when the ledger entry was created.
      #   One of `pending`, `posted`, or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerEntry::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerEntry::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param discarded_at [Time, nil]
      #   # @param ledger_account_currency [String]
      #   # @param ledger_account_currency_exponent [Integer]
      #   # @param ledger_account_id [String]
      #   # @param ledger_account_lock_version [Integer, nil]
      #   # @param ledger_transaction_id [String]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param resulting_ledger_account_balances [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances, nil]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerEntry::Status]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     created_at:,
      #     direction:,
      #     discarded_at:,
      #     ledger_account_currency:,
      #     ledger_account_currency_exponent:,
      #     ledger_account_id:,
      #     ledger_account_lock_version:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     resulting_ledger_account_balances:,
      #     status:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # @see ModernTreasury::Models::LedgerEntry#resulting_ledger_account_balances
      class ResultingLedgerAccountBalances < ModernTreasury::Internal::Type::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance }

        # @!parse
        #   # The pending, posted, and available balances for this ledger entry's ledger
        #   # account. The posted balance is the sum of all posted entries on the account. The
        #   # pending balance is the sum of all pending and posted entries on the account. The
        #   # available balance is the posted incoming entries minus the sum of the pending
        #   # and posted outgoing amounts. Please see
        #   # https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
        #   # details.
        #   #
        #   # @param available_balance [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance]
        #   # @param pending_balance [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance]
        #   # @param posted_balance [ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance]
        #   #
        #   def initialize(available_balance:, pending_balance:, posted_balance:, **) = super

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

        # @see ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances#available_balance
        class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
          #
          #   @return [Integer]
          required :debits, Integer

          # @!parse
          #   # The available_balance is the sum of all posted inbound entries and pending
          #   # outbound entries. For credit normal, available_amount = posted_credits -
          #   # pending_debits; for debit normal, available_amount = posted_debits -
          #   # pending_credits.
          #   #
          #   # @param amount [Integer]
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end

        # @see ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances#pending_balance
        class PendingBalance < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
          #
          #   @return [Integer]
          required :debits, Integer

          # @!parse
          #   # The pending_balance is the sum of all pending and posted entries.
          #   #
          #   # @param amount [Integer]
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end

        # @see ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances#posted_balance
        class PostedBalance < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
          #
          #   @return [Integer]
          required :debits, Integer

          # @!parse
          #   # The posted_balance is the sum of all posted entries.
          #   #
          #   # @param amount [Integer]
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end
      end

      # Equal to the state of the ledger transaction when the ledger entry was created.
      # One of `pending`, `posted`, or `archived`.
      #
      # @see ModernTreasury::Models::LedgerEntry#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
