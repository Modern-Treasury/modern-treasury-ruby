# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              as_of_date: Date,
              as_of_time: String,
              balance_report_type: Symbol,
              balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance]
            },
            ModernTreasury::RequestParameters::Shape
          )
        end

        sig { returns(Date) }
        attr_accessor :as_of_date

        sig { returns(String) }
        attr_accessor :as_of_time

        sig { returns(Symbol) }
        attr_accessor :balance_report_type

        sig do
          returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance])
        end
        attr_accessor :balances

        sig do
          params(
            as_of_date: Date,
            as_of_time: String,
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(as_of_date:, as_of_time:, balance_report_type:, balances:, request_options: {}); end

        sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Shape) }
        def to_h; end

        class BalanceReportType < ModernTreasury::Enum
          abstract!

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Balance < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {amount: Integer, balance_type: Symbol, vendor_code: String, vendor_code_type: T.nilable(String)}
          end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :balance_type

          sig { returns(String) }
          attr_accessor :vendor_code

          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code_type

          sig do
            params(
              amount: Integer,
              balance_type: Symbol,
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            ).void
          end
          def initialize(amount:, balance_type:, vendor_code:, vendor_code_type:); end

          sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::Shape) }
          def to_h; end

          class BalanceType < ModernTreasury::Enum
            abstract!

            CLOSING_AVAILABLE = :closing_available
            CLOSING_LEDGER = :closing_ledger
            CURRENT_AVAILABLE = :current_available
            CURRENT_LEDGER = :current_ledger
            OPENING_AVAILABLE = :opening_available
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY = :opening_available_next_business_day
            OPENING_LEDGER = :opening_ledger
            OTHER = :other
            PREVIOUSLY_CLOSED_BOOK = :previously_closed_book

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
