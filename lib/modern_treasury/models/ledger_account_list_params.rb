# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccounts#list
    class LedgerAccountListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
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

      # @!attribute [r] available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount, nil]
      optional :available_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      #   attr_writer :available_balance_amount

      # @!attribute [r] balances
      #   Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::Balances, nil]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountListParams::Balances }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountListParams::Balances]
      #   attr_writer :balances

      # @!attribute [r] created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :created_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :created_at

      # @!attribute [r] currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!attribute [r] ledger_account_category_id
      #
      #   @return [String, nil]
      optional :ledger_account_category_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_category_id

      # @!attribute [r] ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_id

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

      # @!attribute [r] name
      #   If you have specific names to retrieve in bulk, you can pass them as query
      #     parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :name, ModernTreasury::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :name

      # @!attribute [r] pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount, nil]
      optional :pending_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      #   attr_writer :pending_balance_amount

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, nil]
      optional :posted_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      #   attr_writer :posted_balance_amount

      # @!attribute [r] updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
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
      #   # @param available_balance_amount [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount]
      #   # @param balances [ModernTreasury::Models::LedgerAccountListParams::Balances]
      #   # @param created_at [Hash{Symbol=>Time}]
      #   # @param currency [String]
      #   # @param ledger_account_category_id [String]
      #   # @param ledger_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [Array<String>]
      #   # @param pending_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount]
      #   # @param per_page [Integer]
      #   # @param posted_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount]
      #   # @param updated_at [Hash{Symbol=>Time}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class AvailableBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [r] eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :eq

        # @!attribute [r] gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gt

        # @!attribute [r] gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gte

        # @!attribute [r] lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lt

        # @!attribute [r] lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lte

        # @!attribute [r] not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :not_eq

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

      class Balances < ModernTreasury::BaseModel
        # @!attribute [r] as_of_date
        #
        #   @return [Date, nil]
        optional :as_of_date, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :as_of_date

        # @!attribute [r] effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_at

        # @!attribute [r] effective_at_lower_bound
        #
        #   @return [Time, nil]
        optional :effective_at_lower_bound, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_at_lower_bound

        # @!attribute [r] effective_at_upper_bound
        #
        #   @return [Time, nil]
        optional :effective_at_upper_bound, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_at_upper_bound

        # @!parse
        #   # Use `balances[effective_at_lower_bound]` and
        #   #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   #   not including that bound.
        #   #
        #   # @param as_of_date [Date]
        #   # @param effective_at [Time]
        #   # @param effective_at_lower_bound [Time]
        #   # @param effective_at_upper_bound [Time]
        #   #
        #   def initialize(as_of_date: nil, effective_at: nil, effective_at_lower_bound: nil, effective_at_upper_bound: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      class PendingBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [r] eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :eq

        # @!attribute [r] gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gt

        # @!attribute [r] gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gte

        # @!attribute [r] lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lt

        # @!attribute [r] lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lte

        # @!attribute [r] not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :not_eq

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

      class PostedBalanceAmount < ModernTreasury::BaseModel
        # @!attribute [r] eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :eq

        # @!attribute [r] gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gt

        # @!attribute [r] gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :gte

        # @!attribute [r] lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lt

        # @!attribute [r] lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :lte

        # @!attribute [r] not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :not_eq

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
