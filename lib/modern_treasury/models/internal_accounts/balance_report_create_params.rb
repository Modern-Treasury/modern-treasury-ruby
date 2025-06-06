# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @see ModernTreasury::Resources::InternalAccounts::BalanceReports#create
      class BalanceReportCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute as_of_date
        #   The date of the balance report in local time.
        #
        #   @return [Date]
        required :as_of_date, Date

        # @!attribute as_of_time
        #   The time (24-hour clock) of the balance report in local time.
        #
        #   @return [String]
        required :as_of_time, String

        # @!attribute balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType]
        required :balance_report_type,
                 enum: -> { ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType }

        # @!attribute balances
        #   An array of `Balance` objects.
        #
        #   @return [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>]
        required :balances,
                 -> {
                   ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance]
                 }

        # @!method initialize(as_of_date:, as_of_time:, balance_report_type:, balances:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams} for more
        #   details.
        #
        #   @param as_of_date [Date] The date of the balance report in local time.
        #
        #   @param as_of_time [String] The time (24-hour clock) of the balance report in local time.
        #
        #   @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType] The specific type of balance report. One of `intraday`, `previous_day`, `real_ti
        #
        #   @param balances [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>] An array of `Balance` objects.
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

        class Balance < ModernTreasury::Internal::Type::BaseModel
          # @!attribute amount
          #   The balance amount.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute balance_type
          #   The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
          #
          #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType]
          required :balance_type,
                   enum: -> {
                     ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType
                   }

          # @!attribute vendor_code
          #   The code used by the bank when reporting this specific balance.
          #
          #   @return [String]
          required :vendor_code, String

          # @!attribute vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   `swift`, or `us_bank`.
          #
          #   @return [String, nil]
          required :vendor_code_type, String, nil?: true

          # @!method initialize(amount:, balance_type:, vendor_code:, vendor_code_type:)
          #   Some parameter documentations has been truncated, see
          #   {ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance}
          #   for more details.
          #
          #   @param amount [Integer] The balance amount.
          #
          #   @param balance_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType] The specific type of balance reported. One of `opening_ledger`, `closing_ledger`
          #
          #   @param vendor_code [String] The code used by the bank when reporting this specific balance.
          #
          #   @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          #
          # @see ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance#balance_type
          module BalanceType
            extend ModernTreasury::Internal::Type::Enum

            CLOSING_AVAILABLE = :closing_available
            CLOSING_LEDGER = :closing_ledger
            CURRENT_AVAILABLE = :current_available
            CURRENT_LEDGER = :current_ledger
            OPENING_AVAILABLE = :opening_available
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY = :opening_available_next_business_day
            OPENING_LEDGER = :opening_ledger
            OTHER = :other
            PREVIOUSLY_CLOSED_BOOK = :previously_closed_book

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
