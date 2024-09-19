# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   The description of the ledger account statement.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [String]
      required :effective_at_lower_bound, String

      # @!attribute [rw] effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [String]
      required :effective_at_upper_bound, String

      # @!attribute [rw] ending_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_upper_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance]
      required :ending_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance }

      # @!attribute [rw] ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its balances are computed as a result.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] ledger_account_lock_version
      #   Lock version of the ledger account at the time of statement generation.
      #   @return [Integer]
      required :ledger_account_lock_version, Integer

      # @!attribute [rw] ledger_account_normal_balance
      #   The normal balance of the ledger account.
      #   One of the constants defined in {ModernTreasury::Models::TransactionDirection}
      #   @return [Symbol]
      required :ledger_account_normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this ledger account statement belongs to.
      #   @return [String]
      required :ledger_id, String

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

      # @!attribute [rw] starting_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_lower_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance]
      required :starting_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance }

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      class EndingBalance < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance }

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance }

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
        end
      end

      class StartingBalance < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance }

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance }

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
        end
      end
    end
  end
end
