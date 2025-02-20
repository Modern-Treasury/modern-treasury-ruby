# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute posted_ledger_entries
      #   An array of ledger entry objects to be set on the posted ledger transaction.
      #     There must be one entry for each of the existing entries with a lesser amount
      #     than the existing entry.
      #
      #   @return [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>]
      required :posted_ledger_entries,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry] }

      # @!attribute [r] description
      #   An optional free-form description for the posted ledger transaction. Maximum of
      #     1000 characters allowed.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] effective_at
      #   The timestamp (IS08601 format) at which the posted ledger transaction happened
      #     for reporting purposes.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_at

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!parse
      #   # @param posted_ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>]
      #   # @param description [String]
      #   # @param effective_at [Time]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class PostedLedgerEntry < ModernTreasury::BaseModel
        # @!attribute amount
        #   Value in specified currency's smallest unit. e.g. $10 would be represented
        #     as 1000. Can be any integer up to 36 digits.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute direction
        #   One of `credit`, `debit`. Describes the direction money is flowing in the
        #     transaction. A `credit` moves money from your account to someone else's. A
        #     `debit` pulls money from someone else's account to your own. Note that wire,
        #     rtp, and check payments will always be `credit`.
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction]
        required :direction,
                 enum: -> { ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction }

        # @!attribute ledger_account_id
        #   The ledger account that this ledger entry is associated with.
        #
        #   @return [String]
        required :ledger_account_id, String

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!parse
        #   # @param amount [Integer]
        #   # @param direction [Symbol, ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction]
        #   # @param ledger_account_id [String]
        #   # @param metadata [Hash{Symbol=>String}]
        #   #
        #   def initialize(amount:, direction:, ledger_account_id:, metadata: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        #   transaction. A `credit` moves money from your account to someone else's. A
        #   `debit` pulls money from someone else's account to your own. Note that wire,
        #   rtp, and check payments will always be `credit`.
        #
        # @example
        # ```ruby
        # case direction
        # in :credit
        #   # ...
        # in :debit
        #   # ...
        # end
        # ```
        class Direction < ModernTreasury::Enum
          CREDIT = :credit
          DEBIT = :debit

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
