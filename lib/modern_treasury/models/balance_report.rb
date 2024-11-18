# frozen_string_literal: true

module ModernTreasury
  module Models
    class BalanceReport < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

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
      #   @return [Symbol, ModernTreasury::Models::BalanceReport::BalanceReportType]
      required :balance_report_type, enum: -> { ModernTreasury::Models::BalanceReport::BalanceReportType }

      # @!attribute [rw] balances
      #   An array of `Balance` objects.
      #   @return [Array<ModernTreasury::Models::BalanceReport::Balance>]
      required :balances, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::BalanceReport::Balance })

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] internal_account_id
      #   The ID of one of your organization's Internal Accounts.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
      class BalanceReportType < ModernTreasury::Enum
        INTRADAY = :intraday
        OTHER = :other
        PREVIOUS_DAY = :previous_day
        REAL_TIME = :real_time
      end

      class Balance < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The balance amount.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] as_of_date
        #   The date on which the balance became true for the account.
        #   @return [Date]
        required :as_of_date, Date

        # @!attribute [rw] as_of_time
        #   The time on which the balance became true for the account.
        #   @return [String]
        required :as_of_time, String

        # @!attribute [rw] balance_type
        #   The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
        #   @return [Symbol, ModernTreasury::Models::BalanceReport::Balance::BalanceType]
        required :balance_type, enum: -> { ModernTreasury::Models::BalanceReport::Balance::BalanceType }

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] currency
        #   The currency of the balance.
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        # @!attribute [rw] value_date
        #   The date on which the balance becomes available.
        #   @return [Date]
        required :value_date, Date

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
        #   #   @option data [String] :id
        #   #   @option data [Integer] :amount The balance amount.
        #   #   @option data [String] :as_of_date The date on which the balance became true for the account.
        #   #   @option data [String] :as_of_time The time on which the balance became true for the account.
        #   #   @option data [String] :balance_type The specific type of balance reported. One of `opening_ledger`,
        #   #     `closing_ledger`, `current_ledger`, `opening_available`,
        #   #     `opening_available_next_business_day`, `closing_available`, `current_available`,
        #   #     or `other`.
        #   #   @option data [String] :created_at
        #   #   @option data [String] :currency The currency of the balance.
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :object
        #   #   @option data [String] :updated_at
        #   #   @option data [String] :value_date The date on which the balance becomes available.
        #   #   @option data [String] :vendor_code The code used by the bank when reporting this specific balance.
        #   #   @option data [String] :vendor_code_type The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
        #   #     `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
        #   #     `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
        #   #     `swift`, or `us_bank`.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of BalanceReport from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :as_of_date The date of the balance report in local time.
      #   #   @option data [String] :as_of_time The time (24-hour clock) of the balance report in local time.
      #   #   @option data [String] :balance_report_type The specific type of balance report. One of `intraday`, `previous_day`,
      #   #     `real_time`, or `other`.
      #   #   @option data [Array<Object>] :balances An array of `Balance` objects.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :internal_account_id The ID of one of your organization's Internal Accounts.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
