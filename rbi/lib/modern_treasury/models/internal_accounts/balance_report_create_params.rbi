# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # The date of the balance report in local time.
        sig { returns(Date) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        # The time (24-hour clock) of the balance report in local time.
        sig { returns(String) }
        def as_of_time
        end

        sig { params(_: String).returns(String) }
        def as_of_time=(_)
        end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        sig { returns(Symbol) }
        def balance_report_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def balance_report_type=(_)
        end

        # An array of `Balance` objects.
        sig { returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance]) }
        def balances
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance])
            .returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance])
        end
        def balances=(_)
        end

        sig do
          params(
            as_of_date: Date,
            as_of_time: String,
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(as_of_date:, as_of_time:, balance_report_type:, balances:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                as_of_date: Date,
                as_of_time: String,
                balance_report_type: Symbol,
                balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        class BalanceReportType < ModernTreasury::Enum
          abstract!

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Balance < ModernTreasury::BaseModel
          # The balance amount.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
          sig { returns(Symbol) }
          def balance_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def balance_type=(_)
          end

          # The code used by the bank when reporting this specific balance.
          sig { returns(String) }
          def vendor_code
          end

          sig { params(_: String).returns(String) }
          def vendor_code=(_)
          end

          # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   `swift`, or `us_bank`.
          sig { returns(T.nilable(String)) }
          def vendor_code_type
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_code_type=(_)
          end

          sig do
            params(
              amount: Integer,
              balance_type: Symbol,
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, balance_type:, vendor_code:, vendor_code_type:)
          end

          sig do
            override
              .returns({
                         amount: Integer,
                         balance_type: Symbol,
                         vendor_code: String,
                         vendor_code_type: T.nilable(String)
                       })
          end
          def to_hash
          end

          # The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
