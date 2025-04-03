# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#retrieve
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute [r] balances
      #   For example, if you want the balances as of a particular time (ISO8601), the
      #     encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #     The balances as of a time are inclusive of entries with that exact time.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances, nil]
      optional :balances, -> { ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances }

      # @!parse
      #   # @return [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances]
      #   attr_writer :balances

      # @!parse
      #   # @param balances [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances]
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

        # @!attribute [r] effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_at

        # @!parse
        #   # For example, if you want the balances as of a particular time (ISO8601), the
        #   #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   #   The balances as of a time are inclusive of entries with that exact time.
        #   #
        #   # @param as_of_date [Date]
        #   # @param effective_at [Time]
        #   #
        #   def initialize(as_of_date: nil, effective_at: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
