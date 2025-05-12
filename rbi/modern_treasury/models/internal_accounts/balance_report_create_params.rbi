# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccounts::BalanceReportCreateParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The date of the balance report in local time.
        sig { returns(Date) }
        attr_accessor :as_of_date

        # The time (24-hour clock) of the balance report in local time.
        sig { returns(String) }
        attr_accessor :as_of_time

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        sig do
          returns(
            ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol
          )
        end
        attr_accessor :balance_report_type

        # An array of `Balance` objects.
        sig do
          returns(
            T::Array[
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance
            ]
          )
        end
        attr_accessor :balances

        sig do
          params(
            as_of_date: Date,
            as_of_time: String,
            balance_report_type:
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol,
            balances:
              T::Array[
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::OrHash
              ],
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date of the balance report in local time.
          as_of_date:,
          # The time (24-hour clock) of the balance report in local time.
          as_of_time:,
          # The specific type of balance report. One of `intraday`, `previous_day`,
          # `real_time`, or `other`.
          balance_report_type:,
          # An array of `Balance` objects.
          balances:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              as_of_date: Date,
              as_of_time: String,
              balance_report_type:
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol,
              balances:
                T::Array[
                  ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance
                ],
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        # `real_time`, or `other`.
        module BalanceReportType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTRADAY =
            T.let(
              :intraday,
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          PREVIOUS_DAY =
            T.let(
              :previous_day,
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )
          REAL_TIME =
            T.let(
              :real_time,
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::BalanceReportType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Balance < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance,
                ModernTreasury::Internal::AnyHash
              )
            end

          # The balance amount.
          sig { returns(Integer) }
          attr_accessor :amount

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          sig do
            returns(
              ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol
            )
          end
          attr_accessor :balance_type

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
              amount: Integer,
              balance_type:
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol,
              vendor_code: String,
              vendor_code_type: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The balance amount.
            amount:,
            # The specific type of balance reported. One of `opening_ledger`,
            # `closing_ledger`, `current_ledger`, `opening_available`,
            # `opening_available_next_business_day`, `closing_available`, `current_available`,
            # 'previously_closed_book', or `other`.
            balance_type:,
            # The code used by the bank when reporting this specific balance.
            vendor_code:,
            # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
            # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
            # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
            # `swift`, or `us_bank`.
            vendor_code_type:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                balance_type:
                  ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::OrSymbol,
                vendor_code: String,
                vendor_code_type: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The specific type of balance reported. One of `opening_ledger`,
          # `closing_ledger`, `current_ledger`, `opening_available`,
          # `opening_available_next_business_day`, `closing_available`, `current_available`,
          # 'previously_closed_book', or `other`.
          module BalanceType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CLOSING_AVAILABLE =
              T.let(
                :closing_available,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CLOSING_LEDGER =
              T.let(
                :closing_ledger,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_AVAILABLE =
              T.let(
                :current_available,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            CURRENT_LEDGER =
              T.let(
                :current_ledger,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE =
              T.let(
                :opening_available,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_AVAILABLE_NEXT_BUSINESS_DAY =
              T.let(
                :opening_available_next_business_day,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OPENING_LEDGER =
              T.let(
                :opening_ledger,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )
            PREVIOUSLY_CLOSED_BOOK =
              T.let(
                :previously_closed_book,
                ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::InternalAccounts::BalanceReportCreateParams::Balance::BalanceType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
