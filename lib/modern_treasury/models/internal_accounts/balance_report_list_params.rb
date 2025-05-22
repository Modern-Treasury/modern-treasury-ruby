# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @see ModernTreasury::Resources::InternalAccounts::BalanceReports#list
      class BalanceReportListParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute as_of_date
        #   The date of the balance report in local time.
        #
        #   @return [Date, nil]
        optional :as_of_date, Date

        # @!attribute balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType, nil]
        optional :balance_report_type,
                 enum: -> { ModernTreasury::InternalAccounts::BalanceReportListParams::BalanceReportType }

        # @!attribute per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!method initialize(after_cursor: nil, as_of_date: nil, balance_report_type: nil, per_page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::InternalAccounts::BalanceReportListParams} for more
        #   details.
        #
        #   @param after_cursor [String, nil]
        #
        #   @param as_of_date [Date] The date of the balance report in local time.
        #
        #   @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType] The specific type of balance report. One of `intraday`, `previous_day`, `real_ti
        #
        #   @param per_page [Integer]
        #
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        module BalanceReportType
          extend ModernTreasury::Internal::Type::Enum

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
