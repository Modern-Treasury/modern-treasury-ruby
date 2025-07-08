# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#retrieve
    class LedgerAccountCategoryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute balances
      #   For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time, but
      #   with respect to the ledger accounts that are currently present in the category.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances, nil]
      optional :balances, -> { ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances }

      # @!method initialize(balances: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountCategoryRetrieveParams} for more details.
      #
      #   @param balances [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances] For example, if you want the balances as of a particular time (ISO8601), the enc
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class Balances < ModernTreasury::Internal::Type::BaseModel
        # @!attribute as_of_date
        #
        #   @return [Date, nil]
        optional :as_of_date, Date

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!method initialize(as_of_date: nil, effective_at: nil)
        #   For example, if you want the balances as of a particular time (ISO8601), the
        #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   The balances as of a time are inclusive of entries with that exact time, but
        #   with respect to the ledger accounts that are currently present in the category.
        #
        #   @param as_of_date [Date]
        #   @param effective_at [Time]
      end
    end
  end
end
