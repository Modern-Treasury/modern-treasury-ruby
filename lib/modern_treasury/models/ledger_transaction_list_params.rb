# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerTransactions#list
    class LedgerTransactionListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :id, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute effective_at
      #   Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #   effective at. For example, for all transactions after Jan 1 2000, use
      #   effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #   effective date. For example, for all dates after Jan 1 2000, use
      #   effective_date%5Bgt%5D=2000-01-01.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_date, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute external_id
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute ledger_account_category_id
      #
      #   @return [String, nil]
      optional :ledger_account_category_id, String

      # @!attribute ledger_account_id
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute ledger_account_settlement_id
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String

      # @!attribute ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!attribute ledgerable_id
      #
      #   @return [String, nil]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType, nil]
      optional :ledgerable_type, enum: -> { ModernTreasury::LedgerTransactionListParams::LedgerableType }

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   by only one field at a time is supported.
      #
      #   @return [ModernTreasury::Models::LedgerTransactionListParams::OrderBy, nil]
      optional :order_by, -> { ModernTreasury::LedgerTransactionListParams::OrderBy }

      # @!attribute partially_posts_ledger_transaction_id
      #
      #   @return [String, nil]
      optional :partially_posts_ledger_transaction_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute posted_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :posted_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute reverses_ledger_transaction_id
      #
      #   @return [String, nil]
      optional :reverses_ledger_transaction_id, String

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::LedgerTransactionListParams::Status }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!method initialize(id: nil, after_cursor: nil, effective_at: nil, effective_date: nil, external_id: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_settlement_id: nil, ledger_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, order_by: nil, partially_posts_ledger_transaction_id: nil, per_page: nil, posted_at: nil, reverses_ledger_transaction_id: nil, status: nil, updated_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerTransactionListParams} for more details.
      #
      #   @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      #   @param after_cursor [String, nil]
      #
      #   @param effective_at [Hash{Symbol=>Time}] Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by effecti
      #
      #   @param effective_date [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by effecti
      #
      #   @param external_id [String]
      #
      #   @param ledger_account_category_id [String]
      #
      #   @param ledger_account_id [String]
      #
      #   @param ledger_account_settlement_id [String]
      #
      #   @param ledger_id [String]
      #
      #   @param ledgerable_id [String]
      #
      #   @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param order_by [ModernTreasury::Models::LedgerTransactionListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, t
      #
      #   @param partially_posts_ledger_transaction_id [String]
      #
      #   @param per_page [Integer]
      #
      #   @param posted_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      #   @param reverses_ledger_transaction_id [String]
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status]
      #
      #   @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class OrderBy < ModernTreasury::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt, nil]
        optional :created_at, enum: -> { ModernTreasury::LedgerTransactionListParams::OrderBy::CreatedAt }

        # @!attribute effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt, nil]
        optional :effective_at, enum: -> { ModernTreasury::LedgerTransactionListParams::OrderBy::EffectiveAt }

        # @!method initialize(created_at: nil, effective_at: nil)
        #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   by only one field at a time is supported.
        #
        #   @param created_at [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt]
        #   @param effective_at [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt]

        # @see ModernTreasury::Models::LedgerTransactionListParams::OrderBy#created_at
        module CreatedAt
          extend ModernTreasury::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see ModernTreasury::Models::LedgerTransactionListParams::OrderBy#effective_at
        module EffectiveAt
          extend ModernTreasury::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
