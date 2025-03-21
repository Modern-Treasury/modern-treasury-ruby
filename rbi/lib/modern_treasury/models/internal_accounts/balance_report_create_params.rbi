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
        sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol) }
        def balance_report_type
        end

        sig do
          params(
            _: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol
          )
            .returns(ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol)
        end
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
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
                balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol,
                balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        module BalanceReportType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
              )
            end

          INTRADAY =
            T.let(
              :intraday,
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          PREVIOUS_DAY =
            T.let(
              :previous_day,
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          REAL_TIME =
            T.let(
              :real_time,
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol]
                )
            end
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
          sig do
            returns(
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol
            )
          end
          def balance_type
          end

          sig do
            params(
              _: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol
              )
          end
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
              balance_type: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol,
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, balance_type:, vendor_code:, vendor_code_type:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  balance_type: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol,
                  vendor_code: String,
                  vendor_code_type: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The specific type of balance reported. One of `opening_ledger`,
          #   `closing_ledger`, `current_ledger`, `opening_available`,
          #   `opening_available_next_business_day`, `closing_available`, `current_available`,
          #   'previously_closed_book', or `other`.
          module BalanceType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
                )
              end

            CLOSING_AVAILABLE =
              T.let(
                :closing_available,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CLOSING_LEDGER =
              T.let(
                :closing_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_AVAILABLE =
              T.let(
                :current_available,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_LEDGER =
              T.let(
                :current_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE =
              T.let(
                :opening_available,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY =
              T.let(
                :opening_available_next_business_day,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_LEDGER =
              T.let(
                :opening_ledger,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            PREVIOUSLY_CLOSED_BOOK =
              T.let(
                :previously_closed_book,
                ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end
      end
    end
  end
end
