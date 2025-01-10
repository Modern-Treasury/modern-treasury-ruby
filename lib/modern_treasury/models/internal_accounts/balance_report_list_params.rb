# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportListParams < ModernTreasury::BaseModel
        # @!attribute after_cursor
        #
        #   @return [String, nil]
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

        # @!parse
        #   # @param after_cursor [String, nil]
        #   #
        #   # @param as_of_date [String] The date of the balance report in local time.
        #   #
        #   # @param balance_report_type [String] The specific type of balance report. One of `intraday`, `previous_day`,
        #   #   `real_time`, or `other`.
        #   #
        #   # @param per_page [Integer]
        #   #
        #   def initialize(after_cursor: nil, as_of_date: nil, balance_report_type: nil, per_page: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        #
        # @example
        #
        # ```ruby
        # case balance_report_type
        # in :intraday
        #   # ...
        # in :other
        #   # ...
        # in :previous_day
        #   # ...
        # in :real_time
        #   # ...
        # end
        # ```
        class BalanceReportType < ModernTreasury::Enum
          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          finalize!
        end
      end
    end
  end
end
