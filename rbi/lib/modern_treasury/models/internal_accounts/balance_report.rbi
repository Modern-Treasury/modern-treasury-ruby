# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReport < ModernTreasury::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The date of the balance report in local time.
        sig { returns(Date) }
        attr_accessor :as_of_date

        # The time (24-hour clock) of the balance report in local time.
        sig { returns(T.nilable(Time)) }
        attr_accessor :as_of_time

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol) }
        attr_accessor :balance_report_type

        # An array of `Balance` objects.
        sig { returns(T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]) }
        attr_accessor :balances

        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of one of your organization's Internal Accounts.
        sig { returns(String) }
        attr_accessor :internal_account_id

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
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
            as_of_time: T.nilable(Time),
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::OrSymbol,
            balances: T::Array[T.any(ModernTreasury::Models::InternalAccounts::BalanceReport::Balance, ModernTreasury::Internal::AnyHash)],
            created_at: Time,
            internal_account_id: String,
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          # The date of the balance report in local time.
          as_of_date:,
          # The time (24-hour clock) of the balance report in local time.
          as_of_time:,
          # The specific type of balance report. One of `intraday`, `previous_day`,
          # `real_time`, or `other`.
          balance_report_type:,
          # An array of `Balance` objects.
          balances:,
          created_at:,
          # The ID of one of your organization's Internal Accounts.
          internal_account_id:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          updated_at:
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                as_of_date: Date,
                as_of_time: T.nilable(Time),
                balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol,
                balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance],
                created_at: Time,
                internal_account_id: String,
                live_mode: T::Boolean,
                object: String,
                updated_at: Time
              }
            )
        end
        def to_hash; end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        module BalanceReportType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTRADAY =
            T.let(:intraday, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol)
          OTHER =
            T.let(:other, ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol)
          PREVIOUS_DAY =
            T.let(
              :previous_day,
              ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol
            )
          REAL_TIME =
            T.let(
              :real_time,
              ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class Balance < ModernTreasury::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          # The balance amount.
          sig { returns(Integer) }
          attr_accessor :amount

          # The date on which the balance became true for the account.
          sig { returns(T.nilable(Date)) }
          attr_accessor :as_of_date

          # The time on which the balance became true for the account.
          sig { returns(T.nilable(Time)) }
          attr_accessor :as_of_time

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol) }
          attr_accessor :balance_type

          sig { returns(Time) }
          attr_accessor :created_at

          # The currency of the balance.
          sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
          attr_accessor :currency

          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          sig { returns(String) }
          attr_accessor :object

          sig { returns(Time) }
          attr_accessor :updated_at

          # The date on which the balance becomes available.
          sig { returns(T.nilable(Date)) }
          attr_accessor :value_date

          # The code used by the bank when reporting this specific balance.
          sig { returns(String) }
          attr_accessor :vendor_code

          # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          # `swift`, or `us_bank`.
          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code_type

          sig do
            params(
              id: String,
              amount: Integer,
              as_of_date: T.nilable(Date),
              as_of_time: T.nilable(Time),
              balance_type: ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::OrSymbol,
              created_at: Time,
              currency: ModernTreasury::Models::Currency::OrSymbol,
              live_mode: T::Boolean,
              object: String,
              updated_at: Time,
              value_date: T.nilable(Date),
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            # The balance amount.
            amount:,
            # The date on which the balance became true for the account.
            as_of_date:,
            # The time on which the balance became true for the account.
            as_of_time:,
            # The specific type of balance reported. One of `opening_ledger`,
            # `closing_ledger`, `current_ledger`, `opening_available`,
            # `opening_available_next_business_day`, `closing_available`, `current_available`,
            # 'previously_closed_book', or `other`.
            balance_type:,
            created_at:,
            # The currency of the balance.
            currency:,
            # This field will be true if this object exists in the live environment or false
            # if it exists in the test environment.
            live_mode:,
            object:,
            updated_at:,
            # The date on which the balance becomes available.
            value_date:,
            # The code used by the bank when reporting this specific balance.
            vendor_code:,
            # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
            # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
            # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
            # `swift`, or `us_bank`.
            vendor_code_type:
          ); end
          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  as_of_date: T.nilable(Date),
                  as_of_time: T.nilable(Time),
                  balance_type: ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol,
                  created_at: Time,
                  currency: ModernTreasury::Models::Currency::TaggedSymbol,
                  live_mode: T::Boolean,
                  object: String,
                  updated_at: Time,
                  value_date: T.nilable(Date),
                  vendor_code: String,
                  vendor_code_type: T.nilable(String)
                }
              )
          end
          def to_hash; end

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          module BalanceType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CLOSING_AVAILABLE =
              T.let(
                :closing_available,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            CLOSING_LEDGER =
              T.let(
                :closing_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_AVAILABLE =
              T.let(
                :current_available,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_LEDGER =
              T.let(
                :current_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE =
              T.let(
                :opening_available,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY =
              T.let(
                :opening_available_next_business_day,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            OPENING_LEDGER =
              T.let(
                :opening_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )
            OTHER =
              T.let(:other, ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol)
            PREVIOUSLY_CLOSED_BOOK =
              T.let(
                :previously_closed_book,
                ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance::BalanceType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end
      end
    end
  end
end
