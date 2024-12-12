# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      optional :available_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount }

      # @!attribute [rw] balances
      #   Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]` to get the balances change between the two timestamps. The lower bound is inclusive while the upper bound is exclusive of the provided timestamps. If no value is supplied the balances will be retrieved not including that bound.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountListParams::Balances }

      # @!attribute [rw] created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :created_at, Hash

      # @!attribute [rw] currency
      #   @return [String]
      optional :currency, String

      # @!attribute [rw] ledger_account_category_id
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute [rw] ledger_id
      #   @return [String]
      optional :ledger_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   If you have specific names to retrieve in bulk, you can pass them as query parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #   @return [Array<String>]
      optional :name, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      optional :pending_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount }

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      optional :posted_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount }

      # @!attribute [rw] updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :updated_at, Hash

      class AvailableBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [rw] eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute [rw] gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute [rw] gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute [rw] lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute [rw] lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute [rw] not_eq
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Create a new instance of AvailableBalanceAmount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer, nil] :eq
        #   #   @option data [Integer, nil] :gt
        #   #   @option data [Integer, nil] :gte
        #   #   @option data [Integer, nil] :lt
        #   #   @option data [Integer, nil] :lte
        #   #   @option data [Integer, nil] :not_eq
        #   def initialize(data = {}) = super
      end

      class Balances < ModernTreasury::BaseModel
        # @!attribute [rw] as_of_date
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute [rw] effective_at
        #   @return [Time]
        optional :effective_at, Time

        # @!attribute [rw] effective_at_lower_bound
        #   @return [Time]
        optional :effective_at_lower_bound, Time

        # @!attribute [rw] effective_at_upper_bound
        #   @return [Time]
        optional :effective_at_upper_bound, Time

        # @!parse
        #   # Create a new instance of Balances from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :as_of_date
        #   #   @option data [String, nil] :effective_at
        #   #   @option data [String, nil] :effective_at_lower_bound
        #   #   @option data [String, nil] :effective_at_upper_bound
        #   def initialize(data = {}) = super
      end

      class PendingBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [rw] eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute [rw] gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute [rw] gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute [rw] lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute [rw] lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute [rw] not_eq
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Create a new instance of PendingBalanceAmount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer, nil] :eq
        #   #   @option data [Integer, nil] :gt
        #   #   @option data [Integer, nil] :gte
        #   #   @option data [Integer, nil] :lt
        #   #   @option data [Integer, nil] :lte
        #   #   @option data [Integer, nil] :not_eq
        #   def initialize(data = {}) = super
      end

      class PostedBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [rw] eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute [rw] gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute [rw] gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute [rw] lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute [rw] lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute [rw] not_eq
        #   @return [Integer]
        optional :not_eq, Integer

        # @!parse
        #   # Create a new instance of PostedBalanceAmount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer, nil] :eq
        #   #   @option data [Integer, nil] :gt
        #   #   @option data [Integer, nil] :gte
        #   #   @option data [Integer, nil] :lt
        #   #   @option data [Integer, nil] :lte
        #   #   @option data [Integer, nil] :not_eq
        #   def initialize(data = {}) = super
      end
    end
  end
end
