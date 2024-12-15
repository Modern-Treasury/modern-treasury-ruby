# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      # @!attribute balances
      #   For example, if you want the balances as of a particular time (ISO8601), the encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`. The balances as of a time are inclusive of entries with that exact time.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances }

      # @!parse
      #   # @param balances [Object, nil] For example, if you want the balances as of a particular time (ISO8601), the
      #   #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   #   The balances as of a time are inclusive of entries with that exact time.
      #   #
      #   def initialize(balances: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Balances < ModernTreasury::BaseModel
        # @!attribute as_of_date
        #
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute effective_at
        #
        #   @return [Time]
        optional :effective_at, Time

        # @!parse
        #   # For example, if you want the balances as of a particular time (ISO8601), the
        #   #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   #   The balances as of a time are inclusive of entries with that exact time.
        #   #
        #   # @param as_of_date [String, nil]
        #   # @param effective_at [String, nil]
        #   #
        #   def initialize(as_of_date: nil, effective_at: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
