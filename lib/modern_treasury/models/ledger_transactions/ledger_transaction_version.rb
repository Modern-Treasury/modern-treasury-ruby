# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerTransactions
      # @example
      # ```ruby
      # ledger_transaction_version => {
      #   id: String,
      #   created_at: Time,
      #   description: String,
      #   effective_at: Time,
      #   effective_date: Date,
      #   **_
      # }
      # ```
      class LedgerTransactionVersion < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute description
        #   An optional description for internal use.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute effective_at
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for reporting purposes.
        #
        #   @return [Time]
        required :effective_at, Time

        # @!attribute effective_date
        #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting purposes.
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute external_id
        #   A unique string to represent the ledger transaction. Only one pending or posted ledger transaction may have this ID in the ledger.
        #
        #   @return [String, nil]
        required :external_id, String, nil?: true

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry>]
        required :ledger_entries,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]
                 }

        # @!attribute ledger_id
        #   The ID of the ledger this ledger transaction belongs to.
        #
        #   @return [String]
        required :ledger_id, String

        # @!attribute ledger_transaction_id
        #   The ID of the ledger transaction
        #
        #   @return [String]
        required :ledger_transaction_id, String

        # @!attribute ledgerable_id
        #   If the ledger transaction can be reconciled to another object in Modern Treasury, the id will be populated here, otherwise null.
        #
        #   @return [String, nil]
        required :ledgerable_id, String, nil?: true

        # @!attribute ledgerable_type
        #   If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType, nil]
        required :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType
                 },
                 nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, ModernTreasury::HashOf[String]

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute posted_at
        #   The time on which the ledger transaction posted. This is null if the ledger transaction is pending.
        #
        #   @return [Time, nil]
        required :posted_at, Time, nil?: true

        # @!attribute reversed_by_ledger_transaction_id
        #   The ID of the ledger transaction that reversed this ledger transaction.
        #
        #   @return [String, nil]
        required :reversed_by_ledger_transaction_id, String, nil?: true

        # @!attribute reverses_ledger_transaction_id
        #   The ID of the original ledger transaction. that this ledger transaction reverses.
        #
        #   @return [String, nil]
        required :reverses_ledger_transaction_id, String, nil?: true

        # @!attribute status
        #   One of `pending`, `posted`, or `archived`.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status]
        required :status,
                 enum: -> { ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status }

        # @!attribute version
        #   Version number of the ledger transaction.
        #
        #   @return [Integer]
        required :version, Integer

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param description [String, nil] An optional description for internal use.
        #   #
        #   # @param effective_at [String] The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   #   reporting purposes.
        #   #
        #   # @param effective_date [String] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   #   purposes.
        #   #
        #   # @param external_id [String, nil] A unique string to represent the ledger transaction. Only one pending or posted
        #   #   ledger transaction may have this ID in the ledger.
        #   #
        #   # @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry>] An array of ledger entry objects.
        #   #
        #   # @param ledger_id [String] The ID of the ledger this ledger transaction belongs to.
        #   #
        #   # @param ledger_transaction_id [String] The ID of the ledger transaction
        #   #
        #   # @param ledgerable_id [String, nil] If the ledger transaction can be reconciled to another object in Modern
        #   #   Treasury, the id will be populated here, otherwise null.
        #   #
        #   # @param ledgerable_type [String, nil] If the ledger transaction can be reconciled to another object in Modern
        #   #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   # @param object [String]
        #   #
        #   # @param posted_at [String, nil] The time on which the ledger transaction posted. This is null if the ledger
        #   #   transaction is pending.
        #   #
        #   # @param reversed_by_ledger_transaction_id [String, nil] The ID of the ledger transaction that reversed this ledger transaction.
        #   #
        #   # @param reverses_ledger_transaction_id [String, nil] The ID of the original ledger transaction. that this ledger transaction
        #   #   reverses.
        #   #
        #   # @param status [String] One of `pending`, `posted`, or `archived`.
        #   #
        #   # @param version [Integer] Version number of the ledger transaction.
        #   #
        #   def initialize(
        #     id:,
        #     created_at:,
        #     description:,
        #     effective_at:,
        #     effective_date:,
        #     external_id:,
        #     ledger_entries:,
        #     ledger_id:,
        #     ledger_transaction_id:,
        #     ledgerable_id:,
        #     ledgerable_type:,
        #     live_mode:,
        #     metadata:,
        #     object:,
        #     posted_at:,
        #     reversed_by_ledger_transaction_id:,
        #     reverses_ledger_transaction_id:,
        #     status:,
        #     version:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # ledger_entry => {
        #   id: String,
        #   amount: Integer,
        #   created_at: Time,
        #   direction: enum: ModernTreasury::Models::TransactionDirection,
        #   ledger_account_currency: String,
        #   **_
        # }
        # ```
        class LedgerEntry < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000. Can be any integer up to 36 digits.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute direction
          #   One of `credit`, `debit`. Describes the direction money is flowing in the transaction. A `credit` moves money from your account to someone else's. A `debit` pulls money from someone else's account to your own. Note that wire, rtp, and check payments will always be `credit`.
          #
          #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
          required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

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
          #   Lock version of the ledger account. This can be passed when creating a ledger transaction to only succeed if no ledger transactions have posted since the given version. See our post about Designing the Ledgers API with Optimistic Locking for more details.
          #
          #   @return [Integer, nil]
          required :ledger_account_lock_version, Integer, nil?: true

          # @!attribute ledger_transaction_id
          #   The ledger transaction that this ledger entry is associated with.
          #
          #   @return [String]
          required :ledger_transaction_id, String

          # @!attribute live_mode
          #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
          #
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute metadata
          #   Additional data represented as key-value pairs. Both the key and value must be strings.
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, ModernTreasury::HashOf[String]

          # @!attribute object
          #
          #   @return [String]
          required :object, String

          # @!attribute resulting_ledger_account_balances
          #   The pending, posted, and available balances for this ledger entry's ledger account. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts. Please see https://docs.moderntreasury.com/docs/transaction-status-and-balances for more details.
          #
          #   @return [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances, nil]
          required :resulting_ledger_account_balances,
                   -> {
                     ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances
                   },
                   nil?: true

          # @!attribute status
          #   Equal to the state of the ledger transaction when the ledger entry was created. One of `pending`, `posted`, or `archived`.
          #
          #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status]
          required :status,
                   enum: -> {
                     ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status
                   }

          # @!parse
          #   # @param id [String]
          #   #
          #   # @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented
          #   #   as 1000. Can be any integer up to 36 digits.
          #   #
          #   # @param created_at [String]
          #   #
          #   # @param direction [String] One of `credit`, `debit`. Describes the direction money is flowing in the
          #   #   transaction. A `credit` moves money from your account to someone else's. A
          #   #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   #   rtp, and check payments will always be `credit`.
          #   #
          #   # @param ledger_account_currency [String] The currency of the ledger account.
          #   #
          #   # @param ledger_account_currency_exponent [Integer] The currency exponent of the ledger account.
          #   #
          #   # @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
          #   #
          #   # @param ledger_account_lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger
          #   #   transaction to only succeed if no ledger transactions have posted since the
          #   #   given version. See our post about Designing the Ledgers API with Optimistic
          #   #   Locking for more details.
          #   #
          #   # @param ledger_transaction_id [String] The ledger transaction that this ledger entry is associated with.
          #   #
          #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
          #   #   if it exists in the test environment.
          #   #
          #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
          #   #   strings.
          #   #
          #   # @param object [String]
          #   #
          #   # @param resulting_ledger_account_balances [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances, nil] The pending, posted, and available balances for this ledger entry's ledger
          #   #   account. The posted balance is the sum of all posted entries on the account. The
          #   #   pending balance is the sum of all pending and posted entries on the account. The
          #   #   available balance is the posted incoming entries minus the sum of the pending
          #   #   and posted outgoing amounts. Please see
          #   #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
          #   #   details.
          #   #
          #   # @param status [String] Equal to the state of the ledger transaction when the ledger entry was created.
          #   #   One of `pending`, `posted`, or `archived`.
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     created_at:,
          #     direction:,
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
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          # ```ruby
          # resulting_ledger_account_balances => {
          #   available_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
          #   pending_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
          #   posted_balance: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
          # }
          # ```
          class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
            # @!attribute available_balance
            #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
            #
            #   @return [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance]
            required :available_balance,
                     -> { ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance }

            # @!attribute pending_balance
            #   The pending_balance is the sum of all pending and posted entries.
            #
            #   @return [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance]
            required :pending_balance,
                     -> { ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance }

            # @!attribute posted_balance
            #   The posted_balance is the sum of all posted entries.
            #
            #   @return [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance]
            required :posted_balance,
                     -> { ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance }

            # @!parse
            #   # The pending, posted, and available balances for this ledger entry's ledger
            #   #   account. The posted balance is the sum of all posted entries on the account. The
            #   #   pending balance is the sum of all pending and posted entries on the account. The
            #   #   available balance is the posted incoming entries minus the sum of the pending
            #   #   and posted outgoing amounts. Please see
            #   #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
            #   #   details.
            #   #
            #   # @param available_balance [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending
            #   #   outbound entries. For credit normal, available_amount = posted_credits -
            #   #   pending_debits; for debit normal, available_amount = posted_debits -
            #   #   pending_credits.
            #   #
            #   # @param pending_balance [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance] The pending_balance is the sum of all pending and posted entries.
            #   #
            #   # @param posted_balance [ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance] The posted_balance is the sum of all posted entries.
            #   #
            #   def initialize(available_balance:, pending_balance:, posted_balance:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            # ```ruby
            # available_balance => {
            #   amount: Integer,
            #   credits: Integer,
            #   currency: String,
            #   currency_exponent: Integer,
            #   debits: Integer
            # }
            # ```
            class AvailableBalance < ModernTreasury::BaseModel
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
              #   #   outbound entries. For credit normal, available_amount = posted_credits -
              #   #   pending_debits; for debit normal, available_amount = posted_debits -
              #   #   pending_credits.
              #   #
              #   # @param amount [Integer]
              #   #
              #   # @param credits [Integer]
              #   #
              #   # @param currency [String] The currency of the ledger account.
              #   #
              #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
              #   #
              #   # @param debits [Integer]
              #   #
              #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # @example
            # ```ruby
            # pending_balance => {
            #   amount: Integer,
            #   credits: Integer,
            #   currency: String,
            #   currency_exponent: Integer,
            #   debits: Integer
            # }
            # ```
            class PendingBalance < ModernTreasury::BaseModel
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
              #   #
              #   # @param credits [Integer]
              #   #
              #   # @param currency [String] The currency of the ledger account.
              #   #
              #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
              #   #
              #   # @param debits [Integer]
              #   #
              #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # @example
            # ```ruby
            # posted_balance => {
            #   amount: Integer,
            #   credits: Integer,
            #   currency: String,
            #   currency_exponent: Integer,
            #   debits: Integer
            # }
            # ```
            class PostedBalance < ModernTreasury::BaseModel
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
              #   #
              #   # @param credits [Integer]
              #   #
              #   # @param currency [String] The currency of the ledger account.
              #   #
              #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
              #   #
              #   # @param debits [Integer]
              #   #
              #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end
          end

          # Equal to the state of the ledger transaction when the ledger entry was created. One of `pending`, `posted`, or `archived`.
          #
          # @example
          # ```ruby
          # case status
          # in :archived
          #   # ...
          # in :pending
          #   # ...
          # in :posted
          #   # ...
          # end
          # ```
          class Status < ModernTreasury::Enum
            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            finalize!
          end
        end

        # If the ledger transaction can be reconciled to another object in Modern Treasury, the type will be populated here, otherwise null. This can be one of payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        #
        # @example
        # ```ruby
        # case ledgerable_type
        # in :expected_payment
        #   # ...
        # in :incoming_payment_detail
        #   # ...
        # in :paper_item
        #   # ...
        # in :payment_order
        #   # ...
        # in :return
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class LedgerableType < ModernTreasury::Enum
          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          finalize!
        end

        # One of `pending`, `posted`, or `archived`.
        #
        # @example
        # ```ruby
        # case status
        # in :archived
        #   # ...
        # in :pending
        #   # ...
        # in :posted
        #   # ...
        # end
        # ```
        class Status < ModernTreasury::Enum
          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          finalize!
        end
      end
    end

    LedgerTransactionVersion = LedgerTransactions::LedgerTransactionVersion
  end
end
