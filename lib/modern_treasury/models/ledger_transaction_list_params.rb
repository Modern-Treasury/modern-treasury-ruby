# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
      # @!attribute [r] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :id

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] effective_at
      #   Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #     effective at. For example, for all transactions after Jan 1 2000, use
      #     effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :effective_at

      # @!attribute [r] effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #     effective date. For example, for all dates after Jan 1 2000, use
      #     effective_date%5Bgt%5D=2000-01-01.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_date, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :effective_date

      # @!attribute [r] external_id
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] ledger_account_category_id
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

      # @!attribute [r] ledger_account_settlement_id
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_settlement_id

      # @!attribute [r] ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_id

      # @!attribute [r] ledgerable_id
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledgerable_id

      # @!attribute [r] ledgerable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType, nil]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionListParams::LedgerableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      #   attr_writer :ledgerable_type

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
      #   @return [ModernTreasury::Models::LedgerTransactionListParams::OrderBy, nil]
      optional :order_by, -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerTransactionListParams::OrderBy]
      #   attr_writer :order_by

      # @!attribute [r] partially_posts_ledger_transaction_id
      #
      #   @return [String, nil]
      optional :partially_posts_ledger_transaction_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :partially_posts_ledger_transaction_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] posted_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :posted_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :posted_at

      # @!attribute [r] reverses_ledger_transaction_id
      #
      #   @return [String, nil]
      optional :reverses_ledger_transaction_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :reverses_ledger_transaction_id

      # @!attribute [r] status
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status]
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
      #   # @param effective_at [Hash{Symbol=>String}]
      #   # @param effective_date [Hash{Symbol=>String}]
      #   # @param external_id [String]
      #   # @param ledger_account_category_id [String]
      #   # @param ledger_account_id [String]
      #   # @param ledger_account_settlement_id [String]
      #   # @param ledger_id [String]
      #   # @param ledgerable_id [String]
      #   # @param ledgerable_type [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param order_by [ModernTreasury::Models::LedgerTransactionListParams::OrderBy]
      #   # @param partially_posts_ledger_transaction_id [String]
      #   # @param per_page [Integer]
      #   # @param posted_at [Hash{Symbol=>String}]
      #   # @param reverses_ledger_transaction_id [String]
      #   # @param status [String]
      #   # @param updated_at [Hash{Symbol=>String}]
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
      #     partially_posts_ledger_transaction_id: nil,
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
      # ```ruby
      # case ledgerable_type
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

      # @example
      # ```ruby
      # order_by => {
      #   created_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt,
      #   effective_at: ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt
      # }
      # ```
      class OrderBy < ModernTreasury::BaseModel
        # @!attribute [r] created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt, nil]
        optional :created_at,
                 enum: -> {
                   ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt]
        #   attr_writer :created_at

        # @!attribute [r] effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt, nil]
        optional :effective_at,
                 enum: -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt]
        #   attr_writer :effective_at

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
        end

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
        end
      end

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
      end
    end
  end
end
