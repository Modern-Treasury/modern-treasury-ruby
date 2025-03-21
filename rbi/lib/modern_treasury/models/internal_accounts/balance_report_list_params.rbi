# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        # The date of the balance report in local time.
        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::OrSymbol)
          )
        end
        attr_reader :balance_report_type

        sig do
          params(
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::OrSymbol
          )
            .void
        end
        attr_writer :balance_report_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        sig do
          params(
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::OrSymbol,
            per_page: Integer,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(after_cursor: nil, as_of_date: nil, balance_report_type: nil, per_page: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                after_cursor: T.nilable(String),
                as_of_date: Date,
                balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::OrSymbol,
                per_page: Integer,
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
            T.type_alias { T.all(Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol
              )
            end

          INTRADAY =
            T.let(
              :intraday,
              ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol
            )
          PREVIOUS_DAY =
            T.let(
              :previous_day,
              ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol
            )
          REAL_TIME =
            T.let(
              :real_time,
              ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::TaggedSymbol]
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
