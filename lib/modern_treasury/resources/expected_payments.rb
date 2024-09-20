# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ExpectedPayments
      def initialize(client:)
        @client = client
      end

      # create expected payment
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount_lower_bound The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      # @option params [Integer] :amount_upper_bound The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      # @option params [Symbol] :direction One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      # @option params [String] :internal_account_id The ID of the Internal Account for the expected payment.
      # @option params [String] :counterparty_id The ID of the counterparty you expect for this payment.
      # @option params [Symbol] :currency Must conform to ISO 4217. Defaults to the currency of the internal account.
      # @option params [Date] :date_lower_bound The earliest date the payment may come in. Format: yyyy-mm-dd
      # @option params [Date] :date_upper_bound The latest date the payment may come in. Format: yyyy-mm-dd
      # @option params [String] :description An optional description for internal use.
      # @option params [LedgerTransaction] :ledger_transaction Specifies a ledger transaction object that will be created with the expected
      #   payment. If the ledger transaction cannot be created, then the expected payment
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the expected payment.
      # @option params [String] :ledger_transaction_id Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon expected payment creation. Once
      #   the expected payment is created, the status of the ledger transaction tracks the
      #   expected payment automatically.
      # @option params [Array<LineItem>] :line_items
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Object] :reconciliation_filters The reconciliation filters you have for this payment.
      # @option params [Object] :reconciliation_groups The reconciliation groups you have for this payment.
      # @option params [Array<Hash>] :reconciliation_rule_variables An array of reconciliation rule variables for this payment.
      # @option params [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      # @option params [String] :statement_descriptor The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      # @option params [Symbol] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/expected_payments"
        req[:body] = params
        req[:model] = ModernTreasury::Models::ExpectedPayment
        @client.request(req, opts)
      end

      # get expected payment
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/expected_payments/#{id}"
        req[:model] = ModernTreasury::Models::ExpectedPayment
        @client.request(req, opts)
      end

      # update expected payment
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount_lower_bound The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      # @option params [Integer] :amount_upper_bound The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      # @option params [String] :counterparty_id The ID of the counterparty you expect for this payment.
      # @option params [Symbol] :currency Must conform to ISO 4217. Defaults to the currency of the internal account.
      # @option params [Date] :date_lower_bound The earliest date the payment may come in. Format: yyyy-mm-dd
      # @option params [Date] :date_upper_bound The latest date the payment may come in. Format: yyyy-mm-dd
      # @option params [String] :description An optional description for internal use.
      # @option params [Symbol] :direction One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      # @option params [String] :internal_account_id The ID of the Internal Account for the expected payment.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Object] :reconciliation_filters The reconciliation filters you have for this payment.
      # @option params [Object] :reconciliation_groups The reconciliation groups you have for this payment.
      # @option params [Array<Hash>] :reconciliation_rule_variables An array of reconciliation rule variables for this payment.
      # @option params [String] :remittance_information For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      # @option params [String] :statement_descriptor The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      # @option params [Symbol] :status The Expected Payment's status can be updated from partially_reconciled to
      #   reconciled.
      # @option params [Symbol] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/expected_payments/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::ExpectedPayment
        @client.request(req, opts)
      end

      # list expected_payments
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :counterparty_id Specify counterparty_id to see expected_payments for a specific account.
      # @option params [DateTime] :created_at_lower_bound Used to return expected payments created after some datetime
      # @option params [DateTime] :created_at_upper_bound Used to return expected payments created before some datetime
      # @option params [Symbol] :direction One of credit, debit
      # @option params [String] :internal_account_id Specify internal_account_id to see expected_payments for a specific account.
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Integer] :per_page
      # @option params [Symbol] :status One of unreconciled, reconciled, or archived.
      # @option params [Symbol] :type One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ExpectedPayment>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/expected_payments"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::ExpectedPayment
        @client.request(req, opts)
      end

      # delete expected payment
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ExpectedPayment]
      def delete(id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/expected_payments/#{id}"
        req[:model] = ModernTreasury::Models::ExpectedPayment
        @client.request(req, opts)
      end
    end
  end
end
