# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::BaseModel
        # @!attribute [rw] as_of_date
        #   The date of the balance report in local time.
        #   @return [Date]
        required :as_of_date, Date

        # @!attribute [rw] as_of_time
        #   The time (24-hour clock) of the balance report in local time.
        #   @return [String]
        required :as_of_time, String

        # @!attribute [rw] balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType]
        required :balance_report_type,
                 enum: -> {
                   ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType
                 }

        # @!attribute [rw] balances
        #   An array of `Balance` objects.
        #   @return [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>]
        required :balances,
                 ModernTreasury::ArrayOf.new(
                   -> {
                     ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance
                   }
                 )

        # The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        class BalanceReportType < ModernTreasury::Enum
          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time
        end

        class Balance < ModernTreasury::BaseModel
          # @!attribute [rw] amount
          #   The balance amount.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] balance_type
          #   The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
          #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType]
          required :balance_type,
                   enum: -> {
                     ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType
                   }

          # @!attribute [rw] vendor_code
          #   The code used by the bank when reporting this specific balance.
          #   @return [String]
          required :vendor_code, String

          # @!attribute [rw] vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, or `us_bank`.
          #   @return [String]
          required :vendor_code_type, String

          # The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
          class BalanceType < ModernTreasury::Enum
            CLOSING_AVAILABLE = :closing_available
            CLOSING_LEDGER = :closing_ledger
            CURRENT_AVAILABLE = :current_available
            CURRENT_LEDGER = :current_ledger
            OPENING_AVAILABLE = :opening_available
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY = :opening_available_next_business_day
            OPENING_LEDGER = :opening_ledger
            OTHER = :other
          end

          # @!parse
          #   # Create a new instance of Balance from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The balance amount.
          #   #   @option data [String] :balance_type The specific type of balance reported. One of `opening_ledger`,
          #   #     `closing_ledger`, `current_ledger`, `opening_available`,
          #   #     `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   #     or `other`.
          #   #   @option data [String] :vendor_code The code used by the bank when reporting this specific balance.
          #   #   @option data [String] :vendor_code_type The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   #     `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   #     `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   #     `swift`, or `us_bank`.
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
