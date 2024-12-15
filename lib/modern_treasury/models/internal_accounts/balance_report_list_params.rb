# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportListParams < ModernTreasury::BaseModel
        # @!attribute after_cursor
        #
        #   @return [String]
        optional :after_cursor, String

        # @!attribute as_of_date
        #   The date of the balance report in local time.
        #
        #   @return [Date]
        optional :as_of_date, Date

        # @!attribute balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType]
        optional :balance_report_type,
                 enum: -> {
                   ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType
                 }

        # @!attribute per_page
        #
        #   @return [Integer]
        optional :per_page, Integer

        # The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        class BalanceReportType < ModernTreasury::Enum
          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time
        end
      end
    end
  end
end
