# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(Date) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        sig { returns(String) }
        def as_of_time
        end

        sig { params(_: String).returns(String) }
        def as_of_time=(_)
        end

        sig { returns(Symbol) }
        def balance_report_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def balance_report_type=(_)
        end

        sig do
          returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance])
        end
        def balances
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance]).returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance])
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
          ).void
        end
        def initialize(as_of_date:, as_of_time:, balance_report_type:, balances:, request_options: {})
        end

        sig do
          override.returns(
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

        class BalanceReportType < ModernTreasury::Enum
          abstract!

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Balance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def balance_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def balance_type=(_)
          end

          sig { returns(String) }
          def vendor_code
          end

          sig { params(_: String).returns(String) }
          def vendor_code=(_)
          end

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
            ).void
          end
          def initialize(amount:, balance_type:, vendor_code:, vendor_code_type:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                balance_type: Symbol,
                vendor_code: String,
                vendor_code_type: T.nilable(String)
              }
            )
          end
          def to_hash
          end

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
