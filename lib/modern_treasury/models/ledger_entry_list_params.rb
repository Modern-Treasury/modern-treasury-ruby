# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] as_of_lock_version
      #   Shows all ledger entries that were present on a ledger account at a particular `lock_version`. You must also specify `ledger_account_id`.
      #   @return [Integer]
      optional :as_of_lock_version, Integer

      # @!attribute [rw] direction
      #   If true, response will include ledger entries that were deleted. When you update a ledger transaction to specify a new set of entries, the previous entries are deleted.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] effective_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the transaction's effective time. Format ISO8601
      #   @return [Hash]
      optional :effective_at, Hash

      # @!attribute [rw] effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the transaction's effective date. Format YYYY-MM-DD
      #   @return [Hash]
      optional :effective_date, Hash

      # @!attribute [rw] ledger_account_category_id
      #   Get all ledger entries that match the direction specified. One of `credit`, `debit`.
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute [rw] ledger_account_id
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute [rw] ledger_account_lock_version
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the lock_version of a ledger account. For example, for all entries created at or before before lock_version 1000 of a ledger account, use `ledger_account_lock_version%5Blte%5D=1000`.
      #   @return [Hash]
      optional :ledger_account_lock_version, Hash

      # @!attribute [rw] ledger_account_payout_id
      #   @return [String]
      optional :ledger_account_payout_id, String

      # @!attribute [rw] ledger_account_settlement_id
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute [rw] ledger_account_statement_id
      #   Get all ledger entries that are included in the ledger account statement.
      #   @return [String]
      optional :ledger_account_statement_id, String

      # @!attribute [rw] ledger_transaction_id
      #   @return [String]
      optional :ledger_transaction_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering by only one field at a time is supported.
      #   @return [ModernTreasury::Models::LedgerEntryListParams::OrderBy]
      optional :order_by, -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy }

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] show_balances
      #   If true, response will include the balances attached to the ledger entry. If there is no balance available, null will be returned instead.
      #   @return [Boolean]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!attribute [rw] show_deleted
      #   If true, response will include ledger entries that were deleted. When you update a ledger transaction to specify a new set of entries, the previous entries are deleted.
      #   @return [Boolean]
      optional :show_deleted, ModernTreasury::BooleanModel

      # @!attribute [rw] status
      #   Get all ledger entries that match the status specified. One of `pending`, `posted`, or `archived`.
      #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerEntryListParams::Status }

      # @!attribute [rw] updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :updated_at, Hash

      class OrderBy < ModernTreasury::BaseModel
        # @!attribute [rw] created_at
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt]
        optional :created_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt }

        # @!attribute [rw] effective_at
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt]
        optional :effective_at,
                 enum: -> {
                   ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt
                 }

        class CreatedAt < ModernTreasury::Enum
          ASC = :asc
          DESC = :desc
        end

        class EffectiveAt < ModernTreasury::Enum
          ASC = :asc
          DESC = :desc
        end

        # @!parse
        #   # Create a new instance of OrderBy from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :created_at
        #   #   @option data [String, nil] :effective_at
        #   def initialize(data = {}) = super
      end

      # Get all ledger entries that match the status specified. One of `pending`, `posted`, or `archived`.
      class Status < ModernTreasury::Enum
        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived
      end
    end
  end
end
