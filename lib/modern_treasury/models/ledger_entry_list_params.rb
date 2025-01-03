# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute as_of_lock_version
      #   Shows all ledger entries that were present on a ledger account at a particular `lock_version`. You must also specify `ledger_account_id`.
      #
      #   @return [Integer]
      optional :as_of_lock_version, Integer

      # @!attribute direction
      #   If true, response will include ledger entries that were deleted. When you update a ledger transaction to specify a new set of entries, the previous entries are deleted.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute effective_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the transaction's effective time. Format ISO8601
      #
      #   @return [Hash{Symbol => Time}]
      optional :effective_at, ModernTreasury::HashOf[Time]

      # @!attribute effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the transaction's effective date. Format YYYY-MM-DD
      #
      #   @return [Hash{Symbol => Date}]
      optional :effective_date, ModernTreasury::HashOf[Date]

      # @!attribute ledger_account_category_id
      #   Get all ledger entries that match the direction specified. One of `credit`, `debit`.
      #
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute ledger_account_id
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the lock_version of a ledger account. For example, for all entries created at or before before lock_version 1000 of a ledger account, use `ledger_account_lock_version%5Blte%5D=1000`.
      #
      #   @return [Hash{Symbol => Integer}]
      optional :ledger_account_lock_version, ModernTreasury::HashOf[Integer]

      # @!attribute ledger_account_payout_id
      #
      #   @return [String]
      optional :ledger_account_payout_id, String

      # @!attribute ledger_account_settlement_id
      #
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute ledger_account_statement_id
      #   Get all ledger entries that are included in the ledger account statement.
      #
      #   @return [String]
      optional :ledger_account_statement_id, String

      # @!attribute ledger_transaction_id
      #
      #   @return [String]
      optional :ledger_transaction_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering by only one field at a time is supported.
      #
      #   @return [ModernTreasury::Models::LedgerEntryListParams::OrderBy]
      optional :order_by, -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute show_balances
      #   If true, response will include the balances attached to the ledger entry. If there is no balance available, null will be returned instead.
      #
      #   @return [Boolean]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!attribute show_deleted
      #   If true, response will include ledger entries that were deleted. When you update a ledger transaction to specify a new set of entries, the previous entries are deleted.
      #
      #   @return [Boolean]
      optional :show_deleted, ModernTreasury::BooleanModel

      # @!attribute status
      #   Get all ledger entries that match the status specified. One of `pending`, `posted`, or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerEntryListParams::Status }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol => Time}]
      optional :updated_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query
      #   #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   #
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param as_of_lock_version [Integer] Shows all ledger entries that were present on a ledger account at a particular
      #   #   `lock_version`. You must also specify `ledger_account_id`.
      #   #
      #   # @param direction [String] If true, response will include ledger entries that were deleted. When you update
      #   #   a ledger transaction to specify a new set of entries, the previous entries are
      #   #   deleted.
      #   #
      #   # @param effective_at [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   transaction's effective time. Format ISO8601
      #   #
      #   # @param effective_date [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   transaction's effective date. Format YYYY-MM-DD
      #   #
      #   # @param ledger_account_category_id [String] Get all ledger entries that match the direction specified. One of `credit`,
      #   #   `debit`.
      #   #
      #   # @param ledger_account_id [String]
      #   #
      #   # @param ledger_account_lock_version [Hash{Symbol => Integer}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   lock_version of a ledger account. For example, for all entries created at or
      #   #   before before lock_version 1000 of a ledger account, use
      #   #   `ledger_account_lock_version%5Blte%5D=1000`.
      #   #
      #   # @param ledger_account_payout_id [String]
      #   #
      #   # @param ledger_account_settlement_id [String]
      #   #
      #   # @param ledger_account_statement_id [String] Get all ledger entries that are included in the ledger account statement.
      #   #
      #   # @param ledger_transaction_id [String]
      #   #
      #   # @param metadata [Hash{Symbol => String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param order_by [ModernTreasury::Models::LedgerEntryListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   #   by only one field at a time is supported.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param show_balances [Boolean] If true, response will include the balances attached to the ledger entry. If
      #   #   there is no balance available, null will be returned instead.
      #   #
      #   # @param show_deleted [Boolean] If true, response will include ledger entries that were deleted. When you update
      #   #   a ledger transaction to specify a new set of entries, the previous entries are
      #   #   deleted.
      #   #
      #   # @param status [String] Get all ledger entries that match the status specified. One of `pending`,
      #   #   `posted`, or `archived`.
      #   #
      #   # @param updated_at [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   def initialize(
      #     id: nil,
      #     after_cursor: nil,
      #     as_of_lock_version: nil,
      #     direction: nil,
      #     effective_at: nil,
      #     effective_date: nil,
      #     ledger_account_category_id: nil,
      #     ledger_account_id: nil,
      #     ledger_account_lock_version: nil,
      #     ledger_account_payout_id: nil,
      #     ledger_account_settlement_id: nil,
      #     ledger_account_statement_id: nil,
      #     ledger_transaction_id: nil,
      #     metadata: nil,
      #     order_by: nil,
      #     per_page: nil,
      #     show_balances: nil,
      #     show_deleted: nil,
      #     status: nil,
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class OrderBy < ModernTreasury::BaseModel
        # @!attribute created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt]
        optional :created_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt }

        # @!attribute effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt]
        optional :effective_at,
                 enum: -> {
                   ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt
                 }

        # @!parse
        #   # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   #   by only one field at a time is supported.
        #   #
        #   # @param created_at [String]
        #   # @param effective_at [String]
        #   #
        #   def initialize(created_at: nil, effective_at: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :asc
        #   # ...
        # in :desc
        #   # ...
        # end
        # ```
        class CreatedAt < ModernTreasury::Enum
          ASC = :asc
          DESC = :desc

          finalize!
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :asc
        #   # ...
        # in :desc
        #   # ...
        # end
        # ```
        class EffectiveAt < ModernTreasury::Enum
          ASC = :asc
          DESC = :desc

          finalize!
        end
      end

      # Get all ledger entries that match the status specified. One of `pending`, `posted`, or `archived`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :pending
      #   # ...
      # in :posted
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived

        finalize!
      end
    end
  end
end
