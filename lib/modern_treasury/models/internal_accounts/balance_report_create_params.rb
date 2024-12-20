# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::BaseModel
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
        #   The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType]
        required :balance_report_type,
                 enum: -> {
                   ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType
                 }

        # @!attribute balances
        #   An array of `Balance` objects.
        #
        #   @return [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>]
        required :balances,
                 ModernTreasury::ArrayOf[-> {
                   ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance
                 }]

        # @!parse
        #   # @param as_of_date [String] The date of the balance report in local time.
        #   #
        #   # @param as_of_time [String] The time (24-hour clock) of the balance report in local time.
        #   #
        #   # @param balance_report_type [String] The specific type of balance report. One of `intraday`, `previous_day`,
        #   #   `real_time`, or `other`.
        #   #
        #   # @param balances [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>] An array of `Balance` objects.
        #   #
        #   def initialize(as_of_date:, as_of_time:, balance_report_type:, balances:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
        #
        # @example
        #
        # ```ruby
        # case enum
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

        class Balance < ModernTreasury::BaseModel
          # @!attribute amount
          #   The balance amount.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute balance_type
          #   The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
          #
          #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType]
          required :balance_type,
                   enum: -> {
                     ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType
                   }

          # @!attribute vendor_code
          #   The code used by the bank when reporting this specific balance.
          #
          #   @return [String]
          required :vendor_code, String

          # @!attribute vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, or `us_bank`.
          #
          #   @return [String]
          required :vendor_code_type, String

          # @!parse
          #   # @param amount [Integer] The balance amount.
          #   #
          #   # @param balance_type [String] The specific type of balance reported. One of `opening_ledger`,
          #   #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   #   or `other`.
          #   #
          #   # @param vendor_code [String] The code used by the bank when reporting this specific balance.
          #   #
          #   # @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   #   `swift`, or `us_bank`.
          #   #
          #   def initialize(amount:, balance_type:, vendor_code:, vendor_code_type:, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
          #
          # @example
          #
          # ```ruby
          # case enum
          # in :closing_available
          #   # ...
          # in :closing_ledger
          #   # ...
          # in :current_available
          #   # ...
          # in :current_ledger
          #   # ...
          # in :opening_available
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class BalanceType < ModernTreasury::Enum
            CLOSING_AVAILABLE = :closing_available
            CLOSING_LEDGER = :closing_ledger
            CURRENT_AVAILABLE = :current_available
            CURRENT_LEDGER = :current_ledger
            OPENING_AVAILABLE = :opening_available
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY = :opening_available_next_business_day
            OPENING_LEDGER = :opening_ledger
            OTHER = :other

            finalize!
          end
        end
      end
    end
  end
end
