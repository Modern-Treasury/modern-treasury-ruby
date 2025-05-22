# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams} for more
        # details.
        #
        # create balance reports
        #
        # @overload create(internal_account_id, as_of_date:, as_of_time:, balance_report_type:, balances:, request_options: {})
        #
        # @param internal_account_id [String]
        #
        # @param as_of_date [Date] The date of the balance report in local time.
        #
        # @param as_of_time [String] The time (24-hour clock) of the balance report in local time.
        #
        # @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType] The specific type of balance report. One of `intraday`, `previous_day`, `real_ti
        #
        # @param balances [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>] An array of `Balance` objects.
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::InternalAccounts::BalanceReport]
        #
        # @see ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams
        def create(internal_account_id, params)
          parsed, options = ModernTreasury::InternalAccounts::BalanceReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/internal_accounts/%1$s/balance_reports", internal_account_id],
            body: parsed,
            model: ModernTreasury::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams} for more
        # details.
        #
        # Get a single balance report for a given internal account.
        #
        # @overload retrieve(id, internal_account_id:, request_options: {})
        #
        # @param id [String] Either the unique identifier of the balance report or latest for the latest bala
        #
        # @param internal_account_id [String]
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::InternalAccounts::BalanceReport]
        #
        # @see ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams
        def retrieve(id, params)
          parsed, options = ModernTreasury::InternalAccounts::BalanceReportRetrieveParams.dump_request(params)
          internal_account_id =
            parsed.delete(:internal_account_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/internal_accounts/%1$s/balance_reports/%2$s", internal_account_id, id],
            model: ModernTreasury::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::InternalAccounts::BalanceReportListParams} for more
        # details.
        #
        # Get all balance reports for a given internal account.
        #
        # @overload list(internal_account_id, after_cursor: nil, as_of_date: nil, balance_report_type: nil, per_page: nil, request_options: {})
        #
        # @param internal_account_id [String]
        #
        # @param after_cursor [String, nil]
        #
        # @param as_of_date [Date] The date of the balance report in local time.
        #
        # @param balance_report_type [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType] The specific type of balance report. One of `intraday`, `previous_day`, `real_ti
        #
        # @param per_page [Integer]
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::InternalAccounts::BalanceReport>]
        #
        # @see ModernTreasury::Models::InternalAccounts::BalanceReportListParams
        def list(internal_account_id, params = {})
          parsed, options = ModernTreasury::InternalAccounts::BalanceReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/internal_accounts/%1$s/balance_reports", internal_account_id],
            query: parsed,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams} for more
        # details.
        #
        # Deletes a given balance report.
        #
        # @overload delete(id, internal_account_id:, request_options: {})
        #
        # @param id [String] Either the unique identifier of the balance report or latest for the latest bala
        #
        # @param internal_account_id [String]
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams
        def delete(id, params)
          parsed, options = ModernTreasury::InternalAccounts::BalanceReportDeleteParams.dump_request(params)
          internal_account_id =
            parsed.delete(:internal_account_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/internal_accounts/%1$s/balance_reports/%2$s", internal_account_id, id],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
