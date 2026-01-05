# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerTransactions
      # @see ModernTreasury::Resources::LedgerTransactions::Versions#list
      class LedgerTransactionVersion < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived_reason
        #   System-set reason why the ledger transaction was archived; currently only
        #   'balance_lock_failure' for transactions that violated balance constraints. Only
        #   populated when archive_on_balance_lock_failure is true and a balance lock
        #   violation occurs, otherwise null.
        #
        #   @return [String, nil]
        required :archived_reason, String, nil?: true

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
        #   The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        #
        #   @return [Time]
        required :effective_at, Time

        # @!attribute effective_date
        #   The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute external_id
        #   A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        #
        #   @return [String, nil]
        required :external_id, String, nil?: true

        # @!attribute ledger_entries
        #   An array of ledger entry objects.
        #
        #   @return [Array<ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry>]
        required :ledger_entries,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerTransactions::LedgerTransactionVersion::LedgerEntry] }

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
        #   If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        #
        #   @return [String, nil]
        required :ledgerable_id, String, nil?: true

        # @!attribute ledgerable_type
        #   If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType, nil]
        required :ledgerable_type,
                 enum: -> { ModernTreasury::LedgerTransactions::LedgerTransactionVersion::LedgerableType },
                 nil?: true

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

        # @!attribute partially_posts_ledger_transaction_id
        #   The ID of the ledger transaction that this ledger transaction partially posts.
        #
        #   @return [String, nil]
        required :partially_posts_ledger_transaction_id, String, nil?: true

        # @!attribute posted_at
        #   The time on which the ledger transaction posted. This is null if the ledger
        #   transaction is pending.
        #
        #   @return [Time, nil]
        required :posted_at, Time, nil?: true

        # @!attribute reversed_by_ledger_transaction_id
        #   The ID of the ledger transaction that reversed this ledger transaction.
        #
        #   @return [String, nil]
        required :reversed_by_ledger_transaction_id, String, nil?: true

        # @!attribute reverses_ledger_transaction_id
        #   The ID of the original ledger transaction. that this ledger transaction
        #   reverses.
        #
        #   @return [String, nil]
        required :reverses_ledger_transaction_id, String, nil?: true

        # @!attribute status
        #   One of `pending`, `posted`, or `archived`.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status]
        required :status, enum: -> { ModernTreasury::LedgerTransactions::LedgerTransactionVersion::Status }

        # @!attribute version
        #   Version number of the ledger transaction.
        #
        #   @return [Integer]
        required :version, Integer

        # @!method initialize(id:, archived_reason:, created_at:, description:, effective_at:, effective_date:, external_id:, ledger_entries:, ledger_id:, ledger_transaction_id:, ledgerable_id:, ledgerable_type:, live_mode:, metadata:, object:, partially_posts_ledger_transaction_id:, posted_at:, reversed_by_ledger_transaction_id:, reverses_ledger_transaction_id:, status:, version:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param archived_reason [String, nil] System-set reason why the ledger transaction was archived; currently only 'balan
        #
        #   @param created_at [Time]
        #
        #   @param description [String, nil] An optional description for internal use.
        #
        #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
        #
        #   @param effective_date [Date] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting pur
        #
        #   @param external_id [String, nil] A unique string to represent the ledger transaction. Only one pending or posted
        #
        #   @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry>] An array of ledger entry objects.
        #
        #   @param ledger_id [String] The ID of the ledger this ledger transaction belongs to.
        #
        #   @param ledger_transaction_id [String] The ID of the ledger transaction
        #
        #   @param ledgerable_id [String, nil] If the ledger transaction can be reconciled to another object in Modern Treasury
        #
        #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType, nil] If the ledger transaction can be reconciled to another object in Modern Treasury
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param object [String]
        #
        #   @param partially_posts_ledger_transaction_id [String, nil] The ID of the ledger transaction that this ledger transaction partially posts.
        #
        #   @param posted_at [Time, nil] The time on which the ledger transaction posted. This is null if the ledger tran
        #
        #   @param reversed_by_ledger_transaction_id [String, nil] The ID of the ledger transaction that reversed this ledger transaction.
        #
        #   @param reverses_ledger_transaction_id [String, nil] The ID of the original ledger transaction. that this ledger transaction reverses
        #
        #   @param status [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status] One of `pending`, `posted`, or `archived`.
        #
        #   @param version [Integer] Version number of the ledger transaction.

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
          required :direction, enum: -> { ModernTreasury::TransactionDirection }

          # @!attribute effective_at
          #   The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   reporting purposes.
          #
          #   @return [Time]
          required :effective_at, Time

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
          #   @return [ModernTreasury::Models::LedgerBalances, nil]
          required :resulting_ledger_account_balances, -> { ModernTreasury::LedgerBalances }, nil?: true

          # @!attribute status
          #   Equal to the state of the ledger transaction when the ledger entry was created.
          #   One of `pending`, `posted`, or `archived`.
          #
          #   @return [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status]
          required :status,
                   enum: -> { ModernTreasury::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status }

          # @!method initialize(id:, amount:, created_at:, direction:, effective_at:, ledger_account_currency:, ledger_account_currency_exponent:, ledger_account_id:, ledger_account_lock_version:, ledger_transaction_id:, live_mode:, metadata:, object:, resulting_ledger_account_balances:, status:)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
          #
          #   @param created_at [Time]
          #
          #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit`, `debit`. Describes the direction money is flowing in the transa
          #
          #   @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
          #
          #   @param ledger_account_currency [String] The currency of the ledger account.
          #
          #   @param ledger_account_currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
          #
          #   @param ledger_account_lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger tr
          #
          #   @param ledger_transaction_id [String] The ledger transaction that this ledger entry is associated with.
          #
          #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
          #
          #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
          #
          #   @param object [String]
          #
          #   @param resulting_ledger_account_balances [ModernTreasury::Models::LedgerBalances, nil] The pending, posted, and available balances for this ledger entry's ledger accou
          #
          #   @param status [Symbol, ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry::Status] Equal to the state of the ledger transaction when the ledger entry was created.

          # Equal to the state of the ledger transaction when the ledger entry was created.
          # One of `pending`, `posted`, or `archived`.
          #
          # @see ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry#status
          module Status
            extend ModernTreasury::Internal::Type::Enum

            ARCHIVED = :archived
            PENDING = :pending
            POSTED = :posted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
        #
        # @see ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion#ledgerable_type
        module LedgerableType
          extend ModernTreasury::Internal::Type::Enum

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # One of `pending`, `posted`, or `archived`.
        #
        # @see ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion#status
        module Status
          extend ModernTreasury::Internal::Type::Enum

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    LedgerTransactionVersion = LedgerTransactions::LedgerTransactionVersion
  end
end
