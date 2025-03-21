# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        # create balance reports
        sig do
          params(
            internal_account_id: String,
            as_of_date: Date,
            as_of_time: String,
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType::OrSymbol,
            balances: T::Array[
            T.any(
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance,
              ModernTreasury::Util::AnyHash
            )
            ],
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          )
            .returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def create(
          internal_account_id,
          # The date of the balance report in local time.
          as_of_date:,
          # The time (24-hour clock) of the balance report in local time.
          as_of_time:,
          # The specific type of balance report. One of `intraday`, `previous_day`,
          #   `real_time`, or `other`.
          balance_report_type:,
          # An array of `Balance` objects.
          balances:,
          request_options: {}
        )
        end

        # Get a single balance report for a given internal account.
        sig do
          params(
            id: String,
            internal_account_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          )
            .returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def retrieve(
          # Either the unique identifier of the balance report or latest for the latest
          #   balance report.
          id,
          internal_account_id:,
          request_options: {}
        )
        end

        # Get all balance reports for a given internal account.
        sig do
          params(
            internal_account_id: String,
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType::OrSymbol,
            per_page: Integer,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          )
            .returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccounts::BalanceReport])
        end
        def list(
          internal_account_id,
          after_cursor: nil,
          # The date of the balance report in local time.
          as_of_date: nil,
          # The specific type of balance report. One of `intraday`, `previous_day`,
          #   `real_time`, or `other`.
          balance_report_type: nil,
          per_page: nil,
          request_options: {}
        )
        end

        # Deletes a given balance report.
        sig do
          params(
            id: String,
            internal_account_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          )
            .void
        end
        def delete(
          # Either the unique identifier of the balance report or latest for the latest
          #   balance report.
          id,
          internal_account_id:,
          request_options: {}
        )
        end

        sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
