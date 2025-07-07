# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExpectedPayments
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExpectedPaymentCreateParams} for more details.
      #
      # create expected payment
      #
      # @overload create(amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, internal_account_id: nil, ledger_transaction: nil, ledger_transaction_id: nil, line_items: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, type: nil, request_options: {})
      #
      # @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
      #
      # @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
      #
      # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      # @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      # @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
      #
      # @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #
      # @param ledger_transaction [ModernTreasury::Models::LedgerTransactionCreateRequest] Specifies a ledger transaction object that will be created with the expected pay
      #
      # @param ledger_transaction_id [String] Either ledger_transaction or ledger_transaction_id can be provided. Only a pendi
      #
      # @param line_items [Array<ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem>]
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #
      # @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #
      # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
      #
      # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      # @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
      #
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentCreateParams
      def create(params = {})
        parsed, options = ModernTreasury::ExpectedPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/expected_payments",
          body: parsed,
          model: ModernTreasury::ExpectedPayment,
          options: options
        )
      end

      # get expected payment
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/expected_payments/%1$s", id],
          model: ModernTreasury::ExpectedPayment,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExpectedPaymentUpdateParams} for more details.
      #
      # update expected payment
      #
      # @overload update(id, amount_lower_bound: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, internal_account_id: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, status: nil, type: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
      #
      # @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
      #
      # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #
      # @param currency [Symbol, ModernTreasury::Models::Currency, nil] Must conform to ISO 4217. Defaults to the currency of the internal account.
      #
      # @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      # @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
      #
      # @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #
      # @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #
      # @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>, nil] An array of reconciliation rule variables for this payment.
      #
      # @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      # @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
      #
      # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil] The Expected Payment's status can be updated from partially_reconciled to reconc
      #
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, se
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::ExpectedPaymentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/expected_payments/%1$s", id],
          body: parsed,
          model: ModernTreasury::ExpectedPayment,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ExpectedPaymentListParams} for more details.
      #
      # list expected_payments
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, direction: nil, internal_account_id: nil, metadata: nil, per_page: nil, status: nil, type: nil, updated_at_lower_bound: nil, updated_at_upper_bound: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String] Specify counterparty_id to see expected_payments for a specific account.
      #
      # @param created_at_lower_bound [Time] Used to return expected payments created after some datetime
      #
      # @param created_at_upper_bound [Time] Used to return expected payments created before some datetime
      #
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of credit, debit
      #
      # @param internal_account_id [String] Specify internal_account_id to see expected_payments for a specific account.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param status [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status] One of unreconciled, reconciled, or archived.
      #
      # @param type [Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type] One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen, sep
      #
      # @param updated_at_lower_bound [Time] Used to return expected payments updated after some datetime
      #
      # @param updated_at_upper_bound [Time] Used to return expected payments updated before some datetime
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ExpectedPayment>]
      #
      # @see ModernTreasury::Models::ExpectedPaymentListParams
      def list(params = {})
        parsed, options = ModernTreasury::ExpectedPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/expected_payments",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::ExpectedPayment,
          options: options
        )
      end

      # delete expected payment
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      #
      # @see ModernTreasury::Models::ExpectedPaymentDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/expected_payments/%1$s", id],
          model: ModernTreasury::ExpectedPayment,
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
