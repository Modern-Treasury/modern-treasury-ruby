# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute effective_at
      #   Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by effective at. For example, for all transactions after Jan 1 2000, use effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #
      #   @return [Hash{Symbol => Time}]
      optional :effective_at, ModernTreasury::HashOf[Time]

      # @!attribute effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by effective date. For example, for all dates after Jan 1 2000, use effective_date%5Bgt%5D=2000-01-01.
      #
      #   @return [Hash{Symbol => Time}]
      optional :effective_date, ModernTreasury::HashOf[Time]

      # @!attribute external_id
      #
      #   @return [String]
      optional :external_id, String

      # @!attribute ledger_account_category_id
      #
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute ledger_account_id
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute ledger_account_settlement_id
      #
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute ledger_id
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute ledgerable_id
      #
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionListParams::LedgerableType }

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering by only one field at a time is supported.
      #
      #   @return [ModernTreasury::Models::LedgerTransactionListParams::OrderBy]
      optional :order_by, -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute posted_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol => Time}]
      optional :posted_at, ModernTreasury::HashOf[Time]

      # @!attribute reverses_ledger_transaction_id
      #
      #   @return [String]
      optional :reverses_ledger_transaction_id, String

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionListParams::Status }

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
      #   # @param effective_at [Hash{Symbol => String}] Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #   #   effective at. For example, for all transactions after Jan 1 2000, use
      #   #   effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #   #
      #   # @param effective_date [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #   #   effective date. For example, for all dates after Jan 1 2000, use
      #   #   effective_date%5Bgt%5D=2000-01-01.
      #   #
      #   # @param external_id [String]
      #   #
      #   # @param ledger_account_category_id [String]
      #   #
      #   # @param ledger_account_id [String]
      #   #
      #   # @param ledger_account_settlement_id [String]
      #   #
      #   # @param ledger_id [String]
      #   #
      #   # @param ledgerable_id [String]
      #   #
      #   # @param ledgerable_type [String]
      #   #
      #   # @param metadata [Hash{Symbol => String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param order_by [ModernTreasury::Models::LedgerTransactionListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   #   by only one field at a time is supported.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param posted_at [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   # @param reverses_ledger_transaction_id [String]
      #   #
      #   # @param status [String]
      #   #
      #   # @param updated_at [Hash{Symbol => String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   def initialize(
      #     id: nil,
      #     after_cursor: nil,
      #     effective_at: nil,
      #     effective_date: nil,
      #     external_id: nil,
      #     ledger_account_category_id: nil,
      #     ledger_account_id: nil,
      #     ledger_account_settlement_id: nil,
      #     ledger_id: nil,
      #     ledgerable_id: nil,
      #     ledgerable_type: nil,
      #     metadata: nil,
      #     order_by: nil,
      #     per_page: nil,
      #     posted_at: nil,
      #     reverses_ledger_transaction_id: nil,
      #     status: nil,
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :expected_payment
      #   # ...
      # in :incoming_payment_detail
      #   # ...
      # in :paper_item
      #   # ...
      # in :payment_order
      #   # ...
      # in :return
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!
      end

      class OrderBy < ModernTreasury::BaseModel
        # @!attribute created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt]
        optional :created_at,
                 enum: -> {
                   ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt
                 }

        # @!attribute effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt]
        optional :effective_at,
                 enum: -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt }

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
