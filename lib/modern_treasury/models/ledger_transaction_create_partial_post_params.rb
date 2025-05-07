# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#create_partial_post
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute posted_ledger_entries
      #   An array of ledger entry objects to be set on the posted ledger transaction.
      #   There must be one entry for each of the existing entries with a lesser amount
      #   than the existing entry.
      #
      #   @return [Array<ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>]
      required :posted_ledger_entries,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry]
               }

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

      # @!method initialize(posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransactionCreatePartialPostParams} for more
      #   details.
      #
      #   @param posted_ledger_entries [Array<ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>] An array of ledger entry objects to be set on the posted ledger transaction. The
      #
      #   @param description [String] An optional free-form description for the posted ledger transaction. Maximum of
      #
      #   @param effective_at [Time] The timestamp (IS08601 format) at which the posted ledger transaction happened f
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class PostedLedgerEntry < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [Symbol, ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction]
        required :direction,
                 enum: -> {
                   ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction
                 }

        # @!attribute ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!method initialize(amount:, direction:, ledger_account_id:, metadata: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry}
        #   for more details.
        #
        #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
        #
        #   @param direction [Symbol, ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction] One of `credit`, `debit`. Describes the direction money is flowing in the transa
        #
        #   @param ledger_account_id [String] The ledger account that this ledger entry is associated with.
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s

        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        #
        # @see ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry#direction
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
