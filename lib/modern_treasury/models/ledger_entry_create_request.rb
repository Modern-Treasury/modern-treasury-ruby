# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute direction
      #   One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute ledger_account_id
      #   The ledger account that this ledger entry is associated with.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      #   account’s available balance. If any of these conditions would be false after the
      #   transaction is created, the entire call will fail with error code 422.
      #
      #   @return [Hash{Symbol=>Integer}, nil]
      optional :available_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

      # @!attribute lock_version
      #   Lock version of the ledger account. This can be passed when creating a ledger
      #   transaction to only succeed if no ledger transactions have posted since the
      #   given version. See our post about Designing the Ledgers API with Optimistic
      #   Locking for more details.
      #
      #   @return [Integer, nil]
      optional :lock_version, Integer, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      #   account’s pending balance. If any of these conditions would be false after the
      #   transaction is created, the entire call will fail with error code 422.
      #
      #   @return [Hash{Symbol=>Integer}, nil]
      optional :pending_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

      # @!attribute posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      #   account’s posted balance. If any of these conditions would be false after the
      #   transaction is created, the entire call will fail with error code 422.
      #
      #   @return [Hash{Symbol=>Integer}, nil]
      optional :posted_balance_amount, ModernTreasury::Internal::Type::HashOf[Integer], nil?: true

      # @!attribute show_resulting_ledger_account_balances
      #   If true, response will include the balance of the associated ledger account for
      #   the entry.
      #
      #   @return [Boolean, nil]
      optional :show_resulting_ledger_account_balances, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!method initialize(amount:, direction:, ledger_account_id:, available_balance_amount: nil, lock_version: nil, metadata: nil, pending_balance_amount: nil, posted_balance_amount: nil, show_resulting_ledger_account_balances: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerEntryCreateRequest} for more details.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit`, `debit`. Describes the direction money is flowing in the transa
      #
      #   @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
      #
      #   @param available_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
      #
      #   @param lock_version [Integer, nil] Lock version of the ledger account. This can be passed when creating a ledger tr
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param pending_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
      #
      #   @param posted_balance_amount [Hash{Symbol=>Integer}, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the accou
      #
      #   @param show_resulting_ledger_account_balances [Boolean, nil] If true, response will include the balance of the associated ledger account for
    end
  end
end
