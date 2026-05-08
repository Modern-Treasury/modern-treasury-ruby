# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#create_partial_post
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute posted_ledger_entries
      #   An array of ledger entry objects to be set on the posted ledger transaction.
      #   There must be one entry for each of the existing entries with a lesser amount
      #   than the existing entry.
      #
      #   @return [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>]
      required :posted_ledger_entries,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry] }

      # @!attribute description
      #   An optional free-form description for the posted ledger transaction. Maximum of
      #   1000 characters allowed.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute effective_at
      #   The timestamp (IS08601 format) at which the posted ledger transaction happened
      #   for reporting purposes.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(id:, posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransactionCreatePartialPostParams} for more
      #   details.
      #
      #   @param id [String]
      #
      #   @param posted_ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>] An array of ledger entry objects to be set on the posted ledger transaction. The
      #
      #   @param description [String] An optional free-form description for the posted ledger transaction. Maximum of
      #
      #   @param effective_at [Time] The timestamp (IS08601 format) at which the posted ledger transaction happened f
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class PostedLedgerEntry < ModernTreasury::Internal::Type::BaseModel
        # @!attribute direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the
        #   transaction. A `credit` moves money from your account to someone else's. A
        #   `debit` pulls money from someone else's account to your own. Note that wire,
        #   rtp, and check payments will always be `credit`.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction]
        required :direction,
                 enum: -> { ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction }

        # @!attribute ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000. Can be any integer up to 36 digits.
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!attribute amount_string
        #   The amount of the ledger entry as a string, preserving full precision for values
        #   that may exceed safe integer limits in some languages.
        #
        #   @return [String, nil]
        optional :amount_string, String

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

        # @!method initialize(direction:, ledger_account_id:, amount: nil, amount_string: nil, available_balance_amount: nil, lock_version: nil, metadata: nil, pending_balance_amount: nil, posted_balance_amount: nil, show_resulting_ledger_account_balances: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry}
        #   for more details.
        #
        #   @param direction [Symbol, ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
        #
        #   @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
        #
        #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
        #
        #   @param amount_string [String] The amount of the ledger entry as a string, preserving full precision for values
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

        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        #
        # @see ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry#direction
        module Direction
          extend ModernTreasury::Internal::Type::Enum

          CREDIT = :credit
          DEBIT = :debit

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
