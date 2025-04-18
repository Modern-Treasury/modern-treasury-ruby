# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @see ModernTreasury::Resources::InternalAccounts::BalanceReports#create
      class BalanceReport < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [Time, nil]
        required :as_of_time, Time, nil?: true

        # @!attribute balance_report_type
        #   The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType]
        required :balance_report_type,
                 enum: -> { ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType }

        # @!attribute balances
        #   An array of `Balance` objects.
        #
        #   @return [Array<ModernTreasury::Models::InternalAccounts::BalanceReport::Balance>]
        required :balances,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance] }

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
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, as_of_date:, as_of_time:, balance_report_type:, balances:, created_at:, internal_account_id:, live_mode:, object:, updated_at:)
        #   @param id [String]
        #   @param as_of_date [Date]
        #   @param as_of_time [Time, nil]
        #   @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType]
        #   @param balances [Array<ModernTreasury::Models::InternalAccounts::BalanceReport::Balance>]
        #   @param created_at [Time]
        #   @param internal_account_id [String]
        #   @param live_mode [Boolean]
        #   @param object [String]
        #   @param updated_at [Time]

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        #
        # @see ModernTreasury::Models::InternalAccounts::BalanceReport#balance_report_type
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
          #   @return [Time, nil]
          required :as_of_time, Time, nil?: true

          # @!attribute balance_type
          #   The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
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
          #   if it exists in the test environment.
          #
          #   @return [Boolean]
          required :live_mode, ModernTreasury::Internal::Type::Boolean

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
          #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   `swift`, or `us_bank`.
          #
          #   @return [String, nil]
          required :vendor_code_type, String, nil?: true

          # @!method initialize(id:, amount:, as_of_date:, as_of_time:, balance_type:, created_at:, currency:, live_mode:, object:, updated_at:, value_date:, vendor_code:, vendor_code_type:)
          #   @param id [String]
          #   @param amount [Integer]
          #   @param as_of_date [Date, nil]
          #   @param as_of_time [Time, nil]
          #   @param balance_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType]
          #   @param created_at [Time]
          #   @param currency [Symbol, ModernTreasury::Models::Currency]
          #   @param live_mode [Boolean]
          #   @param object [String]
          #   @param updated_at [Time]
          #   @param value_date [Date, nil]
          #   @param vendor_code [String]
          #   @param vendor_code_type [String, nil]

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          #
          # @see ModernTreasury::Models::InternalAccounts::BalanceReport::Balance#balance_type
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
