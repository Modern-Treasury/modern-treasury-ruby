# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        sig do
          params(
            internal_account_id: String,
            params: T.any(
              ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams,
              T::Hash[Symbol, T.anything]
            ),
            as_of_date: Date,
            as_of_time: String,
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def create(
          internal_account_id,
          params,
          as_of_date:,
          as_of_time:,
          balance_report_type:,
          balances:,
          request_options: {}
        ); end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams,
              T::Hash[Symbol, T.anything]
            ),
            internal_account_id: String,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def retrieve(id, params, internal_account_id:, request_options: {}); end

        sig do
          params(
            internal_account_id: String,
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: Symbol,
            per_page: Integer,
            request_options: ModernTreasury::RequestOpts
          ).returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccounts::BalanceReport])
        end
        def list(
          internal_account_id,
          after_cursor:,
          as_of_date:,
          balance_report_type:,
          per_page:,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            params: T.any(
              ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams,
              T::Hash[Symbol, T.anything]
            ),
            internal_account_id: String,
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def delete(id, params, internal_account_id:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
