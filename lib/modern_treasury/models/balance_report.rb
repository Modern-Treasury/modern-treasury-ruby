# frozen_string_literal: true

module ModernTreasury
  module Models
    class BalanceReport < BaseModel
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

      class Balance < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The balance amount.
        #   @return [Integer]
        required :amount, Integer

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

        # Create a new instance of Balance from a Hash of raw data.
        #
        # @overload initialize(id: nil, amount: nil, balance_type: nil, created_at: nil, currency: nil, live_mode: nil, object: nil, updated_at: nil, vendor_code: nil, vendor_code_type: nil)
        # @param id [String]
        # @param amount [Integer] The balance amount.
        # @param balance_type [String] The specific type of balance reported. One of `opening_ledger`,
        #   `closing_ledger`, `current_ledger`, `opening_available`,
        #   `opening_available_next_business_day`, `closing_available`, `current_available`,
        #   or `other`.
        # @param created_at [String]
        # @param currency [String] The currency of the balance.
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param object [String]
        # @param updated_at [String]
        # @param vendor_code [String] The code used by the bank when reporting this specific balance.
        # @param vendor_code_type [String] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
        #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
        #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
        #   `swift`, or `us_bank`.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of BalanceReport from a Hash of raw data.
      #
      # @overload initialize(id: nil, as_of_date: nil, as_of_time: nil, balance_report_type: nil, balances: nil, created_at: nil, internal_account_id: nil, live_mode: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param as_of_date [String] The date of the balance report in local time.
      # @param as_of_time [String] The time (24-hour clock) of the balance report in local time.
      # @param balance_report_type [String] The specific type of balance report. One of `intraday`, `previous_day`,
      #   `real_time`, or `other`.
      # @param balances [Array<Object>] An array of `Balance` objects.
      # @param created_at [String]
      # @param internal_account_id [String] The ID of one of your organization's Internal Accounts.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
