# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReport < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Date) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def as_of_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def as_of_time=(_)
        end

        sig { returns(Symbol) }
        def balance_report_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def balance_report_type=(_)
        end

        sig { returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]) }
        def balances
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance])
            .returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance])
        end
        def balances=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(String) }
        def internal_account_id
        end

        sig { params(_: String).returns(String) }
        def internal_account_id=(_)
        end

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        sig do
          params(
            id: String,
            as_of_date: Date,
            as_of_time: T.nilable(Time),
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance],
            created_at: Time,
            internal_account_id: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          )
            .void
        end
        def initialize(
          id:,
          as_of_date:,
          as_of_time:,
          balance_report_type:,
          balances:,
          created_at:,
          internal_account_id:,
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                as_of_date: Date,
                as_of_time: T.nilable(Time),
                balance_report_type: Symbol,
                balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance],
                created_at: Time,
                internal_account_id: String,
                live_mode: T::Boolean,
                object: String,
                updated_at: Time
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
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(Date)) }
          def as_of_date
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def as_of_date=(_)
          end

          sig { returns(T.nilable(Time)) }
          def as_of_time
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def as_of_time=(_)
          end

          sig { returns(Symbol) }
          def balance_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def balance_type=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig { returns(T.nilable(Date)) }
          def value_date
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def value_date=(_)
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
              id: String,
              amount: Integer,
              as_of_date: T.nilable(Date),
              as_of_time: T.nilable(Time),
              balance_type: Symbol,
              created_at: Time,
              currency: Symbol,
              live_mode: T::Boolean,
              object: String,
              updated_at: Time,
              value_date: T.nilable(Date),
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            )
              .void
          end
          def initialize(
            id:,
            amount:,
            as_of_date:,
            as_of_time:,
            balance_type:,
            created_at:,
            currency:,
            live_mode:,
            object:,
            updated_at:,
            value_date:,
            vendor_code:,
            vendor_code_type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  as_of_date: T.nilable(Date),
                  as_of_time: T.nilable(Time),
                  balance_type: Symbol,
                  created_at: Time,
                  currency: Symbol,
                  live_mode: T::Boolean,
                  object: String,
                  updated_at: Time,
                  value_date: T.nilable(Date),
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
