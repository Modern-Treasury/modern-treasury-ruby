# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountRetrieveParams < ModernTreasury::BaseModel
      # @!attribute balances
      #   Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]` to get the balances change between the two timestamps. The lower bound is inclusive while the upper bound is exclusive of the provided timestamps. If no value is supplied the balances will be retrieved not including that bound. Use `balances[as_of_lock_version]` to retrieve a balance as of a specific Ledger Account `lock_version`.
      #
      #   @return [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountRetrieveParams::Balances }

      # @!parse
      #   # @param balances [Object, nil] Use `balances[effective_at_lower_bound]` and
      #   #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #   #   balance as of a specific Ledger Account `lock_version`.
      #   #
      #   def initialize(balances: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Balances < ModernTreasury::BaseModel
        # @!attribute as_of_date
        #
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute as_of_lock_version
        #
        #   @return [Integer]
        optional :as_of_lock_version, Integer

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
        #   #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
        #   #   balance as of a specific Ledger Account `lock_version`.
        #   #
        #   # @param as_of_date [String, nil]
        #   # @param as_of_lock_version [Integer, nil]
        #   # @param effective_at [String, nil]
        #   # @param effective_at_lower_bound [String, nil]
        #   # @param effective_at_upper_bound [String, nil]
        #   #
        #   def initialize(
        #     as_of_date: nil,
        #     as_of_lock_version: nil,
        #     effective_at: nil,
        #     effective_at_lower_bound: nil,
        #     effective_at_upper_bound: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
