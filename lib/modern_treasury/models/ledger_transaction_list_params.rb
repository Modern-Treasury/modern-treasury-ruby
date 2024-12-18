# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerTransactionListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute effective_at
      #   Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by effective at. For example, for all transactions after Jan 1 2000, use effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #   @return [Hash]
      optional :effective_at, Hash

      # @!attribute effective_date
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by effective date. For example, for all dates after Jan 1 2000, use effective_date%5Bgt%5D=2000-01-01.
      #   @return [Hash]
      optional :effective_date, Hash

      # @!attribute external_id
      #   @return [String]
      optional :external_id, String

      # @!attribute ledger_account_category_id
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute ledger_account_id
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute ledger_account_settlement_id
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute ledger_id
      #   @return [String]
      optional :ledger_id, String

      # @!attribute ledgerable_id
      #   @return [String]
      optional :ledgerable_id, String

      # @!attribute ledgerable_type
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      optional :ledgerable_type,
               enum: -> { ModernTreasury::Models::LedgerTransactionListParams::LedgerableType }

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute order_by
      #   Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering by only one field at a time is supported.
      #   @return [ModernTreasury::Models::LedgerTransactionListParams::OrderBy]
      optional :order_by, -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy }

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute posted_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :posted_at, Hash

      # @!attribute reverses_ledger_transaction_id
      #   @return [String]
      optional :reverses_ledger_transaction_id, String

      # @!attribute status
      #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::LedgerTransactionListParams::Status }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :updated_at, Hash

      class LedgerableType < ModernTreasury::Enum
        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      class OrderBy < ModernTreasury::BaseModel
        # @!attribute created_at
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt]
        optional :created_at,
                 enum: -> {
                   ModernTreasury::Models::LedgerTransactionListParams::OrderBy::CreatedAt
                 }

        # @!attribute effective_at
        #   @return [Symbol, ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt]
        optional :effective_at,
                 enum: -> { ModernTreasury::Models::LedgerTransactionListParams::OrderBy::EffectiveAt }

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

      class Status < ModernTreasury::Enum
        PENDING = :pending
        POSTED = :posted
        ARCHIVED = :archived
      end
    end
  end
end
