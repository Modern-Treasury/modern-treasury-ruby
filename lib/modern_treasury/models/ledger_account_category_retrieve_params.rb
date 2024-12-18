# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      # @!attribute balances
      #   For example, if you want the balances as of a particular time (ISO8601), the encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`. The balances as of a time are inclusive of entries with that exact time.
      #   @return [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances }

      class Balances < ModernTreasury::BaseModel
        # @!attribute as_of_date
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute effective_at
        #   @return [Time]
        optional :effective_at, Time

        # @!parse
        #   # Create a new instance of Balances from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :as_of_date
        #   #   @option data [String, nil] :effective_at
        #   def initialize(data = {}) = super
      end
    end
  end
end
