# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @example
      # ```ruby
      # balance_report => {
      #   id: String,
      #   as_of_date: Date,
      #   as_of_time: String,
      #   balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType,
      #   balances: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance] === _1 },
      #   **_
      # }
      # ```
      class BalanceReport < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute as_of_date
        #   The date of the balance report in local time.
        #
        #   @return [Date]
        required :as_of_date, Date

        # @!attribute as_of_time
        #   The time (24-hour clock) of the balance report in local time.
        #
        #   @return [String, nil]
        required :as_of_time, String, nil?: true

        # @!attribute balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`,
        #     `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType]
        required :balance_report_type,
                 enum: -> { ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType }

        # @!attribute balances
        #   An array of `Balance` objects.
        #
        #   @return [Array<ModernTreasury::Models::InternalAccounts::BalanceReport::Balance>]
        required :balances,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]
                 }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute internal_account_id
        #   The ID of one of your organization's Internal Accounts.
        #
        #   @return [String]
        required :internal_account_id, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param as_of_date [Date]
        #   # @param as_of_time [String, nil]
        #   # @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType]
        #   # @param balances [Array<ModernTreasury::Models::InternalAccounts::BalanceReport::Balance>]
        #   # @param created_at [Time]
        #   # @param internal_account_id [String]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(
        #     id:,
        #     as_of_date:,
        #     as_of_time:,
        #     balance_report_type:,
        #     balances:,
        #     created_at:,
        #     internal_account_id:,
        #     live_mode:,
        #     object:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        #
        # @example
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

        # @example
        # ```ruby
        # balance => {
        #   id: String,
        #   amount: Integer,
        #   as_of_date: Date,
        #   as_of_time: String,
        #   balance_type: ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType,
        #   **_
        # }
        # ```
        class Balance < ModernTreasury::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   The balance amount.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute as_of_date
          #   The date on which the balance became true for the account.
          #
          #   @return [Date, nil]
          required :as_of_date, Date, nil?: true

          # @!attribute as_of_time
          #   The time on which the balance became true for the account.
          #
          #   @return [String, nil]
          required :as_of_time, String, nil?: true

          # @!attribute balance_type
          #   The specific type of balance reported. One of `opening_ledger`,
          #     `closing_ledger`, `current_ledger`, `opening_available`,
          #     `opening_available_next_business_day`, `closing_available`, `current_available`,
          #     'previously_closed_book', or `other`.
          #
          #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType]
          required :balance_type,
                   enum: -> { ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType }

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute currency
          #   The currency of the balance.
          #
          #   @return [Symbol, ModernTreasury::Models::Currency]
          required :currency, enum: -> { ModernTreasury::Models::Currency }

          # @!attribute live_mode
          #   This field will be true if this object exists in the live environment or false
          #     if it exists in the test environment.
          #
          #   @return [Boolean]
          required :live_mode, ModernTreasury::BooleanModel

          # @!attribute object
          #
          #   @return [String]
          required :object, String

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute value_date
          #   The date on which the balance becomes available.
          #
          #   @return [Date, nil]
          required :value_date, Date, nil?: true

          # @!attribute vendor_code
          #   The code used by the bank when reporting this specific balance.
          #
          #   @return [String]
          required :vendor_code, String

          # @!attribute vendor_code_type
          #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #     `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #     `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #     `swift`, or `us_bank`.
          #
          #   @return [String, nil]
          required :vendor_code_type, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param as_of_date [Date, nil]
          #   # @param as_of_time [String, nil]
          #   # @param balance_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType]
          #   # @param created_at [Time]
          #   # @param currency [Symbol, ModernTreasury::Models::Currency]
          #   # @param live_mode [Boolean]
          #   # @param object [String]
          #   # @param updated_at [Time]
          #   # @param value_date [Date, nil]
          #   # @param vendor_code [String]
          #   # @param vendor_code_type [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     as_of_date:,
          #     as_of_time:,
          #     balance_type:,
          #     created_at:,
          #     currency:,
          #     live_mode:,
          #     object:,
          #     updated_at:,
          #     value_date:,
          #     vendor_code:,
          #     vendor_code_type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
          #
          # @example
          # ```ruby
          # case balance_type
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
            PREVIOUSLY_CLOSED_BOOK = :previously_closed_book

            finalize!
          end
        end
      end
    end
  end
end
