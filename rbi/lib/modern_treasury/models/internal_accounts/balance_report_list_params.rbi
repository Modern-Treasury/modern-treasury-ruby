# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(String)) }
        def after_cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def after_cursor=(_)
        end

        # The date of the balance report in local time.
        sig { returns(T.nilable(Date)) }
        def as_of_date
        end

        sig { params(_: Date).returns(Date) }
        def as_of_date=(_)
        end

        # The specific type of balance report. One of `intraday`, `previous_day`,
        #   `real_time`, or `other`.
        sig { returns(T.nilable(Symbol)) }
        def balance_report_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def balance_report_type=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def per_page
        end

        sig { params(_: Integer).returns(Integer) }
        def per_page=(_)
        end

        sig do
          params(
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: Symbol,
            per_page: Integer,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
                balance_report_type: Symbol,
                per_page: Integer,
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
      end
    end
  end
end
