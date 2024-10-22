# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end

        # create balance reports
        #
        # @param internal_account_id [String]
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Date] :as_of_date The date of the balance report in local time.
        #   @option params [String] :as_of_time The time (24-hour clock) of the balance report in local time.
        #   @option params [Symbol, BalanceReportType] :balance_report_type The specific type of balance report. One of `intraday`, `previous_day`,
        #     `real_time`, or `other`.
        #   @option params [Array<Balance>] :balances An array of `Balance` objects.
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::BalanceReport]
        def create(internal_account_id, params = {}, opts = {})
          req = {
            method: :post,
            path: "/api/internal_accounts/#{internal_account_id}/balance_reports",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: ModernTreasury::Models::BalanceReport
          }
          @client.request(req, opts)
        end

        # Get a single balance report for a given internal account.
        #
        # @param internal_account_id [String]
        # @param id [String] Either the unique identifier of the balance report or latest for the latest
        #   balance report.
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::BalanceReport]
        def retrieve(internal_account_id, id, opts = {})
          req = {
            method: :get,
            path: "/api/internal_accounts/#{internal_account_id}/balance_reports/#{id}",
            model: ModernTreasury::Models::BalanceReport
          }
          @client.request(req, opts)
        end

        # Get all balance reports for a given internal account.
        #
        # @param internal_account_id [String]
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String, nil] :after_cursor
        #   @option params [Date, nil] :as_of_date The date of the balance report in local time.
        #   @option params [Symbol, BalanceReportType, nil] :balance_report_type The specific type of balance report. One of `intraday`, `previous_day`,
        #     `real_time`, or `other`.
        #   @option params [Integer, nil] :per_page
        #
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::BalanceReport>]
        def list(internal_account_id, params = {}, opts = {})
          req = {
            method: :get,
            path: "/api/internal_accounts/#{internal_account_id}/balance_reports",
            query: params,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::BalanceReport
          }
          @client.request(req, opts)
        end

        # Deletes a given balance report.
        #
        # @param internal_account_id [String]
        # @param id [String] Either the unique identifier of the balance report or latest for the latest
        #   balance report.
        # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def delete(internal_account_id, id, opts = {})
          req = {
            method: :delete,
            path: "/api/internal_accounts/#{internal_account_id}/balance_reports/#{id}",
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
