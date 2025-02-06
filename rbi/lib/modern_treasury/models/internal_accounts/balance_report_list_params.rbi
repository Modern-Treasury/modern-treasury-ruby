# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        sig { returns(T.nilable(Symbol)) }
        attr_reader :balance_report_type

        sig { params(balance_report_type: Symbol).void }
        attr_writer :balance_report_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        sig do
          params(
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: Symbol,
            per_page: Integer,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          after_cursor: nil,
          as_of_date: nil,
          balance_report_type: nil,
          per_page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after_cursor: T.nilable(String),
              as_of_date: Date,
              balance_report_type: Symbol,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash; end

        class BalanceReportType < ModernTreasury::Enum
          abstract!

          INTRADAY = :intraday
          OTHER = :other
          PREVIOUS_DAY = :previous_day
          REAL_TIME = :real_time

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
