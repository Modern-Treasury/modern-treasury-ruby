# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionVersion < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   An optional description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at
      #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
      #   @return [Time]
      required :effective_at, Time

      # @!attribute [rw] effective_date
      #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
      #   @return [Date]
      required :effective_date, Date

      # @!attribute [rw] external_id
      #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
      #   @return [String]
      required :external_id, String

      # @!attribute [rw] ledger_entries
      #   An array of ledger entry objects.
      #   @return [Array<ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry>]
      required :ledger_entries,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry
                 }
               )

      # @!attribute [rw] ledger_id
      #   The ID of the ledger this ledger transaction belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction
      #   @return [String]
      required :ledger_transaction_id, String

      # @!attribute [rw] ledgerable_id
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
      #   @return [String]
      required :ledgerable_id, String

      # @!attribute [rw] ledgerable_type
      #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionVersion::LedgerableType]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerableType }

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] posted_at
      #   The time on which the ledger transaction posted. This is null if the ledger transaction is pending.
      #   @return [Time]
      required :posted_at, Time

      # @!attribute [rw] reversed_by_ledger_transaction_id
      #   The ID of the ledger transaction that reversed this ledger transaction.
      #   @return [String]
      required :reversed_by_ledger_transaction_id, String

      # @!attribute [rw] reverses_ledger_transaction_id
      #   The ID of the original ledger transaction. that this ledger transaction reverses.
      #   @return [String]
      required :reverses_ledger_transaction_id, String

      # @!attribute [rw] status
      #   One of `pending`, `posted`, or `archived`.
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionVersion::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerTransactionVersion::Status }

      # @!attribute [rw] version
      #   Version number of the ledger transaction.
      #   @return [Integer]
      required :version, Integer

      class LedgerEntry < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute [rw] ledger_account_currency
        #   The currency of the ledger account.
        #   @return [String]
        required :ledger_account_currency, String

        # @!attribute [rw] ledger_account_currency_exponent
        #   The currency exponent of the ledger account.
        #   @return [Integer]
        required :ledger_account_currency_exponent, Integer

        # @!attribute [rw] ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute [rw] ledger_account_lock_version
        #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
        #   @return [Integer]
        required :ledger_account_lock_version, Integer

        # @!attribute [rw] ledger_transaction_id
        #   The ledger transaction that this ledger entry is associated with.
        #   @return [String]
        required :ledger_transaction_id, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        required :metadata, Hash

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] resulting_ledger_account_balances
        #   The pending, posted, and available balances for this ledger entry's ledger account. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts. Please see https://docs.moderntreasury.com/docs/transaction-status-and-balances for more details.
        #   @return [ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances]
        required :resulting_ledger_account_balances,
                 -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances }

        # @!attribute [rw] status
        #   Equal to the state of the ledger transaction when the ledger entry was created. One of `pending`, `posted`, or `archived`.
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::Status]
        required :status, enum: -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::Status }

        class ResultingLedgerAccountBalances < BaseModel
          # @!attribute [rw] available_balance
          #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
          #   @return [ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance]
          required :available_balance,
                   -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance }

          # @!attribute [rw] pending_balance
          #   The pending_balance is the sum of all pending and posted entries.
          #   @return [ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance]
          required :pending_balance,
                   -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance }

          # @!attribute [rw] posted_balance
          #   The posted_balance is the sum of all posted entries.
          #   @return [ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance]
          required :posted_balance,
                   -> { ModernTreasury::Models::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance }

          class AvailableBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of AvailableBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          class PendingBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of PendingBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          class PostedBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of PostedBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of ResultingLedgerAccountBalances from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :available_balance The available_balance is the sum of all posted inbound entries and pending
          #   #     outbound entries. For credit normal, available_amount = posted_credits -
          #   #     pending_debits; for debit normal, available_amount = posted_debits -
          #   #     pending_credits.
          #   #   @option data [Object] :pending_balance The pending_balance is the sum of all pending and posted entries.
          #   #   @option data [Object] :posted_balance The posted_balance is the sum of all posted entries.
          #   def initialize(data = {}) = super
        end

        # Equal to the state of the ledger transaction when the ledger entry was created. One of `pending`, `posted`, or `archived`.
        class Status < ModernTreasury::Enum
          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted
        end

        # @!parse
        #   # Create a new instance of LedgerEntry from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Integer] :amount Value in specified currency's smallest unit. e.g. $10 would be represented
        #   #     as 1000. Can be any integer up to 36 digits.
        #   #   @option data [String] :created_at
        #   #   @option data [String] :direction One of `credit`, `debit`. Describes the direction money is flowing in the
        #   #     transaction. A `credit` moves money from your account to someone else's. A
        #   #     `debit` pulls money from someone else's account to your own. Note that wire,
        #   #     rtp, and check payments will always be `credit`.
        #   #   @option data [String] :ledger_account_currency The currency of the ledger account.
        #   #   @option data [Integer] :ledger_account_currency_exponent The currency exponent of the ledger account.
        #   #   @option data [String] :ledger_account_id The ledger account that this ledger entry is associated with.
        #   #   @option data [Integer] :ledger_account_lock_version Lock version of the ledger account. This can be passed when creating a ledger
        #   #     transaction to only succeed if no ledger transactions have posted since the
        #   #     given version. See our post about Designing the Ledgers API with Optimistic
        #   #     Locking for more details.
        #   #   @option data [String] :ledger_transaction_id The ledger transaction that this ledger entry is associated with.
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [String] :object
        #   #   @option data [Object] :resulting_ledger_account_balances The pending, posted, and available balances for this ledger entry's ledger
        #   #     account. The posted balance is the sum of all posted entries on the account. The
        #   #     pending balance is the sum of all pending and posted entries on the account. The
        #   #     available balance is the posted incoming entries minus the sum of the pending
        #   #     and posted outgoing amounts. Please see
        #   #     https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
        #   #     details.
        #   #   @option data [String] :status Equal to the state of the ledger transaction when the ledger entry was created.
        #   #     One of `pending`, `posted`, or `archived`.
        #   def initialize(data = {}) = super
      end

      # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # One of `pending`, `posted`, or `archived`.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end

      # @!parse
      #   # Create a new instance of LedgerTransactionVersion from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description An optional description for internal use.
      #   #   @option data [String] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   #     reporting purposes.
      #   #   @option data [String] :effective_date The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   #     purposes.
      #   #   @option data [String] :external_id A unique string to represent the ledger transaction. Only one pending or posted
      #   #     ledger transaction may have this ID in the ledger.
      #   #   @option data [Array<Object>] :ledger_entries An array of ledger entry objects.
      #   #   @option data [String] :ledger_id The ID of the ledger this ledger transaction belongs to.
      #   #   @option data [String] :ledger_transaction_id The ID of the ledger transaction
      #   #   @option data [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #   #     Treasury, the id will be populated here, otherwise null.
      #   #   @option data [String] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #   #     Treasury, the type will be populated here, otherwise null. This can be one of
      #   #     payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :posted_at The time on which the ledger transaction posted. This is null if the ledger
      #   #     transaction is pending.
      #   #   @option data [String] :reversed_by_ledger_transaction_id The ID of the ledger transaction that reversed this ledger transaction.
      #   #   @option data [String] :reverses_ledger_transaction_id The ID of the original ledger transaction. that this ledger transaction
      #   #     reverses.
      #   #   @option data [String] :status One of `pending`, `posted`, or `archived`.
      #   #   @option data [Integer] :version Version number of the ledger transaction.
      #   def initialize(data = {}) = super
    end
  end
end
