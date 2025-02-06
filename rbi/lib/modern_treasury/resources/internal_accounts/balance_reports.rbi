# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        sig do
          params(
            internal_account_id: String,
            as_of_date: Date,
            as_of_time: String,
            balance_report_type: Symbol,
            balances: T::Array[ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance],
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def create(
          internal_account_id,
          as_of_date:,
          as_of_time:,
          balance_report_type:,
          balances:,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            internal_account_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(ModernTreasury::Models::InternalAccounts::BalanceReport)
        end
        def retrieve(id, internal_account_id:, request_options: {}); end

        sig do
          params(
            internal_account_id: String,
            after_cursor: T.nilable(String),
            as_of_date: Date,
            balance_report_type: Symbol,
            per_page: Integer,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccounts::BalanceReport])
        end
        def list(
          internal_account_id,
          after_cursor: nil,
          as_of_date: nil,
          balance_report_type: nil,
          per_page: nil,
          request_options: {}
        ); end

        sig do
          params(
            id: String,
            internal_account_id: String,
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          ).void
        end
        def delete(id, internal_account_id:, request_options: {}); end

        sig { params(client: ModernTreasury::Client).void }
        def initialize(client:); end
      end
    end
  end
end
