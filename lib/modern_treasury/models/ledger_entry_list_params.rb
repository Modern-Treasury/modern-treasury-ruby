# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerEntries#list
    class LedgerEntryListParams < ModernTreasury::Internal::Type::BaseModel
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

      # @!attribute as_of_lock_version
      #   Shows all ledger entries that were present on a ledger account at a particular
      #   `lock_version`. You must also specify `ledger_account_id`.
      #
      #   @return [Integer, nil]
      optional :as_of_lock_version, Integer

      # @!attribute direction
      #   If true, response will include ledger entries that were deleted. When you update
      #   a ledger transaction to specify a new set of entries, the previous entries are
      #   deleted.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute effective_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   transaction's effective time. Format ISO8601
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :effective_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   transaction's effective date. Format YYYY-MM-DD
      #
      #   @return [Hash{Symbol=>Date}, nil]
      optional :effective_date, ModernTreasury::Internal::Type::HashOf[Date]

      # @!attribute ledger_account_category_id
      #   Get all ledger entries that match the direction specified. One of `credit`,
      #   `debit`.
      #
      #   @return [String, nil]
      optional :ledger_account_category_id, String

      # @!attribute ledger_account_id
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   lock_version of a ledger account. For example, for all entries created at or
      #   before before lock_version 1000 of a ledger account, use
      #   `ledger_account_lock_version%5Blte%5D=1000`.
      #
      #   @return [Hash{Symbol=>Integer}, nil]
      optional :ledger_account_lock_version, ModernTreasury::Internal::Type::HashOf[Integer]

      # @!attribute ledger_account_payout_id
      #
      #   @return [String, nil]
      optional :ledger_account_payout_id, String

      # @!attribute ledger_account_settlement_id
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String

      # @!attribute ledger_account_statement_id
      #   Get all ledger entries that are included in the ledger account statement.
      #
      #   @return [String, nil]
      optional :ledger_account_statement_id, String

      # @!attribute ledger_transaction_id
      #
      #   @return [String, nil]
      optional :ledger_transaction_id, String

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
      #   @return [ModernTreasury::Models::LedgerEntryListParams::OrderBy, nil]
      optional :order_by, -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy }

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute show_balances
      #   If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
      #
      #   @return [Boolean, nil]
      optional :show_balances, ModernTreasury::Internal::Type::Boolean

      # @!attribute show_deleted
      #   If true, response will include ledger entries that were deleted. When you update
      #   a ledger transaction to specify a new set of entries, the previous entries are
      #   deleted.
      #
      #   @return [Boolean, nil]
      optional :show_deleted, ModernTreasury::Internal::Type::Boolean

      # @!attribute status
      #   Get all ledger entries that match the status specified. One of `pending`,
      #   `posted`, or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::LedgerEntryListParams::Status }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!method initialize(id: nil, after_cursor: nil, as_of_lock_version: nil, direction: nil, effective_at: nil, effective_date: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_lock_version: nil, ledger_account_payout_id: nil, ledger_account_settlement_id: nil, ledger_account_statement_id: nil, ledger_transaction_id: nil, metadata: nil, order_by: nil, per_page: nil, show_balances: nil, show_deleted: nil, status: nil, updated_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerEntryListParams} for more details.
      #
      #   @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #   ...
      #
      #   @param after_cursor [String, nil]
      #
      #   @param as_of_lock_version [Integer] Shows all ledger entries that were present on a ledger account at a particular `
      #   ...
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] If true, response will include ledger entries that were deleted. When you update
      #   ...
      #
      #   @param effective_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the tra
      #   ...
      #
      #   @param effective_date [Hash{Symbol=>Date}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the tra
      #   ...
      #
      #   @param ledger_account_category_id [String] Get all ledger entries that match the direction specified. One of `credit`, `deb
      #   ...
      #
      #   @param ledger_account_id [String]
      #
      #   @param ledger_account_lock_version [Hash{Symbol=>Integer}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the loc
      #   ...
      #
      #   @param ledger_account_payout_id [String]
      #
      #   @param ledger_account_settlement_id [String]
      #
      #   @param ledger_account_statement_id [String] Get all ledger entries that are included in the ledger account statement.
      #
      #   @param ledger_transaction_id [String]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   ...
      #
      #   @param order_by [ModernTreasury::Models::LedgerEntryListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, t
      #   ...
      #
      #   @param per_page [Integer]
      #
      #   @param show_balances [Boolean] If true, response will include the balances attached to the ledger entry. If the
      #   ...
      #
      #   @param show_deleted [Boolean] If true, response will include ledger entries that were deleted. When you update
      #   ...
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status] Get all ledger entries that match the status specified. One of `pending`, `poste
      #   ...
      #
      #   @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class OrderBy < ModernTreasury::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt, nil]
        optional :created_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt }

        # @!attribute effective_at
        #
        #   @return [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt, nil]
        optional :effective_at, enum: -> { ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt }

        # @!method initialize(created_at: nil, effective_at: nil)
        #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        #   by only one field at a time is supported.
        #
        #   @param created_at [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::CreatedAt]
        #   @param effective_at [Symbol, ModernTreasury::Models::LedgerEntryListParams::OrderBy::EffectiveAt]

        # @see ModernTreasury::Models::LedgerEntryListParams::OrderBy#created_at
        module CreatedAt
          extend ModernTreasury::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see ModernTreasury::Models::LedgerEntryListParams::OrderBy#effective_at
        module EffectiveAt
          extend ModernTreasury::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Get all ledger entries that match the status specified. One of `pending`,
      # `posted`, or `archived`.
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
