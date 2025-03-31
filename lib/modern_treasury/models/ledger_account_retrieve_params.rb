# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountRetrieveParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] balances
      #   Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #     balance as of a specific Ledger Account `lock_version`.
      #
      #   @return [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances, nil]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountRetrieveParams::Balances }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances]
      #   attr_writer :balances

      # @!parse
      #   # @param balances [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(balances: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Balances < ModernTreasury::BaseModel
        # @!attribute [r] as_of_date
        #
        #   @return [Date, nil]
        optional :as_of_date, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :as_of_date

        # @!attribute [r] as_of_lock_version
        #
        #   @return [Integer, nil]
        optional :as_of_lock_version, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :as_of_lock_version

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
        #   #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
        #   #   balance as of a specific Ledger Account `lock_version`.
        #   #
        #   # @param as_of_date [Date]
        #   # @param as_of_lock_version [Integer]
        #   # @param effective_at [Time]
        #   # @param effective_at_lower_bound [Time]
        #   # @param effective_at_upper_bound [Time]
        #   #
        #   def initialize(
        #     as_of_date: nil,
        #     as_of_lock_version: nil,
        #     effective_at: nil,
        #     effective_at_lower_bound: nil,
        #     effective_at_upper_bound: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
