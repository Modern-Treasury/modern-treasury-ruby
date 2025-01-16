# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      optional :available_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount }

      # @!attribute balances
      #   Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]` to get the balances change between the two timestamps. The lower bound is inclusive while the upper bound is exclusive of the provided timestamps. If no value is supplied the balances will be retrieved not including that bound.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountListParams::Balances }

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}]
      optional :created_at, ModernTreasury::HashOf[Time]

      # @!attribute currency
      #
      #   @return [String]
      optional :currency, String

      # @!attribute ledger_account_category_id
      #
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute ledger_id
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   If you have specific names to retrieve in bulk, you can pass them as query parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #
      #   @return [Array<String>]
      optional :name, ModernTreasury::ArrayOf[String]

      # @!attribute pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      optional :pending_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      optional :posted_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}]
      optional :updated_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query
      #   #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   #
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param available_balance_amount [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   #   filter by balance amount.
      #   #
      #   # @param balances [ModernTreasury::Models::LedgerAccountListParams::Balances] Use `balances[effective_at_lower_bound]` and
      #   #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   #   not including that bound.
      #   #
      #   # @param created_at [Hash{Symbol=>String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   # @param currency [String]
      #   #
      #   # @param ledger_account_category_id [String]
      #   #
      #   # @param ledger_id [String]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param name [Array<String>] If you have specific names to retrieve in bulk, you can pass them as query
      #   #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #   #
      #   # @param pending_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   #   filter by balance amount.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param posted_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   #   filter by balance amount.
      #   #
      #   # @param updated_at [Hash{Symbol=>String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   def initialize(
      #     id: nil,
      #     after_cursor: nil,
      #     available_balance_amount: nil,
      #     balances: nil,
      #     created_at: nil,
      #     currency: nil,
      #     ledger_account_category_id: nil,
      #     ledger_id: nil,
      #     metadata: nil,
      #     name: nil,
      #     pending_balance_amount: nil,
      #     per_page: nil,
      #     posted_balance_amount: nil,
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # available_balance_amount => {
      #   eq: Integer,
      #   gt: Integer,
      #   gte: Integer,
      #   lt: Integer,
      #   lte: Integer
      # }
      # ```
      class AvailableBalanceAmount < ModernTreasury::BaseModel
        # @!attribute eq
        #
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   #   filter by balance amount.
        #   #
        #   # @param eq [Integer]
        #   # @param gt [Integer]
        #   # @param gte [Integer]
        #   # @param lt [Integer]
        #   # @param lte [Integer]
        #   # @param not_eq [Integer]
        #   #
        #   def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      # ```ruby
      # balances => {
      #   as_of_date: Date,
      #   effective_at: Time,
      #   effective_at_lower_bound: Time,
      #   effective_at_upper_bound: Time
      # }
      # ```
      class Balances < ModernTreasury::BaseModel
        # @!attribute as_of_date
        #
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute effective_at
        #
        #   @return [Time]
        optional :effective_at, Time

        # @!attribute effective_at_lower_bound
        #
        #   @return [Time]
        optional :effective_at_lower_bound, Time

        # @!attribute effective_at_upper_bound
        #
        #   @return [Time]
        optional :effective_at_upper_bound, Time

        # @!parse
        #   # Use `balances[effective_at_lower_bound]` and
        #   #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   #   not including that bound.
        #   #
        #   # @param as_of_date [String]
        #   # @param effective_at [String]
        #   # @param effective_at_lower_bound [String]
        #   # @param effective_at_upper_bound [String]
        #   #
        #   def initialize(as_of_date: nil, effective_at: nil, effective_at_lower_bound: nil, effective_at_upper_bound: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      # ```ruby
      # pending_balance_amount => {
      #   eq: Integer,
      #   gt: Integer,
      #   gte: Integer,
      #   lt: Integer,
      #   lte: Integer
      # }
      # ```
      class PendingBalanceAmount < ModernTreasury::BaseModel
        # @!attribute eq
        #
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   #   filter by balance amount.
        #   #
        #   # @param eq [Integer]
        #   # @param gt [Integer]
        #   # @param gte [Integer]
        #   # @param lt [Integer]
        #   # @param lte [Integer]
        #   # @param not_eq [Integer]
        #   #
        #   def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      # ```ruby
      # posted_balance_amount => {
      #   eq: Integer,
      #   gt: Integer,
      #   gte: Integer,
      #   lt: Integer,
      #   lte: Integer
      # }
      # ```
      class PostedBalanceAmount < ModernTreasury::BaseModel
        # @!attribute eq
        #
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   #   filter by balance amount.
        #   #
        #   # @param eq [Integer]
        #   # @param gt [Integer]
        #   # @param gte [Integer]
        #   # @param lt [Integer]
        #   # @param lte [Integer]
        #   # @param not_eq [Integer]
        #   #
        #   def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
