# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExpectedPayments
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create expected payment
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Integer, nil] :amount_lower_bound The lowest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @option params [Integer, nil] :amount_upper_bound The highest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @option params [String, nil] :counterparty_id The ID of the counterparty you expect for this payment.
      #   @option params [Symbol, ModernTreasury::Models::Currency, nil] :currency Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   @option params [Date, nil] :date_lower_bound The earliest date the payment may come in. Format: yyyy-mm-dd
      #   @option params [Date, nil] :date_upper_bound The latest date the payment may come in. Format: yyyy-mm-dd
      #   @option params [String, nil] :description An optional description for internal use.
      #   @option params [Symbol, Direction, nil] :direction One of credit or debit. When you are receiving money, use credit. When you are
      #     being charged, use debit.
      #   @option params [String, nil] :internal_account_id The ID of the Internal Account for the expected payment.
      #   @option params [LedgerTransaction, nil] :ledger_transaction Specifies a ledger transaction object that will be created with the expected
      #     payment. If the ledger transaction cannot be created, then the expected payment
      #     creation will fail. The resulting ledger transaction will mirror the status of
      #     the expected payment.
      #   @option params [String, nil] :ledger_transaction_id Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #     pending ledger transaction can be attached upon expected payment creation. Once
      #     the expected payment is created, the status of the ledger transaction tracks the
      #     expected payment automatically.
      #   @option params [Array<LineItem>, nil] :line_items
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [Object, nil] :reconciliation_filters The reconciliation filters you have for this payment.
      #   @option params [Object, nil] :reconciliation_groups The reconciliation groups you have for this payment.
      #   @option params [Array<ModernTreasury::Models::ReconciliationRule>, nil] :reconciliation_rule_variables An array of reconciliation rule variables for this payment.
      #   @option params [String, nil] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #     payments the field will be passed through as the "Originator to Beneficiary
      #     Information", also known as OBI or Fedwire tag 6000.
      #   @option params [String, nil] :statement_descriptor The statement description you expect to see on the transaction. For ACH
      #     payments, this will be the full line item passed from the bank. For wire
      #     payments, this will be the OBI field on the wire. For check payments, this will
      #     be the memo field.
      #   @option params [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #     sepa, signet, wire.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/expected_payments",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::ExpectedPayment
        }
        @client.request(req, opts)
      end

      # get expected payment
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/expected_payments/#{id}",
          model: ModernTreasury::Models::ExpectedPayment
        }
        @client.request(req, opts)
      end

      # update expected payment
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Integer, nil] :amount_lower_bound The lowest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @option params [Integer, nil] :amount_upper_bound The highest amount this expected payment may be equal to. Value in specified
      #     currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @option params [String, nil] :counterparty_id The ID of the counterparty you expect for this payment.
      #   @option params [Symbol, ModernTreasury::Models::Currency, nil] :currency Must conform to ISO 4217. Defaults to the currency of the internal account.
      #   @option params [Date, nil] :date_lower_bound The earliest date the payment may come in. Format: yyyy-mm-dd
      #   @option params [Date, nil] :date_upper_bound The latest date the payment may come in. Format: yyyy-mm-dd
      #   @option params [String, nil] :description An optional description for internal use.
      #   @option params [Symbol, Direction, nil] :direction One of credit or debit. When you are receiving money, use credit. When you are
      #     being charged, use debit.
      #   @option params [String, nil] :internal_account_id The ID of the Internal Account for the expected payment.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [Object, nil] :reconciliation_filters The reconciliation filters you have for this payment.
      #   @option params [Object, nil] :reconciliation_groups The reconciliation groups you have for this payment.
      #   @option params [Array<ModernTreasury::Models::ReconciliationRule>, nil] :reconciliation_rule_variables An array of reconciliation rule variables for this payment.
      #   @option params [String, nil] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #     payments the field will be passed through as the "Originator to Beneficiary
      #     Information", also known as OBI or Fedwire tag 6000.
      #   @option params [String, nil] :statement_descriptor The statement description you expect to see on the transaction. For ACH
      #     payments, this will be the full line item passed from the bank. For wire
      #     payments, this will be the OBI field on the wire. For check payments, this will
      #     be the memo field.
      #   @option params [Symbol, Status, nil] :status The Expected Payment's status can be updated from partially_reconciled to
      #     reconciled.
      #   @option params [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #     sepa, signet, wire.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/expected_payments/#{id}",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::ExpectedPayment
        }
        @client.request(req, opts)
      end

      # list expected_payments
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :counterparty_id Specify counterparty_id to see expected_payments for a specific account.
      #   @option params [Time, nil] :created_at_lower_bound Used to return expected payments created after some datetime
      #   @option params [Time, nil] :created_at_upper_bound Used to return expected payments created before some datetime
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection, nil] :direction One of credit, debit
      #   @option params [String, nil] :internal_account_id Specify internal_account_id to see expected_payments for a specific account.
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #   @option params [Symbol, Status, nil] :status One of unreconciled, reconciled, or archived.
      #   @option params [Symbol, Type, nil] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #     sepa, signet, wire
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ExpectedPayment>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/expected_payments",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ExpectedPayment
        }
        @client.request(req, opts)
      end

      # delete expected payment
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/expected_payments/#{id}",
          model: ModernTreasury::Models::ExpectedPayment
        }
        @client.request(req, opts)
      end
    end
  end
end
