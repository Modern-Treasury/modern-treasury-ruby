# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExpectedPayments
      # create expected payment
      #
      # @overload create(amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, internal_account_id: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, type: nil, request_options: {})
      #
      # @param amount_lower_bound [Integer, nil]
      # @param amount_upper_bound [Integer, nil]
      # @param counterparty_id [String, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil]
      # @param date_lower_bound [Date, nil]
      # @param date_upper_bound [Date, nil]
      # @param description [String, nil]
      # @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction, nil]
      # @param internal_account_id [String, nil]
      # @param ledger_transaction [ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction]
      # @param ledger_transaction_id [String]
      # @param line_items [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem>]
      # @param metadata [Hash{Symbol=>String}]
      # @param reconciliation_filters [Object, nil]
      # @param reconciliation_groups [Object, nil]
      # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      # @param remittance_information [String, nil]
      # @param statement_descriptor [String, nil]
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentCreateParams
      def create(params = {})
        parsed, options = ModernTreasury::Models::ExpectedPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/expected_payments",
          body: parsed,
          model: ModernTreasury::Models::ExpectedPayment,
          options: options
        )
      end

      # get expected payment
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/expected_payments/%1$s", id],
          model: ModernTreasury::Models::ExpectedPayment,
          options: params[:request_options]
        )
      end

      # update expected payment
      #
      # @overload update(id, amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, internal_account_id: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, status: nil, type: nil, request_options: {})
      #
      # @param id [String]
      # @param amount_lower_bound [Integer, nil]
      # @param amount_upper_bound [Integer, nil]
      # @param counterparty_id [String, nil]
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil]
      # @param date_lower_bound [Date, nil]
      # @param date_upper_bound [Date, nil]
      # @param description [String, nil]
      # @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil]
      # @param internal_account_id [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param reconciliation_filters [Object, nil]
      # @param reconciliation_groups [Object, nil]
      # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      # @param remittance_information [String, nil]
      # @param statement_descriptor [String, nil]
      # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil]
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::ExpectedPaymentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/expected_payments/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::ExpectedPayment,
          options: options
        )
      end

      # list expected_payments
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, direction: nil, internal_account_id: nil, metadata: nil, per_page: nil, status: nil, type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param counterparty_id [String]
      # @param created_at_lower_bound [Time]
      # @param created_at_upper_bound [Time]
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param internal_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status]
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ExpectedPayment>]
      #
      # @see ModernTreasury::Models::ExpectedPaymentListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::ExpectedPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/expected_payments",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::ExpectedPayment,
          options: options
        )
      end

      # delete expected payment
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/expected_payments/%1$s", id],
          model: ModernTreasury::Models::ExpectedPayment,
          options: params[:request_options]
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
