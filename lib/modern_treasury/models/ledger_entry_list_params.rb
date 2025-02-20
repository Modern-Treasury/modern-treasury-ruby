# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :id

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] as_of_lock_version
      #   Shows all ledger entries that were present on a ledger account at a particular
      #     `lock_version`. You must also specify `ledger_account_id`.
      #
      #   @return [Integer, nil]
      optional :as_of_lock_version, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :as_of_lock_version

      # @!attribute [r] direction
      #   If true, response will include ledger entries that were deleted. When you update
      #     a ledger transaction to specify a new set of entries, the previous entries are
      #     deleted.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::TransactionDirection]
      #   attr_writer :direction

      # @!attribute [r] effective_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     transaction's effective time. Format ISO8601
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :effective_at

      # @!attribute [r] effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     transaction's effective date. Format YYYY-MM-DD
      #
      #   @return [Hash{Symbol=>Date}, nil]
      optional :effective_date, ModernTreasury::HashOf[Date]

      # @!parse
      #   # @return [Hash{Symbol=>Date}]
      #   attr_writer :effective_date

      # @!attribute [r] ledger_account_category_id
      #   Get all ledger entries that match the direction specified. One of `credit`,
      #     `debit`.
      #
      #   @return [String, nil]
      optional :ledger_account_category_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_category_id

      # @!attribute [r] ledger_account_id
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_id

      # @!attribute [r] ledger_account_lock_version
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     lock_version of a ledger account. For example, for all entries created at or
      #     before before lock_version 1000 of a ledger account, use
      #     `ledger_account_lock_version%5Blte%5D=1000`.
      #
      #   @return [Hash{Symbol=>Integer}, nil]
      optional :ledger_account_lock_version, ModernTreasury::HashOf[Integer]

      # @!parse
      #   # @return [Hash{Symbol=>Integer}]
      #   attr_writer :ledger_account_lock_version

      # @!attribute [r] ledger_account_payout_id
      #
      #   @return [String, nil]
      optional :ledger_account_payout_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_payout_id

      # @!attribute [r] ledger_account_settlement_id
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_settlement_id

      # @!attribute [r] ledger_account_statement_id
      #   Get all ledger entries that are included in the ledger account statement.
      #
      #   @return [String, nil]
      optional :ledger_account_statement_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_statement_id

      # @!attribute [r] ledger_transaction_id
      #
      #   @return [String, nil]
      optional :ledger_transaction_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_transaction_id

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #     to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #     by only one field at a time is supported.
      #
      #   @return [ModernTreasury::Models::LedgerEntryListParams::OrderBy, nil]
      optional :order_by, -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerEntryListParams::OrderBy]
      #   attr_writer :order_by

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] show_balances
      #   If true, response will include the balances attached to the ledger entry. If
      #     there is no balance available, null will be returned instead.
      #
      #   @return [Boolean, nil]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_balances

      # @!attribute [r] show_deleted
      #   If true, response will include ledger entries that were deleted. When you update
      #     a ledger transaction to specify a new set of entries, the previous entries are
      #     deleted.
      #
      #   @return [Boolean, nil]
      optional :show_deleted, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_deleted

      # @!attribute [r] status
      #   Get all ledger entries that match the status specified. One of `pending`,
      #     `posted`, or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerEntryListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status]
      #   attr_writer :status

      # @!attribute [r] updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :updated_at

      # @!parse
      #   # @param id [Array<String>]
      #   # @param after_cursor [String, nil]
      #   # @param as_of_lock_version [Integer]
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param effective_at [Hash{Symbol=>Time}]
      #   # @param effective_date [Hash{Symbol=>Date}]
      #   # @param ledger_account_category_id [String]
      #   # @param ledger_account_id [String]
      #   # @param ledger_account_lock_version [Hash{Symbol=>Integer}]
      #   # @param ledger_account_payout_id [String]
      #   # @param ledger_account_settlement_id [String]
      #   # @param ledger_account_statement_id [String]
      #   # @param ledger_transaction_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param order_by [ModernTreasury::Models::LedgerEntryListParams::OrderBy]
      #   # @param per_page [Integer]
      #   # @param show_balances [Boolean]
      #   # @param show_deleted [Boolean]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status]
      #   # @param updated_at [Hash{Symbol=>Time}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class OrderBy < ModernTreasury::BaseModel
        # @!attribute [r] created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt, nil]
        optional :created_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt]
        #   attr_writer :created_at

        # @!attribute [r] effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt, nil]
        optional :effective_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt]
        #   attr_writer :effective_at

        # @!parse
        #   # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   #   by only one field at a time is supported.
        #   #
        #   # @param created_at [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt]
        #   # @param effective_at [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt]
        #   #
        #   def initialize(created_at: nil, effective_at: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case created_at
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case effective_at
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @abstract
      #
      # Get all ledger entries that match the status specified. One of `pending`,
      #   `posted`, or `archived`.
      #
      # @example
      # ```ruby
      # case status
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

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
