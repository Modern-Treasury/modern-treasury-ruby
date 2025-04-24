# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccounts#list
    class LedgerAccountListParams < ModernTreasury::Internal::Type::BaseModel
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

      # @!attribute available_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount, nil]
      optional :available_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount }

      # @!attribute balances
      #   Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::Balances, nil]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountListParams::Balances }

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :created_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute ledger_account_category_id
      #
      #   @return [String, nil]
      optional :ledger_account_category_id, String

      # @!attribute ledger_id
      #
      #   @return [String, nil]
      optional :ledger_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   If you have specific names to retrieve in bulk, you can pass them as query
      #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :name, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute pending_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount, nil]
      optional :pending_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount }

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute posted_balance_amount
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      #
      #   @return [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, nil]
      optional :posted_balance_amount,
               -> { ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount }

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!method initialize(id: nil, after_cursor: nil, available_balance_amount: nil, balances: nil, created_at: nil, currency: nil, ledger_account_category_id: nil, ledger_id: nil, metadata: nil, name: nil, pending_balance_amount: nil, per_page: nil, posted_balance_amount: nil, updated_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountListParams} for more details.
      #
      #   @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #   ...
      #
      #   @param after_cursor [String, nil]
      #
      #   @param available_balance_amount [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      #   ...
      #
      #   @param balances [ModernTreasury::Models::LedgerAccountListParams::Balances] Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]
      #   ...
      #
      #   @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the cre
      #   ...
      #
      #   @param currency [String]
      #
      #   @param ledger_account_category_id [String]
      #
      #   @param ledger_id [String]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   ...
      #
      #   @param name [Array<String>] If you have specific names to retrieve in bulk, you can pass them as query param
      #   ...
      #
      #   @param pending_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      #   ...
      #
      #   @param per_page [Integer]
      #
      #   @param posted_balance_amount [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to fi
      #   ...
      #
      #   @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the upd
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class AvailableBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!method initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        #
        #   @param eq [Integer]
        #   @param gt [Integer]
        #   @param gte [Integer]
        #   @param lt [Integer]
        #   @param lte [Integer]
        #   @param not_eq [Integer]
      end

      class Balances < ModernTreasury::Internal::Type::BaseModel
        # @!attribute as_of_date
        #
        #   @return [Date, nil]
        optional :as_of_date, Date

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!attribute effective_at_lower_bound
        #
        #   @return [Time, nil]
        optional :effective_at_lower_bound, Time

        # @!attribute effective_at_upper_bound
        #
        #   @return [Time, nil]
        optional :effective_at_upper_bound, Time

        # @!method initialize(as_of_date: nil, effective_at: nil, effective_at_lower_bound: nil, effective_at_upper_bound: nil)
        #   Use `balances[effective_at_lower_bound]` and
        #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   not including that bound.
        #
        #   @param as_of_date [Date]
        #   @param effective_at [Time]
        #   @param effective_at_lower_bound [Time]
        #   @param effective_at_upper_bound [Time]
      end

      class PendingBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!method initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        #
        #   @param eq [Integer]
        #   @param gt [Integer]
        #   @param gte [Integer]
        #   @param lt [Integer]
        #   @param lte [Integer]
        #   @param not_eq [Integer]
      end

      class PostedBalanceAmount < ModernTreasury::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Integer, nil]
        optional :eq, Integer

        # @!attribute gt
        #
        #   @return [Integer, nil]
        optional :gt, Integer

        # @!attribute gte
        #
        #   @return [Integer, nil]
        optional :gte, Integer

        # @!attribute lt
        #
        #   @return [Integer, nil]
        optional :lt, Integer

        # @!attribute lte
        #
        #   @return [Integer, nil]
        optional :lte, Integer

        # @!attribute not_eq
        #
        #   @return [Integer, nil]
        optional :not_eq, Integer

        # @!method initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil)
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        #
        #   @param eq [Integer]
        #   @param gt [Integer]
        #   @param gte [Integer]
        #   @param lt [Integer]
        #   @param lte [Integer]
        #   @param not_eq [Integer]
      end
    end
  end
end
