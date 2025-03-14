# frozen_string_literal: true

module ModernTreasury
  module Resources
    class InternalAccounts
      class BalanceReports
        # create balance reports
        #
        # @param internal_account_id [String]
        #
        # @param params [ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Date] :as_of_date The date of the balance report in local time.
        #
        #   @option params [String] :as_of_time The time (24-hour clock) of the balance report in local time.
        #
        #   @option params [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::BalanceReportType] :balance_report_type The specific type of balance report. One of `intraday`, `previous_day`,
        #     `real_time`, or `other`.
        #
        #   @option params [Array<ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams::Balance>] :balances An array of `Balance` objects.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::InternalAccounts::BalanceReport]
        def create(internal_account_id, params)
          parsed, options = ModernTreasury::Models::InternalAccounts::BalanceReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/internal_accounts/%0s/balance_reports", internal_account_id],
            body: parsed,
            model: ModernTreasury::Models::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Get a single balance report for a given internal account.
        #
        # @param id [String] Either the unique identifier of the balance report or latest for the latest
        #   balance report.
        #
        # @param params [ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :internal_account_id
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::InternalAccounts::BalanceReport]
        def retrieve(id, params)
          parsed, options = ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams.dump_request(params)
          internal_account_id = parsed.delete(:internal_account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["api/internal_accounts/%0s/balance_reports/%1s", internal_account_id, id],
            model: ModernTreasury::Models::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Get all balance reports for a given internal account.
        #
        # @param internal_account_id [String]
        #
        # @param params [ModernTreasury::Models::InternalAccounts::BalanceReportListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Date] :as_of_date The date of the balance report in local time.
        #
        #   @option params [Symbol, ModernTreasury::Models::InternalAccounts::BalanceReportListParams::BalanceReportType] :balance_report_type The specific type of balance report. One of `intraday`, `previous_day`,
        #     `real_time`, or `other`.
        #
        #   @option params [Integer] :per_page
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::InternalAccounts::BalanceReport>]
        def list(internal_account_id, params = {})
          parsed, options = ModernTreasury::Models::InternalAccounts::BalanceReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/internal_accounts/%0s/balance_reports", internal_account_id],
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::InternalAccounts::BalanceReport,
            options: options
          )
        end

        # Deletes a given balance report.
        #
        # @param id [String] Either the unique identifier of the balance report or latest for the latest
        #   balance report.
        #
        # @param params [ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :internal_account_id
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def delete(id, params)
          parsed, options = ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams.dump_request(params)
          internal_account_id = parsed.delete(:internal_account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :delete,
            path: ["api/internal_accounts/%0s/balance_reports/%1s", internal_account_id, id],
            model: NilClass,
            options: options
          )
        end

        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
