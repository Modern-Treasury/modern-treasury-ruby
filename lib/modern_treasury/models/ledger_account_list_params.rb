# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      optional :available_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount }

      # @!attribute balances
      #   Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]` to get the balances change between the two timestamps. The lower bound is inclusive while the upper bound is exclusive of the provided timestamps. If no value is supplied the balances will be retrieved not including that bound.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountListParams::Balances }

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :created_at, Hash

      # @!attribute currency
      #   @return [String]
      optional :currency, String

      # @!attribute ledger_account_category_id
      #   @return [String]
      optional :ledger_account_category_id, String

      # @!attribute ledger_id
      #   @return [String]
      optional :ledger_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   If you have specific names to retrieve in bulk, you can pass them as query parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #   @return [Array<String>]
      optional :name, ModernTreasury::ArrayOf.new(String)

      # @!attribute pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      optional :pending_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount }

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to filter by balance amount.
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      optional :posted_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :updated_at, Hash

      class AvailableBalanceAmount < ModernTreasury::BaseModel
        # @!attribute eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
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
        # @!attribute as_of_date
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute effective_at
        #   @return [Time]
        optional :effective_at, Time

        # @!attribute effective_at_lower_bound
        #   @return [Time]
        optional :effective_at_lower_bound, Time

        # @!attribute effective_at_upper_bound
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
        # @!attribute eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
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
        # @!attribute eq
        #   @return [Integer]
        optional :eq, Integer

        # @!attribute gt
        #   @return [Integer]
        optional :gt, Integer

        # @!attribute gte
        #   @return [Integer]
        optional :gte, Integer

        # @!attribute lt
        #   @return [Integer]
        optional :lt, Integer

        # @!attribute lte
        #   @return [Integer]
        optional :lte, Integer

        # @!attribute not_eq
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
