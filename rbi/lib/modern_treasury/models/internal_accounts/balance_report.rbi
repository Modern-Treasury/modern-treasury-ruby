# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReport < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            as_of_date: Date,
            as_of_time: T.nilable(String),
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance],
            created_at: Time,
            internal_account_id: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Date) }
        attr_accessor :as_of_date

        sig { returns(T.nilable(String)) }
        attr_accessor :as_of_time

        sig { returns(Symbol) }
        attr_accessor :balance_report_type

        sig { returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]) }
        attr_accessor :balances

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :internal_account_id

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            as_of_date: Date,
            as_of_time: T.nilable(String),
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance],
            created_at: Time,
            internal_account_id: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).void
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
        ); end

        sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReport::Shape) }
        def to_h; end

        class BalanceReportType < ModernTreasury::Enum
          abstract!

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Balance < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              amount: Integer,
              as_of_date: T.nilable(Date),
              as_of_time: T.nilable(String),
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
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(T.nilable(Date)) }
          attr_accessor :as_of_date

          sig { returns(T.nilable(String)) }
          attr_accessor :as_of_time

          sig { returns(Symbol) }
          attr_accessor :balance_type

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Symbol) }
          attr_accessor :currency

          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          sig { returns(String) }
          attr_accessor :object

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T.nilable(Date)) }
          attr_accessor :value_date

          sig { returns(String) }
          attr_accessor :vendor_code

          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code_type

          sig do
            params(
              id: String,
              amount: Integer,
              as_of_date: T.nilable(Date),
              as_of_time: T.nilable(String),
              balance_type: Symbol,
              created_at: Time,
              currency: Symbol,
              live_mode: T::Boolean,
              object: String,
              updated_at: Time,
              value_date: T.nilable(Date),
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            ).void
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
          ); end

          sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::Shape) }
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
