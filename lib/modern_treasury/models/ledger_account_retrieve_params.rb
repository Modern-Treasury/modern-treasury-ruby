# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountRetrieveParams < ModernTreasury::BaseModel
      # @!attribute [rw] balances
      #   Use `balances[effective_at_lower_bound]` and `balances[effective_at_upper_bound]` to get the balances change between the two timestamps. The lower bound is inclusive while the upper bound is exclusive of the provided timestamps. If no value is supplied the balances will be retrieved not including that bound. Use `balances[as_of_lock_version]` to retrieve a balance as of a specific Ledger Account `lock_version`.
      #   @return [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountRetrieveParams::Balances }

      class Balances < ModernTreasury::BaseModel
        # @!attribute [rw] as_of_date
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute [rw] as_of_lock_version
        #   @return [Integer]
        optional :as_of_lock_version, Integer

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
        #   #   @option data [Integer, nil] :as_of_lock_version
        #   #   @option data [String, nil] :effective_at
        #   #   @option data [String, nil] :effective_at_lower_bound
        #   #   @option data [String, nil] :effective_at_upper_bound
        #   def initialize(data = {}) = super
      end
    end
  end
end
