# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountStatements#create
    class LedgerAccountStatementCreateResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account statement.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute ending_balance
      #   The pending, posted, and available balances for this ledger account at the
      #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      #
      #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance]
      required :ending_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance }

      # @!attribute ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Lock version of the ledger account at the time of statement generation.
      #
      #   @return [Integer]
      required :ledger_account_lock_version, Integer

      # @!attribute ledger_account_normal_balance
      #   The normal balance of the ledger account.
      #
      #   @return [Symbol, ModernTreasury::TransactionDirection]
      required :ledger_account_normal_balance, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute ledger_id
      #   The id of the ledger that this ledger account statement belongs to.
      #
      #   @return [String]
      required :ledger_id, String

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

      # @!attribute starting_balance
      #   The pending, posted, and available balances for this ledger account at the
      #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      #
      #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance]
      required :starting_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, description:, effective_at_lower_bound:, effective_at_upper_bound:, ending_balance:, ledger_account_id:, ledger_account_lock_version:, ledger_account_normal_balance:, ledger_id:, live_mode:, metadata:, object:, starting_balance:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountStatementCreateResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] The description of the ledger account statement.
      #
      #   @param effective_at_lower_bound [Time] The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #
      #   @param effective_at_upper_bound [Time] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      #   @param ending_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance] The pending, posted, and available balances for this ledger account at the `effe
      #
      #   @param ledger_account_id [String] The id of the ledger account whose ledger entries are queried against, and its b
      #
      #   @param ledger_account_lock_version [Integer] Lock version of the ledger account at the time of statement generation.
      #
      #   @param ledger_account_normal_balance [Symbol, ModernTreasury::TransactionDirection] The normal balance of the ledger account.
      #
      #   @param ledger_id [String] The id of the ledger that this ledger account statement belongs to.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param starting_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance] The pending, posted, and available balances for this ledger account at the `effe
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse#ending_balance
      class EndingBalance < ModernTreasury::Internal::Type::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance }

        # @!method initialize(available_balance:, pending_balance:, posted_balance:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance}
        #   for more details.
        #
        #   The pending, posted, and available balances for this ledger account at the
        #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        #
        #   @param available_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending outbo
        #
        #   @param pending_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance] The pending_balance is the sum of all pending and posted entries.
        #
        #   @param posted_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance] The posted_balance is the sum of all posted entries.

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance#available_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance#pending_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The pending_balance is the sum of all pending and posted entries.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance#posted_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The posted_balance is the sum of all posted entries.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end
      end

      # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse#starting_balance
      class StartingBalance < ModernTreasury::Internal::Type::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance }

        # @!method initialize(available_balance:, pending_balance:, posted_balance:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance}
        #   for more details.
        #
        #   The pending, posted, and available balances for this ledger account at the
        #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
        #   on the account. The pending balance is the sum of all pending and posted entries
        #   on the account. The available balance is the posted incoming entries minus the
        #   sum of the pending and posted outgoing amounts.
        #
        #   @param available_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending outbo
        #
        #   @param pending_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance] The pending_balance is the sum of all pending and posted entries.
        #
        #   @param posted_balance [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance] The posted_balance is the sum of all posted entries.

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance#available_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance#pending_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The pending_balance is the sum of all pending and posted entries.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end

        # @see ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance#posted_balance
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

          # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
          #   The posted_balance is the sum of all posted entries.
          #
          #   @param amount [Integer]
          #
          #   @param credits [Integer]
          #
          #   @param currency [String] The currency of the ledger account.
          #
          #   @param currency_exponent [Integer] The currency exponent of the ledger account.
          #
          #   @param debits [Integer]
        end
      end
    end
  end
end
